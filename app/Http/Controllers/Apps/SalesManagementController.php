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

    public function create()
    {
        $customers = Contact::where('type_id','1')->pluck('name','ref_id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        
        return view('apps.input.sales',compact('customers','uoms'));
    }

    public function searchProduct(Request $request)
    {
        $search = $request->get('product');
        
        $result = Product::join('inventories','inventories.product_id','=','products.id')
                            ->where('products.is_sale','=','1')
                            ->where('products.name','LIKE','%'.$search.'%')
                            ->select('products.name','products.name')
                            ->get();
        
        return response()->json($result);
    } 

    public function storeSales(Request $request)
    {
        $latestOrder = Sale::where('status_id','!=','af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8')->count();
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
            'delivery_date' => $request->input('delivery_date'),
            'created_by' => auth()->user()->name,
        ];
        
        $data = Sale::create($input);
        $items = $request->product;
        $quantity = $request->quantity;
        $sale_price = $request->sale_price;
        $uoms = $request->uom_id;
        $sale_id = $data->id;
        $discounts = $request->discount;
        foreach($items as $index=>$item) {
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
        
        return view('apps.edit.sales',compact('data','uoms','items','customers'));
    }

    public function updateSales(Request $request,$id)
    {
        $data  = Sale::find($id);
        $products = SaleItem::where('sales_id',$id)->delete();
        $items = $request->product_name;
        $quantity = $request->kuantitas;
        $sale_price = $request->sale_price;
        $uoms = $request->uom_id;
        $sale_id = $data->id;
        $discounts = $request->discount;
        foreach($items as $index=>$item) {
            $products = SaleItem::create([
                'sales_id' => $id,
                'product_name' => $item,
                'quantity' => $quantity[$index],
                'uom_id' => $uoms[$index],
                'sale_price' => $sale_price[$index],
                'sub_total' => (($sale_price[$index]) * ($quantity[$index])) - ($discounts[$index]),
                'discount' => (($discounts[$index]) * ($quantity[$index])),
                ]);
        }
     
        $log = 'Sales Order '.($data->order_ref).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Sales Order '.($data->order_ref).' Berhasil Diubah',
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
        $reference = InternalTransfer::count();
        $refs = 'IT/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $transfers = InternalTransfer::create([
            'order_ref' => $refs,
            'from_wh' => 'Gudang Utama',
            'to_wh' => 'Gudang Pengiriman',
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'created_by' => auth()->user()->name,
            'updated_by' => auth()->user()->name,
        ]);
        $items = SaleItem::where('sales_id',$id)->get();
        
        foreach($items as $index=>$item) {
            $bases = UomValue::where('id',$item->uom_id)->first();
            if($bases->is_parent == null) {
                $convertion = ($item->quantity) * ($bases->value); 
            } else {
                $convertion = $item->quantity;
            }
            $movements = InventoryMovement::where('product_name',$item->product_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $stocks = Inventory::where('product_name',$item->product_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $moveout = InventoryMovement::where('product_name',$item->product_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $movein = InventoryMovement::where('product_name',$item->product_name)->where('warehouse_name','Gudang Pengiriman')->orderBy('updated_at','DESC')->first();
            $base = Inventory::where('product_name',$item->product_name)->where('warehouse_name','Gudang Pengiriman')->orderBy('updated_at','DESC')->first();

            $itemTransfer = InternalItems::create([
                'mutasi_id' => $transfers->id,
                'product_name' => $item->product_name,
                'quantity' => $convertion,
                'uom_id' => $item->uom_id,
            ]);
            $moveouts = InventoryMovement::create([
                'type' => '4',
                'inventory_id' => $stocks->id,
                'reference_id' => $data->order_ref,
                'product_name' => $item->product_name,
                'incoming' => '0',
                'outgoing' => $convertion,
                'remaining' => ($moveout->remaining) - ($convertion),
                'warehouse_name' => 'Gudang Utama',
            ]);
             $moveins = InventoryMovement::create([
                'type' => '2',
                'inventory_id' => $stocks->id,
                'reference_id' => $data->order_ref,
                'product_name' => $item->product_name,
                'incoming' => $convertion,
                'outgoing' => '0', 
                'remaining' => $convertion,
                'warehouse_name' => 'Gudang Pengiriman',
            ]);
            /* if($base == null) {
                $inventories = Inventory::create([
                    'product_id' => $item->product_id,
                    'product_name' => $item->product_name,
                    'warehouse_name' => 'Gudang Pengiriman',
                    'min_stock' => '0',
                    'opening_amount' =>  $convertion,
                    'closing_amount' =>  $convertion,
                ]);
                $moveouts = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $item->product_name,
                    'incoming' => '0',
                    'outgoing' => $convertion,
                    'remaining' => ($moveout->remaining) - ($convertion),
                    'warehouse_name' => 'Gudang Utama',
                ]);
                 $moveins = InventoryMovement::create([
                    'type' => '2',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $item->product_name,
                    'incoming' => $convertion,
                    'outgoing' => '0', 
                    'remaining' => $convertion,
                    'warehouse_name' => 'Gudang Pengiriman',
                ]);
            } else {
                $inventories = Inventory::where('product_name',$item->product_name)->where('warehouse_id','Gudang Pengiriman')->orderBy('updated_at','DESC')->first();
                $inventories->update([
                    'opening_amount' =>  $convertion,
                    'closing_amount' =>  ($base->closing_amount) + ($convertion),
                ]);
                $moveouts = InventoryMovement::create([
                    'type' => '4',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $item->product_name,
                    'incoming' => '0',
                    'outgoing' => $convertion,
                    'remaining' => ($moveout->remaining) - ($convertion),
                    'warehouse_name' => 'Gudang Utama',
                ]);
                 $moveins = InventoryMovement::create([
                    'type' => '2',
                    'inventory_id' => $inventories->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $item->product_name,
                    'incoming' => $convertion,
                    'outgoing' => '0', 
                    'remaining' => ($movein->remaining) + ($convertion),
                    'warehouse_name' => 'Gudang Pengiriman',
                ]);
            } */
            $results =  Inventory::where('product_name',$item->product_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $results->update([
                'closing_amount' => ($results->closing_amount) - ($convertion),
            ]);
            
        }
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

        $pdf = PDF::loadview('apps.print.salesOrder',compact('data','sales'));
        return $pdf->download('SO.pdf');
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

}
