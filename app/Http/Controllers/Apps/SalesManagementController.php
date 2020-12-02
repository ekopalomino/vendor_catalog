<?php 

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use iteos\Models\Product;
use iteos\Models\UomValue;
use iteos\Models\Contact;
use iteos\Models\PaymentMethod;
use iteos\Models\PaymentTerm;
use iteos\Models\Warehouse;
use iteos\Models\InternalTransfer;
use iteos\Models\InternalItems;
use iteos\Models\Reference;
use iteos\Models\Delivery;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Illuminate\Support\Facades\Schema;
use Auth;
use DB;
use PDF;
use File;

class SalesManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Sales');
        $this->middleware('permission:Can Create Sales', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Sales', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Sales', ['only' => ['destroy']]);
    }
    
    public function index()
    {
        $sales = Sale::orderBy('updated_at','desc')->get();
        $inventories = Inventory::join('products','products.id','=','inventories.product_id')
                                ->where('products.is_sale','1')
                                ->where('inventories.warehouse_name','Gudang Utama')
                                ->get();
        
        return view('apps.pages.sales',compact('sales','inventories'));
    }

    public function posIndex()
    {
        return view('apps.pages.pointOfSale');
    }

    public function create()
    {
        $customers = Contact::where('type_id','1')->get();
        $uoms = UomValue::pluck('name','id')->toArray();
        $products = Product::join('inventories','inventories.product_id','=','products.id')
                            ->where('products.is_sale','=','1')
                            ->where('warehouse_name','Gudang Utama')
                            ->select('products.name','products.name')
                            ->get();

        return view('apps.input.sales',compact('customers','uoms','products'));
    }

    public function storeSales(Request $request)
    {
        $getMonth = Carbon::now()->month;
        $getYear = Carbon::now()->year;
        $latestOrder = Reference::where('type','1')->where('month',$getMonth)->where('year',$getYear)->count();
        $ref = 'SO/FTI/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('client_code')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';

        $details = Contact::where('ref_id',$request->input('client_code'))->first();
        $input = [
            'order_ref' => $ref,
            'client_code' => $request->input('client_code'),
            'client_id' => $details->id,
            'client_name' => $details->name,
            'delivery_date' => $request->input('delivery_date'),
            'billing_address' => $details->billing_address,
            'shipping_address' => $details->shipping_address,
            'customer_po' => $request->input('customer_po'),
            'description' => $request->input('description'),
            'delivery_date' => $request->input('delivery_date'),
            'created_by' => auth()->user()->name,
        ];
        $refs = Reference::create([
            'type' => '1',
            'month' => $getMonth,
            'year' => $getYear,
            'ref_no' => $ref,
        ]);
        
        $data = Sale::create($input);
        $items = $request->product;
        $quantity = $request->quantity;
        $sale_price = $request->sale_price;
        $uoms = $request->uom_id;
        $sale_id = $data->id;
        $discounts = $request->discount;
        foreach($items as $index=>$item) {
            if (isset($item)) {
                $names = Product::where('name',$item)->first();
                $items = SaleItem::create([
                    'sales_id' => $sale_id,
                    'product_id' => $names->id,
                    'product_name' => $item,
                    'quantity' => $quantity[$index],
                    'uom_id' => $uoms[$index],
                    'sale_price' => $sale_price[$index],
                    'sub_total' => (($sale_price[$index]) * ($quantity[$index])) - (($discounts[$index]) * ($quantity[$index])),
                    'discount' => $discounts[$index],
                ]);
            }
        }

        $qty = SaleItem::where('sales_id',$sale_id)->sum('quantity');
        $price = SaleItem::where('sales_id',$sale_id)->sum('sub_total');
        $disc = SaleItem::where('sales_id',$sale_id)->sum('discount');
        $tax = '10';
        $subtotal = ($price) - ($disc);
        if($details->tax == '1') {
            $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update([
                            'quantity' => $qty,
                            'tax' => ($subtotal) * ($tax/100),
                            'total' => ($subtotal) + (($subtotal)*($tax/100)), 
                            ]);
        } else {
            $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update(['quantity' => $qty, 'total' => $price]);
        }
              
        $log = 'Sales Order '.($data->order_ref).' Berhasil Disubmit';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Disubmit',
            'alert-type' => 'success'
        );
        return redirect()->route('sales.index')->with($notification);
    }

    public function editSales($id)
    {
        $data = Sale::find($id);
        $items = SaleItem::where('sales_id',$id)->get();
        $customers = Contact::where('type_id','1')->pluck('name','ref_id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $products = Product::join('inventories','inventories.product_id','=','products.id')
                            ->where('products.is_sale','=','1')
                            ->where('warehouse_name','Gudang Utama')
                            ->select('products.name','products.name')
                            ->get();
        
        return view('apps.edit.sales',compact('data','uoms','items','customers','products'));
    }

    public function updateSales(Request $request,$id)
    {
        $data  = Sale::find($id);
        $products = SaleItem::where('sales_id',$id)->delete();
        $details = Contact::where('ref_id',$request->input('client_code'))->first();
        $items = $request->product_name;
        $quantity = $request->kuantitas;
        $sale_price = $request->sale_price;
        $uoms = $request->uom_id;
        $sale_id = $data->id;
        $discounts = $request->discount;
        foreach($items as $index=>$item) {
            if($item != null) {
                $names = Product::where('name',$item)->first();
                $products = SaleItem::create([
                    'sales_id' => $id,
                    'product_id' => $names->id,
                    'product_name' => $item,
                    'quantity' => $quantity[$index],
                    'uom_id' => $uoms[$index],
                    'sale_price' => $sale_price[$index],
                    'sub_total' => (($sale_price[$index]) * ($quantity[$index])) - (($discounts[$index]) * ($quantity[$index])),
                    'discount' => $discounts[$index],
                ]);
            }
        }
        $qty = SaleItem::where('sales_id',$sale_id)->sum('quantity');
        $price = SaleItem::where('sales_id',$sale_id)->sum('sub_total');
        $disc = SaleItem::where('sales_id',$sale_id)->sum('discount');
        $tax = '10';
        $subtotal = ($price) - ($disc);
        if($details->tax == '1') {
            $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update([
                            'quantity' => $qty,
                            'tax' => ($subtotal) * ($tax/100),
                            'total' => ($subtotal) + (($subtotal)*($tax/100)),
                            'delivery_date' => $request->input('delivery_date'),
                            'change_note' => $request->input('notes'),
                            ]);
        } else {
            $saleData = DB::table('sales')
                        ->where('id',$sale_id)
                        ->update([
                            'quantity' => $qty,
                            'total' => $price,
                            'delivery_date' => $request->input('delivery_date'),
                            'change_note' => $request->input('notes')
                        ]);
        }
     
        $log = 'Sales Order '.($data->order_ref).' Berhasil Diubah Dengan Catatan '.($request->input('notes')).' ';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Diubah Dengan Catatan '.($request->input('notes')).' ',
            'alert-type' => 'success'
        );
        return redirect()->route('sales.index')->with($notification);
    }

    public function processSales(Request $request,$id)
    {
        $data = Sale::find($id);
        $approve = $data->update([
            'status_id' => '458410e7-384d-47bc-bdbe-02115adc4449',
            'updated_by' => auth()->user()->name,
        ]);
        
        $log = 'Sales Order '.($data->order_ref).' Berhasil Diproses';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Diproses',
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
        $filename = $sales->order_ref;
        dd($data);
        $pdf = PDF::loadview('apps.print.salesNew',compact('data','sales'));
        
        return $pdf->download(''.$filename.'.pdf');
    }

    public function salesBarcode() 
    {
        $data = Sale::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->get();
        
        return view('apps.pages.salesBarcode',compact('data'));
    }

    public function salesBarcodePdf()
    {
        $data = Sale::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->get();

        $pdf = PDF::loadview('apps.print.salesBarcode',compact('data'));
        return $pdf->download('sales-barcode.pdf');
    }

    public function rejectedSale($id)
    {
        $data = Sale::find($id);
        $reject = $data->update([
            'status_id' => 'af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8',
            'updated_by' => auth()->user()->name,
        ]);
        $log = 'Sales Order '.($data->order_ref).' Berhasil Ditolak';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Ditolak',
            'alert-type' => 'success'
        );
        return redirect()->route('sales.index')->with($notification);
    }

    public function closeSale(Request $request,$id)
    {
        $data = Sale::find($id);
        $delivery = Delivery::where('order_ref',$data->order_ref)->first();
        $closing = $data->update([
            'status_id' => '6d32841b-2606-43a5-8cf7-b77291ddbfbb',
            'closing_date' => Carbon::now()
        ]);

        $endDeliver = $delivery->update([
            'status_id' => '6d32841b-2606-43a5-8cf7-b77291ddbfbb'
        ]);

        $log = 'Sales Order '.($data->order_ref).' Berhasil Ditutup';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Ditutup',
            'alert-type' => 'success'
        );
        return redirect()->route('sales.index')->with($notification);
    }

    public function returSale()
    {
        $data = Sale::where('status_id','')->orderBy('created_at','DESC')->get();

        return view('apps.pages.returSale',compact('data'));
    }

}
