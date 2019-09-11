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

        return view('apps.pages.inventories',compact('data'));
    }

    public function stockCard(Request $request,$id)
    {
        $source = Inventory::where('id',$id)->pluck('product_id');
        $data = InventoryMovement::where('product_id',$source)->paginate(5);
       
        return view('apps.show.stockCard',compact('data'))->renderSections()['content'];
    }

    public function inventoryAdjustIndex()
    {
        $data = Inventory::orderBy('id','asc')->get();
        
        return view('apps.pages.inventoryAdjustment',compact('data'));
    }

    public function makeAdjust($id)
    {
        $locations = Warehouse::pluck('name','id')->toArray();
        $data = Inventory::find($id);

        return view('apps.edit.makeAdjust',compact('data','locations'))->renderSections()['content'];
    }

    public function storeAdjust(Request $request,$id)
    {
        $ref = 'ADJ/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $input = [
            'reference_id' => $ref,
            'type' => '1',
            'product_id' => $request->input('product_id'),
            'warehouse_id' => $request->input('warehouse_id'),
            'in' => $request->input('adjust_amount'),
            'out' => '0',
            'rem' => ($request->input('adjust_amount')) - '0',
            'notes' => $request->input('notes'),
        ];
        $data = InventoryMovement::create($input);
        $rel = Product::where('id',$data->product_id)->first('min_stock');

        if($data->in > $rel->min_stock) {
            $source = Inventory::where('product_id',$data->product_id)->update([
                'warehouse_id' => $data->warehouse_id,
                'opening_amount' => $data->in,
                'closing_amount' => $data->in,
                'status_id' => '533806c2-19dc-4b24-886f-d783a8b448b7',
            ]);
        } else {
            $source = Inventory::where('product_id',$data->product_id)->update([
                'warehouse_id' => $data->warehouse_id,
                'opening_amount' => $data->in,
                'closing_amount' => $data->in,
                'status_id' => 'f8b26119-fb0c-40ff-85c0-8fb85696f220',
            ]);
        }
        
        return redirect()->back();
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
        $moves = InventoryMovement::where('product_id',$items[0]->product_id)->orderBy('created_at','DESC')->first();
        
        $in = Purchase::where('id',$request->input('order_ref'))->update([
            'status' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
        ]);
        $inv = InventoryMovement::create([
            'type' => '3',
            'reference_id' => $data->order_ref,
            'product_id' => $items[0]->product_id,
            'warehouse' => $request->input('warehouse_id'),
            'in' => $items[0]->quantity,
            'rem' => ($moves->rem) + ($items[0]->quantity),
        ]);
        dd($inv);
        $main = Inventory::where('product_id',$items[0]->product_id)->update($inv->rem);

        return redirect()->route('inventory.index');
    }

    public function internTransfer()
    {
        $data = InternalTransfer::orderBy('created_at','DESC')->get();
        $locations = Warehouse::pluck('name','id')->toArray();
        $products = Product::pluck('name','id')->toArray();

        return view('apps.pages.internalTransfer',compact('data','locations','products'));
    }

    public function internStore(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'from_id' => 'required',
            'to_id' => 'required',
            'amount' => 'required|numeric',
        ]);
        
        $data = [
            'product_id' => $request->input('product_id'),
            'from_id' => $request->input('from_id'),
            'to_id' => $request->input('to_id'),
            'amount' => $request->input('amount'),
        ];
        $internal = InternalTransfer::create($data);
        InventoryMovement::create([
            'type' => '4',
            'reference_id' => '',
            'product_id' => '',
            'warehouse_id' => '',
            'out' => '',
            'rem' => '',
        ]);
        InventoryMovement::create([
            'type' => '4',
            'reference_id' => '',
            'product_id' => '',
            'warehouse_id' => '',
            'in' => '',
            'rem' => '',
        ]);
    }
}