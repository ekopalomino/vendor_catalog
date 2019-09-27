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
use Erp\Models\InternalItems;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;
use DB;
use PDF;

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
        $inventories = Inventory::join('products','products.id','=','inventories.product_id')
                                ->where('products.is_sale','1')
                                ->get();
        
        return view('apps.pages.sales',compact('sales','inventories'));
    }

    public function create()
    {
        
        $customers = Contact::where('type_id','1')->pluck('name','ref_id')->toArray();
        $prod = Product::first();
        $products = Product::join('inventories','inventories.product_id','=','products.id')
                    ->where('products.is_sale','=','1')
                    ->where('inventories.warehouse_id','=','afdcd530-bb5e-462b-8dda-1371b9195903')
                    ->where('inventories.closing_amount','>=',$prod->min_stock)
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
        $reference = InternalTransfer::count();
        $refs = 'IT/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $transfers = InternalTransfer::create([
            'order_ref' => $refs,
            'from_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
            'to_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'created_by' => auth()->user()->id,
            'updated_by' => auth()->user()->id,
        ]);
        /*--Reference Variable--*/
        $items = $request->product_id;
        $quantity = $request->quantity;
        $sale_price = $request->sale_price;
        $uoms = $request->uom_id;
        $sale_id = $data->id;
        $movements = InventoryMovement::where('product_id',$request->product_id)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->orderBy('updated_at','DESC')->first();
        
        $stocks = Inventory::where('product_id',$request->product_id)->get();
        
        foreach($items as $index=>$item) {
            $bases = UomValue::where('id',$uoms[$index])->first();
            if($bases->is_parent == null) {
                $convertion = ($quantity[$index]) * ($bases->value); 
            } else {
                $convertion = $quantity[$index];
            }
            $items = SaleItem::create([
                'sales_id' => $sale_id,
                'product_id' => $item,
                'quantity' => $quantity[$index],
                'sale_price' => $sale_price[$index],
                'sub_total' => ($sale_price[$index]) * ($quantity[$index]),
            ]);
            $moveout = InventoryMovement::where('product_id',$item)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->orderBy('updated_at','DESC')->first();
            $movein = InventoryMovement::where('product_id',$item)->where('warehouse_id','34437a64-ca03-47ff-be0c-63da5814484e')->orderBy('updated_at','DESC')->first();
            $stocks = Inventory::where('product_id',$item)->first();
            $base = Inventory::where('product_id',$item)->where('warehouse_id','34437a64-ca03-47ff-be0c-63da5814484e')->first();

            $itemTransfer = InternalItems::create([
                'mutasi_id' => $transfers->id,
                'product_id' => $item,
                'quantity' => $quantity[$index],
                'uom_id' => $uoms[$index],
            ]);
            
            $inventories = Inventory::updateorCreate([
                    'product_id' => $item,
                    'warehouse_id' => '34437a64-ca03-47ff-be0c-63da5814484e'],[
                    'min_stock' => $stocks->min_stock,
                    'opening_amount' =>  $quantity[$index],
                    'closing_amount' =>  $quantity[$index],
                    'status_id' => '0',
                ]);
            if($base == null) {
                $moveouts = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_id' => $item,
                    'incoming' => '0',
                    'outgoing' => $convertion,
                    'remaining' => ($moveout->remaining) - ($convertion),
                    'warehouse_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
                ]);
                 $moveins = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_id' => $item,
                    'incoming' => $convertion,
                    'outgoing' => '0', 
                    'remaining' => $convertion,
                    'warehouse_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
                ]);
            } else {
                $moveouts = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_id' => $item,
                    'incoming' => '0',
                    'outgoing' => $convertion,
                    'remaining' => ($moveout->remaining) - ($convertion),
                    'warehouse_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
                ]);
                 $moveins = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_id' => $item,
                    'incoming' => $convertion,
                    'outgoing' => '0', 
                    'remaining' => ($movein->remaining) + ($convertion),
                    'warehouse_id' => '34437a64-ca03-47ff-be0c-63da5814484e',
                ]);
            }
            
            $results =  Inventory::where('product_id',$item)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->update([
                'closing_amount' => ($movements->remaining) - ($convertion),
            ]);
            
        }
        
        $qty = SaleItem::where('sales_id',$sale_id)->sum('quantity');
        $price = SaleItem::where('sales_id',$sale_id)->sum('sub_total');
        
        $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update(['quantity' => $qty, 'total' => $price]);
        
        $log = 'Sales Order '.($data->order_ref).' Berhasil Dibuat';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        
        return redirect()->route('sales.index')->with($notification);
    }
 
    public function salesShow($id)
    {
        $sales = Sale::find($id);
        $data = SaleItem::where('sales_id',$id)->get();

        return view('apps.show.sales',compact('sales','data'));
    }

    public function salesPrint($id) 
    {
        $sales = Sale::find($id);
        $data = SaleItem::where('sales_id',$id)->get();

        $pdf = PDF::loadview('apps.print.sales',compact('data','sales'));
        return $pdf->download('SO.pdf');
    }

}
