<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Product;
use Erp\Models\Inventory;
use Erp\Models\InventoryMovement;
use Erp\Models\Warehouse;
use Erp\Models\InternalTransfer;
use Erp\Models\Purchase;
use Erp\Models\PurchaseItem;
use Erp\Models\Delivery;
use Erp\Models\Sale;
use Erp\Models\SaleItem;
use Erp\Models\UomValue;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class InventoryManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can View Data');
         $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
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
        $data = InventoryMovement::where('product_id',$source->product_id)
                                ->where('warehouse_id',$source->warehouse_id)
                                ->paginate(5);
        
        return view('apps.show.stockCard',compact('data'))->renderSections()['content'];
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
            'warehouse_id' => $request->input('warehouse_id'),
            'incoming' => $request->input('adjust_amount'),
            'outgoing' => '0',
            'remaining' => $request->input('adjust_amount'),
            'notes' => $request->input('notes'),
        ];
        
        $products = Product::where('id',$request->input('product_id'))->first();
        
        if($request->input('adjust_amount') > $products->min_stock) {
            $source = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id',$request->input('warehouse_id'))->update([
                'opening_amount' => $request->input('adjust_amount'),
                'closing_amount' => $request->input('adjust_amount'),
                'status_id' => '533806c2-19dc-4b24-886f-d783a8b448b7',
            ]);
        } elseif($request->input('adjust_amount') == '0') {
            $source = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id',$request->input('warehouse_id'))->update([
                'opening_amount' => $request->input('adjust_amount'),
                'closing_amount' => $request->input('adjust_amount'),
                'status_id' => '72ceba35-758d-4bc2-9295-fd9f9f393c56',
            ]);
        } else {
            $source = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id',$request->input('warehouse_id'))->update([
                'opening_amount' => $request->input('adjust_amount'),
                'closing_amount' => $request->input('adjust_amount'),
                'status_id' => 'f8b26119-fb0c-40ff-85c0-8fb85696f220',
            ]);
        }
        $movements = InventoryMovement::create($input);
        $log = 'Stok Adjustment '.($products->name).' Berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Stok Adjustment '.($products->name).' Berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('inventory.adjust')->with($notification);
    }

    public function initialStock(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'warehouse_id' => 'required',
            'amount' => 'required|numeric',
        ]);

        $input = [
            'product_id' => $request->input('product_id'),
            'warehouse_id' => $request->input('warehouse_id'),
            'opening_amount' => $request->input('amount'),
        ];
        
        $rel = Product::where('id',$request->input('product_id'))->first();
        if($request->input('amount') > $rel->min_stock) {
            $source = Inventory::create([
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'opening_amount' => $request->input('amount'),
                'closing_amount' => $request->input('amount'),
                'min_stock' => $rel->min_stock,
                'status_id' => '533806c2-19dc-4b24-886f-d783a8b448b7',
            ]);

            $moves = InventoryMovement::create([
                'type' => '0',
                'reference_id' => 'Initial Stock',
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'incoming' => $request->input('amount'),
                'remaining' => ($request->input('amount')),
            ]);
        } elseif ($request->input('amount') < $rel->min_stock) {
            $source = Inventory::create([
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'opening_amount' => $request->input('amount'),
                'closing_amount' => $request->input('amount'),
                'min_stock' => $rel->min_stock,
                'status_id' => 'f8b26119-fb0c-40ff-85c0-8fb85696f220',
            ]);

            $moves = InventoryMovement::create([
                'type' => '0',
                'reference_id' => 'Initial Stock',
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'incoming' => $request->input('amount'),
                'remaining' => ($request->input('amount')),
            ]);
        } else {
            $source = Inventory::create([
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'opening_amount' => $request->input('amount'),
                'closing_amount' => $request->input('amount'),
                'min_stock' => $rel->min_stock,
                'status_id' => '72ceba35-758d-4bc2-9295-fd9f9f393c56',
            ]);

            $moves = InventoryMovement::create([
                'type' => '0',
                'reference_id' => 'Initial Stock',
                'product_id' => $request->input('product_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'incoming' => $request->input('amount'),
                'remaining' => ($request->input('amount')),
            ]);
        }
        
        return redirect()->route('inventory.index');
    }
    
    public function receiptIndex()
    {
        $data = Purchase::where('status','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();
        $locations = Warehouse::pluck('name','id')->toArray();

        return view('apps.pages.purchaseReceipt',compact('data','locations'));
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
            $sources = Inventory::where('product_id',$item->product_id)->orderBy('updated_at','DESC')->get();
            $moves = InventoryMovement::where('product_id',$item->product_id)->orderBy('updated_at','DESC')->first();
            $inventories = Inventory::updateOrCreate([
                'product_id' => $item->product_id,
                'warehouse_id' => $request->input('warehouse_id')],[
                'opening_amount' => ($sources[0]->closing_amount) + ($item->quantity),
                'closing_amount' => ($sources[0]->closing_amount) + ($item->quantity),
                'status' => '0',
            ]);
            if($moves === null) {
                $movements = InventoryMovement::create([
                    'product_id' => $inventories->product_id,
                    'warehouse_id' => $inventories->warehouse_id,
                    'type' => '3',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'incoming' => $item->quantity,
                    'remaining' => $item->quantity,
                ]);
            } else {
                $movements = InventoryMovement::create([
                    'product_id' => $inventories->product_id,
                    'warehouse_id' => $inventories->warehouse_id,
                    'type' => '3',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'incoming' => $item->quantity,
                    'remaining' => ($moves->rem) + ($item->quantity),
                ]);
            }
        }
        return redirect()->route('inventory.index');
    }

    public function internTransfer()
    {
        $data = InternalTransfer::orderBy('created_at','DESC')->get();
        $locations = Warehouse::pluck('name','id')->toArray();
        $products = Product::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.pages.internalTransfer',compact('data','locations','products','uoms'));
    }

    public function internStore(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'from_id' => 'required',
            'to_id' => 'required',
            'amount' => 'required|numeric',
            'convert' => 'required',
        ]);
        $bases = UomValue::where('id',$request->input('convert'))->first();
       
        if($bases->is_parent == null) {
            $convertion = ($request->input('amount')) * ($bases->value); 
        } else {
            $convertion = $request->input('amount');
        }
        $data = [
            'product_id' => $request->input('product_id'),
            'from_id' => $request->input('from_id'),
            'to_id' => $request->input('to_id'),
            'amount' => $convertion,
        ];
        $internal = InternalTransfer::create($data);
        $reference = InternalTransfer::count();
        $ref = 'IT/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';

        $moves = InventoryMovement::where('product_id',$internal->product_id)->where('warehouse_id',$internal->from_id)->orderBy('created_at','DESC')->first();
        $outake = InventoryMovement::create([
            'type' => '4',
            'reference_id' => $ref,
            'product_id' => $internal->product_id,
            'warehouse_id' => $internal->from_id,
            'out' => $internal->amount,
            'rem' => ($moves->rem) - ($internal->amount),
        ]);
        Inventory::where('product_id',$internal->product_id)->where('warehouse_id',$internal->from_id)
                    ->updateOrCreate([
                        'closing_amount' => $outake->rem,
                    ]);

        $move = InventoryMovement::where('product_id',$internal->product_id)->where('warehouse_id',$internal->to_id)->orderBy('created_at','DESC')->first();
        $intake = InventoryMovement::create([
            'type' => '4',
            'reference_id' => $ref,
            'product_id' => $internal->product_id,
            'warehouse_id' => $internal->to_id,
            'in' => $internal->amount,
            'rem' => ($move->rem) + ($internal->amount),
        ]);
        Inventory::where('product_id',$internal->product_id)->where('warehouse_id',$internal->to_id)
                    ->updateOrCreate([
                        'closing_amount' => $intake->rem,
                    ]);
        
        return redirect()->route('internal.transfer');
    }

    public function deliveryIndex()
    {
        $data = Delivery::get();
        $sales = Sale::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->pluck('order_ref','id')->toArray();

        return view('apps.pages.deliveryOrder',compact('data','sales'));
    }

    public function deliveryOrder(Request $request)
    {
        $this->validate($request, [
            'sales_ref' => 'required',
        ]);

        $input = $request->all();
        
        $lastOrder = Delivery::count();
        $refs = 'DO/'.str_pad($lastOrder + 1, 4, "0", STR_PAD_LEFT).'/'.'FTI'.'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $salesRefs = Sale::where('id',($request->input('sales_ref')))->first();

        $orders = Delivery::create([
            'order_ref' => $refs,
            'sales_ref' => $salesRefs->order_ref,
            'created_by' => auth()->user()->id,
        ]);
        $moves = SaleItem::where('sales_id',$salesRefs->id)->get();
        $source = InventoryMovement::where('product_id',$moves[0]->product_id)->where('warehouse_id','34437a64-ca03-47ff-be0c-63da5814484e')->orderBy('created_at','DESC')->first();
        foreach($moves as $index=>$val) {
            $movements = InventoryMovement::create([
                'type' => '5',
                'inventory_id' => $source->inventory_id,
                'reference_id' => $refs,
                'product_id' => $val->product_id,
                'outgoing' => $val->quantity,
                'remaining' => ($source->remaining) - ($val->quantity),
                'warehouse_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
            ]);
        };
        foreach($moves as $index=>$val) {
            Inventory::where('product_id',$val->product_id)->where('warehouse_id',$movements->warehouse_id)->update([
                'closing_amount' => $movements->remaining,
            ]);
        }
        
        return redirect()->route('delivery.index');
    }

    public function deliveryDone(Request $request,$id)
    {
        $data = Delivery::find($id);
        $data->update([
            'status_id' => 'e9395add-e815-4374-8ed3-c0d5f4481ab8',
        ]);

        $source = Delivery::where('id',$id)->first();
        $sales = Sale::where('order_ref',$source->sales_ref)->update([
            'status_id' => 'e9395add-e815-4374-8ed3-c0d5f4481ab8',
        ]);
    
        return redirect()->route('delivery.index');
    }

}