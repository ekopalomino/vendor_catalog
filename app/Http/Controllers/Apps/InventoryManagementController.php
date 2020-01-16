<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Product;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use iteos\Models\Warehouse;
use iteos\Models\UserWarehouse;
use iteos\Models\InternalTransfer;
use iteos\Models\InternalItems;
use iteos\Models\Purchase;
use iteos\Models\PurchaseItem;
use iteos\Models\Delivery;
use iteos\Models\DeliveryService;
use iteos\Models\DeliveryItem;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\UomValue;
use iteos\Models\Contact;
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
        $data = Inventory::where('warehouse_name','!=','Gudang Pengiriman')
                           ->orderBy('id','asc')
                           ->get();
        
        return view('apps.pages.inventories',compact('data'));
    }

    public function stockCard(Request $request,$id)
    {
        $source = Inventory::where('id',$id)->first();
        $data = InventoryMovement::where('product_name',$source->product_name)
                                   ->paginate(10);
        
        return view('apps.show.stockCard',compact('data'))->renderSections()['content'];
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
        $this->validate($request, [
            'notes' => 'required',
        ]);

        $ref = 'ADJ/FTI/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $checkInv = Inventory::where('product_name',$request->input('product_name'))
                               ->where('warehouse_name',$request->input('warehouse_name'))
                               ->orderBy('updated_at','DESC')
                               ->first();
        $checkMove = InventoryMovement::where('product_name',$request->input('product_name'))
                                        ->where('warehouse_name',$request->input('warehouse_name'))
                                        ->orderBy('updated_at','DESC')
                                        ->first();
        if(($checkMove) == null) {
            if(($request->input('plus_amount')) == null) {
                $input = [
                    'reference_id' => $ref,
                    'type' => '1', 
                    'inventory_id' => $id,
                    'product_id' => $request->input('product_id'),
                    'product_name' => $request->input('product_name'),
                    'warehouse_name' => $request->input('warehouse_name'),
                    'incoming' => '0',
                    'outgoing' => $request->input('min_amount'),
                    'remaining' => $request->input('min_amount'),
                    'notes' => $request->input('notes'),
                ];
                $movements = InventoryMovement::create($input);
                $source = Inventory::where('id',$id)->update([
                    'closing_amount' => ($checkInv->closing_amount) - ($movements->remaining),
                ]);
                
                $log = 'Stok '.($movements->product_name).' Berhasil Disesuaikan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Stok '.($movements->product_name).' Berhasil Disesuaikan',
                    'alert-type' => 'success'
                );
    
                return redirect()->route('inventory.adjust')->with($notification);
            } elseif (($request->input('min_amount')) == null) {
                $input = [
                    'reference_id' => $ref,
                    'type' => '1', 
                    'inventory_id' => $id,
                    'product_id' => $request->input('product_id'),
                    'product_name' => $request->input('product_name'),
                    'warehouse_name' => $request->input('warehouse_name'),
                    'incoming' => $request->input('plus_amount'),
                    'outgoing' => '0',
                    'remaining' => $request->input('plus_amount'),
                    'notes' => $request->input('notes'),
                ];
                $movements = InventoryMovement::create($input);
                $source = Inventory::where('id',$id)->update([
                    'closing_amount' => ($checkInv->closing_amount) + ($movements->remaining),
                ]);
                
                $log = 'Stok '.($movements->product_name).' Berhasil Disesuaikan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Stok '.($movements->product_name).' Berhasil Disesuaikan',
                    'alert-type' => 'success'
                );
    
                return redirect()->route('inventory.adjust')->with($notification);
            }
        } else {
            if(($request->input('plus_amount')) == null) {
                $input = [
                    'reference_id' => $ref,
                    'type' => '1', 
                    'inventory_id' => $id,
                    'product_id' => $request->input('product_id'),
                    'product_name' => $request->input('product_name'),
                    'warehouse_name' => $request->input('warehouse_name'),
                    'incoming' => '0',
                    'outgoing' => $request->input('min_amount'),
                    'remaining' => ($checkMove->remaining) - ($request->input('min_amount')),
                    'notes' => $request->input('notes'),
                ];
                $movements = InventoryMovement::create($input);
                $source = Inventory::where('id',$id)->update([
                    'closing_amount' => ($checkInv->closing_amount) - ($movements->outgoing),
                ]);
                
                $log = 'Stok '.($movements->product_name).' Berhasil Disesuaikan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Stok '.($movements->product_name).' Berhasil Disesuaikan',
                    'alert-type' => 'success'
                );
    
                return redirect()->route('inventory.adjust')->with($notification);
            } elseif (($request->input('min_amount')) == null) {
                $input = [
                    'reference_id' => $ref,
                    'type' => '1', 
                    'inventory_id' => $id,
                    'product_id' => $request->input('product_id'),
                    'product_name' => $request->input('product_name'),
                    'warehouse_name' => $request->input('warehouse_name'),
                    'incoming' => $request->input('plus_amount'),
                    'outgoing' => '0',
                    'remaining' => ($checkMove->remaining) + ($request->input('plus_amount')),
                    'notes' => $request->input('notes'),
                ];
                $movements = InventoryMovement::create($input);
                $source = Inventory::where('id',$id)->update([
                    'closing_amount' => ($checkInv->closing_amount) + ($movements->incoming),
                ]);
                
                $log = 'Stok '.($movements->product_name).' Berhasil Disesuaikan';
                \LogActivity::addToLog($log);
                $notification = array (
                    'message' => 'Stok '.($movements->product_name).' Berhasil Disesuaikan',
                    'alert-type' => 'success'
                );
    
                return redirect()->route('inventory.adjust')->with($notification);
            }
        }
        
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
                $movements = InventoryMovement::create([
                    'product_name' => $inventories->product_name,
                    'warehouse_name' => $inventories->warehouse_name,
                    'type' => '3',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'incoming' => $convertion,
                    'remaining' => $convertion,
                ]);
            } else {
                $inventories = $sources->update([
                    'closing_amount' => ($sources->closing_amount) + $convertion,
                ]);
                if($moves === null) {
                    $movements = InventoryMovement::create([
                        'product_name' => $sources->product_name,
                        'warehouse_name' => $sources->warehouse_name,
                        'type' => '3',
                        'inventory_id' => $sources->id,
                        'reference_id' => $data->order_ref,
                        'incoming' => $convertion,
                        'remaining' => $convertion,
                    ]);
                } else {
                    $movements = InventoryMovement::create([
                        'product_name' => $sources->product_name,
                        'warehouse_name' => $sources->warehouse_name,
                        'type' => '3',
                        'inventory_id' => $sources->id,
                        'reference_id' => $data->order_ref,
                        'incoming' => $convertion,
                        'remaining' => ($moves->remaining) + $convertion,
                    ]);
                }
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
        $userLocation = UserWarehouse::where('user_id',auth()->user()->id)->pluck('warehouse_name','warehouse_name')->toArray();
        $products = Product::pluck('name','name')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        
        return view('apps.input.internalTransfer',compact('products','uoms','userLocation'));
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
            } else {
                $reference = InternalTransfer::count();
                $ref = 'MI/FTI'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
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
        $refs = 'DO/FTI/'.str_pad($lastOrder + 1, 4, "0", STR_PAD_LEFT).'/'.'FTI'.'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
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
        $data = Sale::where('order_ref',$source->order_ref)
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

    public function doIndex()
    {
        $data = Delivery::orderBy('created_at','DESC')->get();
        
        return view('apps.pages.deliveryOrder',compact('data'));
    }

    public function doSearch()
    {
        $sales = Sale::where('status_id','!=','6d32841b-2606-43a5-8cf7-b77291ddbfbb')
                       ->where('status_id','!=','ad5335ed-fc6e-42a1-a0e4-8b802acd6caa')           
                       ->pluck('order_ref','order_ref')->toArray();
        $services = DeliveryService::pluck('delivery_name','id')->toArray();

        return view('apps.input.deliveryOrderSearch',compact('sales','services'));
    }

    public function doGet(Request $request)
    {
        $sales = Sale::where('order_ref',$request->input('order_ref'))->first();
        $details = SaleItem::join('inventories','inventories.product_id','sale_items.product_id')
                             ->where('sale_items.sales_id',$sales->id)
                             ->get();
        $services = DeliveryService::pluck('delivery_name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        
        return view('apps.input.deliveryOrder',compact('sales','details','services','uoms'));
    }

    public function doStore(Request $request)
    {
        $lastOrder = Delivery::count();
        $refs = 'DO/FTI/'.str_pad($lastOrder + 1, 4, "0", STR_PAD_LEFT).'/'.'FTI'.'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        
        $orders = Delivery::create([
            'do_ref' => $refs,
            'order_ref' => $request->input('order_ref'),
            'del_service_id' => $request->input('delivery_service'),
            'delivery_cost' => $request->input('delivery_cost'),
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
            'created_by' => auth()->user()->name,
        ]);
        $tg = InternalTransfer::create([
            'order_ref' => $request->input('order_ref'),
            'from_wh' => 'Gudang Utama',
            'to_wh' => 'Gudang Pengiriman',
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'created_by' => auth()->user()->name,
            'updated_by' => auth()->user()->name,
            'received_by' => auth()->user()->name
        ]);

        $items = $request->product;
        $quantity_order = $request->pesanan;
        $quantity_shipment = $request->pengiriman;
        $uoms = $request->uom_id;
        $shipments = $request->is_shipment;
        $partials = $request->is_partial;
        foreach($items as $index=>$item) {
            $tgItems = InternalItems::create([
                'mutasi_id' => $tg->id,
                'product_name' => $item,
                'quantity' => $quantity_shipment[$index],
                'uom_id' => $uoms[$index],
            ]);

            $is_deliver = isset($shipments[$index]) ? 1:0;
            $is_part = isset($partials[$index]) ? 1:0;
            $orderItems = DeliveryItem::create([
                'delivery_id' => $orders->id,
                'product_name' => $item,
                'product_quantity' => $quantity_order[$index],
                'product_shipment' => $quantity_shipment[$index],
                'is_shipment' => $is_deliver,
                'is_partial' => $is_part,
                'uom_id' => $uoms[$index],
            ]);
            
            $inventories = Inventory::where('product_name',$item)->where('warehouse_name','Gudang Utama')->first();
            $updateInv = $inventories->update([
                'closing_amount' => ($inventories->closing_amount) - ($quantity_shipment[$index]),
            ]);
            $lastMove = InventoryMovement::where('product_name',$item)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $movements = InventoryMovement::create([
                'inventory_id' => $inventories->id,
                'reference_id' => $request->input('order_ref'),
                'type' => '4',
                'product_name' => $item,
                'warehouse_name' => 'Gudang Utama',
                'incoming' => '0',
                'outgoing' => $quantity_shipment[$index],
                'remaining' => ($lastMove->remaining) - ($quantity_shipment[$index])
            ]);
            
            $incoming = Inventory::where('product_name',$item)->where('warehouse_name','Gudang Pengiriman')->first();
            if(($incoming) == null) {
                $makeInv = Inventory::create([
                    'product_id' => '',
                    'product_name' => $item,
                    'warehouse_name' => 'Gudang Pengiriman',
                    'min_stock' => '0',
                    'opening_amount' => '0',
                    'closing_amount' => $quantity_shipment[$index],
                ]);
                $makeMove = InventoryMovement::create([
                    'inventory_id' => $makeInv->id,
                    'reference_id' => $request->input('order_ref'),
                    'type' => '4',
                    'product_name' => $item,
                    'warehouse_name' => 'Gudang Pengiriman',
                    'incoming' => $quantity_shipment[$index],
                    'outgoing' => '0',
                    'remaining' => $quantity_shipment[$index]
                ]);
            } else {
                $updateInv = $incoming->update([
                    'closing_amount' => ($incoming->closing_amount) + ($quantity_shipment[$index])
                ]);
                $makeMove = InventoryMovement::create([
                    'inventory_id' => $incoming->id,
                    'reference_id' => $request->input('order_ref'),
                    'type' => '4',
                    'product_name' => $item,
                    'warehouse_name' => 'Gudang Pengiriman',
                    'incoming' => $quantity_shipment[$index],
                    'outgoing' => '0',
                    'remaining' => $quantity_shipment[$index]
                ]);
            }
        }

        $salesUpdate = Sale::where('order_ref',$request->input('order_ref'))->update([
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
        ]);

        $log = 'Delivery Order '.($orders->do_ref).' Sedang Diproses';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Delivery Order '.($orders->do_ref).' Sedang Diproses',
            'alert-type' => 'success'
        );
    
        return redirect()->route('delivery.index')->with($notification);
    }

    public function doCancel(Request $request,$id)
    {
        $data = Delivery::find($id);
        $sales = Sale::where('order_ref',$data->order_ref)->update([
            'status_id' => '8447cd63-c7e7-4b26-81fc-d2eb3aceec97'
        ]);
        $log = 'Delivery Order '.($data->order_ref).' Berhasil Dibatalkan';
         \LogActivity::addToLog($log);
        $data->delete();
        
        $notification = array (
            'message' => 'Delivery Order '.($data->order_ref).' Berhasil Dibatalkan',
            'alert-type' => 'success'
        );
    
        return redirect()->route('delivery.index')->with($notification);

    }

    public function doShow($id)
    {
        $data = Delivery::find($id);
        $items = DeliveryItem::where('delivery_id',$id)->get();
        
        return view('apps.show.deliveryOrder',compact('items'))->renderSections()['content'];
    }

    public function doPrint($id)
    {
        $source = Delivery::find($id);
        $data = Sale::where('order_ref',$source->order_ref)
                        ->first();             
        $details = DeliveryItem::where('delivery_id',$id)->get();
        
        $pdf = PDF::loadview('apps.print.deliveryOrder',compact('source','data','details'));
        return $pdf->download(''.$source->do_ref.'.pdf');                 
    }

    public function doReceipt($id)
    { 
        $data = Delivery::find($id);

        return view('apps.edit.deliveryReceipt',compact('data'))->renderSections()['content'];
    }
    public function doDone(Request $request,$id)
    {
        $data = Delivery::find($id);
        $items = DeliveryItem::where('delivery_id',$id)->get();
        $done = $data->update([
            'receipt' => $request->input('receipt'),
            'status_id' => 'e9395add-e815-4374-8ed3-c0d5f4481ab8',
            'updated_by' => auth()->user()->name,
        ]);
        foreach($items as $item) {
            $inventories = Inventory::where('product_name',$item->product_name)
                                      ->where('warehouse_name','Gudang Pengiriman')
                                      ->orderBy('updated_at','DESC')
                                      ->first();
            $movements = InventoryMovement::where('product_name',$item->product_name)
                                            ->where('warehouse_name','Gudang Pengiriman')
                                            ->orderBy('updated_at','DESC')
                                            ->first();
            $upInv = $inventories->update([
                'closing_amount' => ($inventories->closing_amount) - ($item->product_shipment),
            ]);
            $upMove = InventoryMovement::create([
                'inventory_id' => $inventories->id,
                'reference_id' => $data->do_ref,
                'type' => '5',
                'product_name' => $item->product_name,
                'warehouse_name' => 'Gudang Pengiriman',
                'incoming' => '0',
                'outgoing' => $item->product_shipment,
                'remaining' => ($movements->remaning) - ($item->product_shipment),
            ]);
        }

        $sales = Sale::where('order_ref',$data->order_ref)->update([
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