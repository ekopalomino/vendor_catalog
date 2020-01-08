<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Product;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use iteos\Models\Warehouse;
use iteos\Models\InternalTransfer;
use iteos\Models\InternalItems;
use iteos\Models\Purchase;
use iteos\Models\PurchaseItem;
use iteos\Models\Delivery;
use iteos\Models\DeliveryService;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\UomValue;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;
use PDF;

class InventoryManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can Access Inventories');
         $this->middleware('permission:Can Create Inventory', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Inventory', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Inventory', ['only' => ['destroy']]);
    }

    public function inventoryIndex()
    {
        $data = Inventory::orderBy('id','asc')->get();
        $products = Product::pluck('name','id')->toArray();
        $locations = Warehouse::pluck('name','id')->toArray();

        return view('apps.pages.inventories',compact('data','products','locations'));
    }

    public function stockCard(Request $request,$id)
    {
        $source = Inventory::where('id',$id)->first();
        $data = InventoryMovement::join('internal_transfers','internal_transfers.order_ref','inventory_movements.reference_id')
                                   ->where('inventory_movements.product_name',$source->product_name)
                                   ->where('inventory_movements.warehouse_name',$source->warehouse_name)
                                   ->get();
        /* $data = InventoryMovement::where('product_name',$source->product_name)
                                ->where('warehouse_name',$source->warehouse_name)
                                ->get(); */
        
        return view('apps.show.stockCard',compact('data'));
    }

    public function stockPrint(Request $request,$id)
    {
        $source = Inventory::where('id',$id)->first();
        $data = InventoryMovement::where('product_name',$source->product_name)
                                ->where('warehouse_name',$source->warehouse_name)
                                ->get();
        $filename = Product::where('id',$source->product_id)->first();
        
        $pdf = PDF::loadview('apps.print.stockCard',compact('data','source'));
        return $pdf->download('Stock Card '.$filename->name.'.pdf');
    }

    public function inventoryAdjustIndex()
    {
        $data = Inventory::orderBy('id','asc')->get();
        
        return view('apps.pages.inventoryAdjustment',compact('data'));
    }

    public function makeAdjust($id)
    {
        $data = Inventory::find($id);

        return view('apps.edit.makeAdjust',compact('data'))->renderSections()['content'];
    }

    public function storeAdjust(Request $request,$id)
    {
        $ref = 'ADJ/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $input = [
            'reference_id' => $ref,
            'type' => '1',
            'inventory_id' => $id,
            'product_id' => $request->input('product_id'),
            'product_name' => $request->input('product_name'),
            'warehouse_name' => $request->input('warehouse_name'),
            'incoming' => $request->input('adjust_amount'),
            'outgoing' => '0',
            'remaining' => $request->input('adjust_amount'),
            'notes' => $request->input('notes'),
        ];
        
        $products = Product::where('id',$request->input('product_id'))->first();
        $source = Inventory::where('id',$id)->update([
            'closing_amount' => $request->input('adjust_amount'),
        ]);
        
        $movements = InventoryMovement::create($input);
        $log = 'Stok '.($products->name).' Berhasil Disesuaikan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Stok '.($products->name).' Berhasil Disesuaikan',
            'alert-type' => 'success'
        );

        return redirect()->route('inventory.adjust')->with($notification);
    }

    public function receiptIndex()
    {
        $data = Purchase::where('status','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();
        $locations = Warehouse::pluck('name','name')->toArray();
        $details = Purchase::orderBy('created_at','ASC')->get();

        return view('apps.pages.purchaseReceipt',compact('data','locations','details'));
    }
    public function purchaseReceipt(Request $request)
    {
        $input = [
            'order_ref' => $request->input('order_ref'),
        ];
 
        $data = Purchase::where('id',$request->input('order_ref'))->first();
        $items = PurchaseItem::where('purchase_id',$request->input('order_ref'))->get();
        
        $in = Purchase::where('id',$request->input('order_ref'))->update([
            'status' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
        ]);
        foreach($items as $index=>$item) {
            $bases = UomValue::where('id',$item->uom_id)->first();
            if($bases->is_parent == null) {
                $convertion = ($item->quantity) * ($bases->value); 
            } else {
                $convertion = $item->quantity;
            }
            $sources = Inventory::where('product_name',$item->product_name)->where('warehouse_name',$request->input('warehouse_name'))->orderBy('updated_at','DESC')->first();
            $moves = InventoryMovement::where('product_name',$item->product_name)->where('warehouse_name',$request->input('warehouse_name'))->orderBy('updated_at','DESC')->first();
            if($sources === null) {
                $getProduct = Product::where('name',$item->product_name)->first();
                $inventories = Inventory::create([
                    'product_id' => $getProduct->id,
                    'product_name' => $item->product_name,
                    'min_stock' => '0',
                    'warehouse_name' => $request->input('warehouse_name'),
                    'opening_amount' => $convertion,
                    'closing_amount' => $convertion,
                ]);
            } else {
                $inventories = $sources->update([
                    'closing_amount' => ($sources->closing_amount) + $convertion,
                ]);
            }
            $getId = Inventory::orderBy('updated_at','DESC')->first();
            
            if($moves === null) {
                $movements = InventoryMovement::create([
                    'product_name' => $getId->product_name,
                    'warehouse_name' => $getId->warehouse_name,
                    'type' => '3',
                    'inventory_id' => $getId->id,
                    'reference_id' => $data->order_ref,
                    'incoming' => $convertion,
                    'remaining' => $convertion,
                ]);
            } else {
                $movements = InventoryMovement::create([
                    'product_name' => $getId->product_name,
                    'warehouse_name' => $getId->warehouse_name,
                    'type' => '3',
                    'inventory_id' => $getId->id,
                    'reference_id' => $data->order_ref,
                    'incoming' => $convertion,
                    'remaining' => ($moves->remaining) + $convertion,
                ]);
            }
        }
        $log = 'Pembelian '.($data->order_ref).' Berhasil Diterima';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pembelian '.($data->order_ref).' Berhasil Diterima',
            'alert-type' => 'success'
        );

        return redirect()->route('receipt.index')->with($notification);
    }

    public function internTransfer()
    {
        $data = InternalTransfer::orderBy('created_at','DESC')->get();
       
        return view('apps.pages.internalTransfer',compact('data'));
    }

    public function addTransfer()
    {
        $userLocation = auth()->user()->Warehouses;
        foreach($userLocation as $filter)
        {
            $locations = Warehouse::where('name','!=',$filter->warehouse_name)->pluck('name','name')->toArray();
        }
        $adminLocations = Warehouse::pluck('name','name')->toArray();
        $products = Product::pluck('name','name')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        
        return view('apps.input.internalTransfer',compact('locations','products','uoms','userLocation','adminLocations'));
    }

    public function internStore(Request $request)
    {
        //Get All Data From Submitted Form//
        $items = $request->product_name;
        $quantity = $request->quantity;
        $uom = $request->uom_id;
        foreach($items as $index=>$item) {
            $getStock = Inventory::where('product_name',$item)
                                   ->where('warehouse_name',$request->input('from_wh'))
                                   ->orderBy('updated_at','DESC')
                                   ->first();
            if ($getStock == null) {
                $notification = array (
                    'message' => 'Stok Produk '.($item).' Di '.($request->input('from_wh')).' Tidak Ada',
                    'alert-type' => 'error'
                );

                return redirect()->back()->with($notification);
            } elseif ($getStock->closing_amount <= $quantity[$index]) {
                $notification = array (
                    'message' => 'Stok Produk '.($item).' Di '.($request->input('from_wh')).' Tidak Cukup',
                    'alert-type' => 'error'
                );

                return redirect()->back()->with($notification);
            } else {
                $reference = InternalTransfer::count();
                $ref = 'IT/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
                $data = [
                    'order_ref' => $ref,
                    'from_wh' => $request->input('from_wh'),
                    'to_wh' => $request->input('to_wh'),
                    'created_by' => auth()->user()->name,
                ];
                $internal = InternalTransfer::create($data);
                
                
                    //Check UOM Value//
                    $bases = UomValue::where('id',$uom[$index])->first();
                    if($bases->is_parent == null) {
                        $convertion = ($quantity[$index]) * ($bases->value); 
                    } else {
                        $convertion = $quantity[$index];
                    }
                    //Get Reference Value From Product//
                    $refProduct = Product::where('name',$item)->first();
                    //Find 
                    $base = Inventory::where('product_name',$item)->where('warehouse_name',$internal->to_wh)->first();
                    $source = Inventory::where('product_name',$item)->where('warehouse_name',$internal->from_wh)->first();
                    $from = InventoryMovement::where('product_name',$item)->where('warehouse_name',$internal->from_wh)->orderBy('updated_at','DESC')->first();
                    $to = InventoryMovement::where('product_name',$item)->where('warehouse_name',$internal->to_wh)->orderBy('updated_at','DESC')->first();
                    
                    $items = InternalItems::create([
                        'product_name' => $item,
                        'mutasi_id' => $internal->id,
                        'quantity' => $quantity[$index],
                        'uom_id' => $uom[$index],
                    ]);
                    if($base == null) {
                        $dataInvent = Inventory::create([
                            'product_id' => $source->product_id,
                            'product_name' => $item,
                            'warehouse_name' => $internal->to_wh,
                            'min_stock' => $refProduct->min_stock,
                            'opening_amount' => '0',
                            'closing_amount' => $convertion,
                        ]);
                        $outcome = InventoryMovement::create([
                            'type' => '4',
                            'inventory_id' => $dataInvent->id,
                            'reference_id' => $ref,
                            'product_name' => $dataInvent->product_name,
                            'warehouse_name' => $from->warehouse_name,
                            'incoming' => '0',
                            'outgoing' => $convertion,
                            'remaining' => ($from->remaining) - ($convertion),
                        ]);

                        $income = InventoryMovement::create([
                            'type' => '4',
                            'inventory_id' => $dataInvent->id,
                            'reference_id' => $ref,
                            'product_name' => $dataInvent->product_name,
                            'warehouse_name' => $dataInvent->warehouse_name,
                            'incoming' => $convertion,
                            'outgoing' => '0',
                            'remaining' => $convertion,
                        ]);
                        $updateInvent = Inventory::where('product_name',$item)->where('warehouse_name',$internal->from_wh)->update([
                            'closing_amount' => ($source->closing_amount) - ($convertion),
                        ]);
                    } else {
                        $dataInvent = $base->update([
                            'closing_amount' => ($base->closing_amount) + ($convertion),
                        ]);
                        if($to === null) {
                            $income = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $base->id,
                                'reference_id' => $ref,
                                'product_name' => $base->product_name,
                                'warehouse_name' => $base->warehouse_name,
                                'incoming' => $convertion,
                                'outgoing' => '0',
                                'remaining' => $convertion,
                            ]);

                            $outcome = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $base->id,
                                'reference_id' => $ref,
                                'product_name' => $base->product_name,
                                'warehouse_name' => $from->warehouse_name,
                                'incoming' => '0',
                                'outgoing' => $convertion,
                                'remaining' => ($from->remaining) - ($convertion),
                            ]);
                        } else {
                            $income = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $base->id,
                                'reference_id' => $ref,
                                'product_name' => $base->product_name,
                                'warehouse_name' => $base->warehouse_name,
                                'incoming' => $convertion,
                                'outgoing' => '0',
                                'remaining' => ($to->remaining) + ($convertion),
                            ]);
            
                            $outcome = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $base->id,
                                'reference_id' => $ref,
                                'product_name' => $base->product_name,
                                'warehouse_name' => $from->warehouse_name,
                                'incoming' => '0',
                                'outgoing' => $convertion,
                                'remaining' => ($from->remaining) - ($convertion),
                            ]);
                        }

                        $updateInvent = Inventory::where('product_name',$item)->where('warehouse_name',$internal->from_wh)->update([
                            'closing_amount' => ($source->closing_amount) - ($convertion),
                        ]);
                    }
                    /* if($to == null) {
                        $income = InventoryMovement::create([
                            'type' => '4',
                            'inventory_id' => $base->id,
                            'reference_id' => $ref,
                            'product_id' => $base->product_id,
                            'warehouse_id' => $base->warehouse_id,
                            'incoming' => $convertion,
                            'outgoing' => '0',
                            'remaining' => $convertion,
                        ]);
                    } else {
                        $income = InventoryMovement::create([
                            'type' => '4',
                            'inventory_id' => $base->id,
                            'reference_id' => $ref,
                            'product_id' => $base->product_id,
                            'warehouse_id' => $base->warehouse_id,
                            'incoming' => $convertion,
                            'outgoing' => '0',
                            'remaining' => ($base->remaining) + ($convertion),
                        ]);
                    } */
                
                
            }

        }
        $log = 'Internal Transfer '.($internal->order_ref).' Berhasil Dibuat';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Internal Transfer '.($internal->order_ref).' Berhasil Dibuat',
                    'alert-type' => 'success'
                );
                
                return redirect()->route('transfer.index')->with($notification);
        
    }

    public function transferView($id)
    {
        $source = InternalTransfer::find($id);
        $details = InternalItems::where('mutasi_id',$id)->get();
        
        return view('apps.show.internalTransfer',compact('details'))->renderSections()['content'];
    }

    public function transferAccept(Request $request,$id)
    {
        $data = InternalTransfer::find($id);
        $accept = $data->update([
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'updated_by' => auth()->user()->name,
        ]);
        $log = 'Internal Transfer '.($data->order_ref).' Berhasil Diterima';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Internal Transfer '.($data->order_ref).' Berhasil Diterima',
            'alert-type' => 'success'
        );

        return redirect()->route('transfer.index')->with($notification);
    }

    public function deliveryIndex()
    {
        $data = Delivery::get();
        $sales = Sale::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();
        $services = DeliveryService::pluck('delivery_name','id')->toArray();

        return view('apps.pages.deliveryOrder',compact('data','sales','services'));
    }

    public function deliveryOrder(Request $request)
    {
        $this->validate($request, [
            'sales_ref' => 'required',
            'delivery_service' => 'required',
            'delivery_cost' => 'required',
        ]);

        $input = $request->all();
        
        $lastOrder = Delivery::count();
        $refs = 'DO/'.str_pad($lastOrder + 1, 4, "0", STR_PAD_LEFT).'/'.'FTI'.'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $salesRefs = Sale::where('id',($request->input('sales_ref')))->first();

        $orders = Delivery::create([
            'do_ref' => $refs,
            'order_ref' => $salesRefs->order_ref,
            'delivery_id' => $request->input('delivery_service'),
            'delivery_cost' => $request->input('delivery_cost'),
            'created_by' => auth()->user()->name,
        ]);
        $moves = SaleItem::where('sales_id',$salesRefs->id)->get();
        
        foreach($moves as $index=>$val) {
            $source = InventoryMovement::where('product_name',$val->product_name)->where('warehouse_name','Gudang Pengiriman')->orderBy('created_at','DESC')->first();
            $movements = InventoryMovement::create([
                'type' => '5',
                'inventory_id' => $source->inventory_id,
                'reference_id' => $refs,
                'product_name' => $val->product_name,
                'outgoing' => $val->quantity,
                'remaining' => ($source->remaining) - ($val->quantity),
                'warehouse_name' => 'Gudang Pengiriman',
            ]);
        };
        foreach($moves as $index=>$val) {
            Inventory::where('product_name',$val->product_name)->where('warehouse_name',$movements->warehouse_name)->update([
                'closing_amount' => $movements->remaining,
            ]);
        }

        $log = 'Delivery Order '.($orders->order_ref).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Delivery Order '.($orders->order_ref).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        
        return redirect()->route('delivery.index')->with($notification);
    }

    public function deliveryPrint($id)
    {
        $source = Delivery::find($id);
        $data = Sale::where('order_ref',$source->sales_ref)
                        ->first();
                        
        $details = SaleItem::where('sales_id',$data->id)
                            ->get();
        
        $pdf = PDF::loadview('apps.print.deliveryOrder',compact('source','data','details'));
        return $pdf->download(''.$source->order_ref.'.pdf');                 
    }

    public function deliveryReceipt($id)
    {
        $data = Delivery::find($id);

        return view('apps.edit.deliveryReceipt',compact('data'))->renderSections()['content'];
    }
    public function deliveryDone(Request $request,$id)
    {
        $data = Delivery::find($id);
        $data->update([
            'receipt' => $request->input('receipt'),
            'status_id' => 'e9395add-e815-4374-8ed3-c0d5f4481ab8',
            'updated_by' => auth()->user()->name,
        ]);

        $source = Delivery::where('id',$id)->first();
        $sales = Sale::where('order_ref',$source->order_ref)->update([
            'status_id' => 'e9395add-e815-4374-8ed3-c0d5f4481ab8',
        ]);

        $log = 'Delivery Order '.($data->order_ref).' Berhasil Dikirimkan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Delivery Order '.($data->order_ref).' Berhasil Dikirimkan',
            'alert-type' => 'success'
        );
    
        return redirect()->route('delivery.index')->with($notification);
    }

}