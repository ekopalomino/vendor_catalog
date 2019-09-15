<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Contact;
use Erp\Models\PaymentMethod;
use Erp\Models\PaymentTerm;
use Erp\Models\Purchase;
use Erp\Models\PurchaseItem;
use Erp\Models\Inventory;
use Erp\Models\InventoryMovement;
use Erp\Models\Product;
use Erp\Models\UomValue;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;
use DB;

class PurchaseManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Purchasing');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function index()
    {
        $data = Purchase::orderBy('created_at','ASC')->get();
        return view('apps.pages.purchase',compact('data'));
    }

    public function requestCreate()
    {
        $suppliers = Contact::where('type_id','2')->pluck('name','ref_id')->toArray();
        $products = Product::pluck('products.name','products.id')
                    ->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        return view('apps.input.purchase',compact('suppliers','products','uoms'));
    }

    public function requestStore(Request $request)
    {
        $this->validate($request, [
            'supplier_code' => 'required',
            'delivery_date' => 'required',
        ]);
        $reference = Purchase::where('status','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->count();
        $ref = 'PR/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('supplier_code')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $details = Contact::where('ref_id',$request->input('supplier_code'))->first();

        $input = [
            'order_ref' => $ref,
            'supplier_code' => $request->input('supplier_code'),
            'supplier_id' => $details->id,
            'supplier_name' => $details->name,
            'billing_address' => $details->billing_address,
            'shipping_address' => $details->shipping_address,
            'delivery_date' => $request->input('delivery_date'),
            'created_by' => auth()->user()->id,
        ];
        
        $data = Purchase::create($input);
        $items = $request->product_id;
        $quantity = $request->quantity;
        $purchase_price = $request->purchase_price;
        $purchase_id = $data->id;
        
        foreach($items as $index=>$item) {
            $items = PurchaseItem::create([
                'purchase_id' => $purchase_id,
                'product_id' => $item,
                'quantity' => $quantity[$index],
                'purchase_price' => $purchase_price[$index],
                'sub_total' => ($purchase_price[$index]) * ($quantity[$index]),
            ]);
        }
        $qty = PurchaseItem::where('purchase_id',$purchase_id)->sum('quantity');
        $price = PurchaseItem::where('purchase_id',$purchase_id)->sum('sub_total');
        
        $purchaseData = DB::table('purchases')
                        ->where('id',$purchase_id)
                        ->update(['quantity' => $qty, 'total' => $price]);

        return redirect()->route('purchase.index');
    }

    public function requestForm($id)
    {
        $purchase = Purchase::find($id);
        $data = PurchaseItem::where('purchase_id',$id)->get();
        $id = Purchase::where('id',$id)->first();
        return view('apps.edit.purchaseApprove',compact('purchase','data','id'));
    }

    public function requestApprove(Request $request)
    {
        $reference = Purchase::where('status','458410e7-384d-47bc-bdbe-02115adc4449')->count();
        $ref = 'PO/'.str_pad($reference + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('supplier_code')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $details = Contact::where('ref_id',$request->input('supplier_code'))->first();
        $data = [
            'status' => $request->input('status'),
            'id' => $request->input('purchase_id'),
        ];

        if ($request->input('status') == '458410e7-384d-47bc-bdbe-02115adc4449') {
            $update = Purchase::find($request->input('purchase_id'))->update([
                'status' => $request->input('status'),
                'id' => $request->input('purchase_id'),
                'order_ref' => $ref,
            ]);
        } else {
            $update = Purchase::find($request->input('purchase_id'))->update([
                'status' => $request->input('status'),
            ]);
        };
        
        $update = Purchase::find($request->input('purchase_id'))->update($data);
        
        return redirect()->route('purchase.index');
    }

    public function purchaseReceipt()
    {
        $data = Purchase::where('status','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();

        return view('apps.pages.purchaseReceipt',compact('data'));
    }
    

    

    
}
