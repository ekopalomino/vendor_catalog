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
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;
use DB;

class SalesManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can View Data');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function index()
    {
        $sales = Sale::orderBy('updated_at','desc')->get();

        return view('apps.pages.sales',compact('sales'));
    }

    public function create()
    {
        $customers = Contact::where('type_id','1')->pluck('name','ref_id')->toArray();
        
        return view('apps.input.sales',compact('customers'));
    }

    public function storeSales(Request $request)
    {
    	$this->validate($request, [
            'client_id' => 'required',
            'delivery_date' => 'required',
        ]);

        $latestOrder = Sale::count();
        $ref = 'SO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('client_id')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';

        $details = Contact::where('ref_id',$request->input('client_id'))->first();

        $input = [
            'order_ref' => $ref,
            'client_id' => $request->input('client_id'),
            'client_name' => $details->name,
            'delivery_date' => $request->input('delivery_date'),
            'billing_address' => $details->billing_address,
            'shipping_address' => $details->shipping_address,
            'delivery_date' => $request->input('delivery_date'),
            'created_by' => auth()->user()->id,
        ];
        
        $data = Sale::create($input);
        
        return redirect()->route('sales.items',['id' => $data->id]);
    }
 
    public function createItems($id)
    {
        $data = Sale::find($id);
    	$products = Product::join('inventories','products.id','=','inventories.product_id')
                    ->where('inventories.closing_amount','>','min_amount')
                    ->pluck('products.name','products.id')
                    ->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $items = SaleItem::where('sales_id',$id)->get();
       
    	return view('apps.input.salesItems',compact('data','products','uoms','items'));
    }

    public function storeItems(Request $request)
    {
        $input = [
            'product_id' => $request->input('product_id'),
            'quantity' => $request->input('quantity'),
            'uom_id' => $request->input('uom_id'),
            'sale_price' => $request->input('sale_price'),
            'sales_id' => $request->input('sales_id'),
            'sub_total' => ($request->input('quantity'))*($request->input('sale_price')),
        ];

        $movement = [
            'product_id' => $request->input('product_id'),
            'in' => '0',
            'out' => $request->input('quantity'),
            'reference_id' => $request->input('order_ref'),
        ];

        $data = SaleItem::create($input);
        $movements = InventoryMovement::create($movement);

        return redirect()->back();
    }

    public function updateSo($id)
    {
        $qty = SaleItem::where('sales_id',$id)->sum('quantity');
        $price = SaleItem::where('sales_id',$id)->sum('sub_total');
        
        $saleData = DB::table('sales')
                        ->where('id',$id)
                        ->update(['quantity' => $qty, 'total' => $price]);

        return redirect()->route('sales.index');
    }

    public function salesShow($id)
    {
        $sales = Sale::find($id);
        $data = SaleItem::where('sales_id',$id)->get();

        return view('apps.shows.sales',compact('sales','data'));
    }
}
