<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\SaleItem;
use Erp\Models\Inventory;
use Erp\Models\InventoryMovement;
use Erp\Models\Product;
use Erp\Models\UomValue;
use Erp\Models\Contact;
use Erp\Models\PaymentMethod;
use Erp\Models\PaymentTerm;
use Erp\Models\Warehouse;
use Erp\Models\InternalTransfer;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;
use DB;
use Validator;

class SalesManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Sales');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }
    
    public function index()
    {
        $sales = Sale::orderBy('updated_at','desc')->get();

        return view('apps.pages.sales',compact('sales'));
    }

    public function addMore()
    {
        return view('apps.pages.salesNew');
    }

    public function addMoreItem(Request $request)
    {
        $rules = [];


        foreach($request->input('product_id') as $key => $value) {
            $rules["product_id.{$key}"] = 'required';
        }


        $validator = Validator::make($request->all(), $rules);


        if ($validator->passes()) {


            foreach($request->input('product_id') as $key => $value) {
                TagList::create(['product_id'=>$value]);
            }


            return response()->json(['success'=>'done']);
        }


        return response()->json(['error'=>$validator->errors()->all()]);
    }

    public function create()
    {
        $customers = Contact::where('type_id','1')->pluck('name','ref_id')->toArray();
        $products = Product::join('inventories','products.id','=','inventories.product_id')
                    ->where('inventories.warehouse_id','=','afdcd530-bb5e-462b-8dda-1371b9195903')
                    ->where('inventories.closing_amount','>','min_amount')
                    ->pluck('products.name','products.id')
                    ->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $locations = Warehouse::pluck('name','id')->toArray();
        return view('apps.input.salesNew',compact('customers','products','uoms','locations'));
    }

    public function storeSales(Request $request)
    {
    	$this->validate($request, [
            'client_code' => 'required',
            'delivery_date' => 'required',
        ]);

        $latestOrder = Sale::count();
        $ref = 'SO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('client_code')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';

        $details = Contact::where('ref_id',$request->input('client_code'))->first();

        $input = [
            'order_ref' => $ref,
            'client_code' => $request->input('client_code'),
            'client_id' => $details->id,
            'client_name' => $details->name,
            'delivery_date' => $request->input('delivery_date'),
            'billing_address' => $details->billing_address,
            'shipping_address' => $details->shipping_address,
            'delivery_date' => $request->input('delivery_date'),
            'created_by' => auth()->user()->id,
        ];
        
        $data = Sale::create($input);

        $items = $request->product_id;
        $quantity = $request->quantity;
        $sale_price = $request->sale_price;
        $sale_id = $data->id;
        $movement = InventoryMovement::where('product_id',$request->product_id)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->orderBy('id','DESC')->first();
        $inventory = Inventory::where('product_id',$request->product_id)->first();
        
        foreach($items as $index=>$item) {
            $items = SaleItem::create([
                'sales_id' => $sale_id,
                'product_id' => $item,
                'quantity' => $quantity[$index],
                'sale_price' => $sale_price[$index],
                'sub_total' => ($sale_price[$index]) * ($quantity[$index]),
            ]);
        }
        
        $qty = SaleItem::where('sales_id',$sale_id)->sum('quantity');
        $price = SaleItem::where('sales_id',$sale_id)->sum('sub_total');
        
        $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update(['quantity' => $qty, 'total' => $price]);
        
        $moves = SaleItem::where('sales_id',$sale_id)->get();
        foreach($moves as $index=>$val) {
            InternalTransfer::create([
                'product_id' => $val->product_id,
                'from_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
                'to_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
                'amount' => $val->quantity,
            ]);
        };
        foreach($moves as $index=>$val) {
            InventoryMovement::create([
                'type' => '4',
                'reference_id' => $data->order_ref,
                'product_id' => $val->product_id,
                'in' => $movement->rem,
                'out' => $val->quantity,
                'rem' => ($movement->rem) - ($val->quantity),
                'warehouse_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
            ]);
        };
        
        foreach($moves as $index=>$val) {
            InventoryMovement::create([
                'type' => '4',
                'reference_id' => $data->order_ref,
                'product_id' => $val->product_id,
                'in' => $val->quantity,
                'rem' => $val->quantity,
                'warehouse_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
            ]);
        };
        foreach($moves as $index=>$val) {
            Inventory::where('product_id',$val->product_id)->update([
                'closing_amount' => ($movement->rem) - ($val->quantity),
            ]);
        };
        
        return redirect()->route('sales.index');
    }
 
    public function salesShow($id)
    {
        $sales = Sale::find($id);
        $data = SaleItem::where('sales_id',$id)->get();

        return view('apps.show.sales',compact('sales','data'));
    }
}
