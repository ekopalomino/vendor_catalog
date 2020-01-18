<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\Purchase;
use iteos\Models\PurchaseItem;
use iteos\Models\ReceivePurchase;
use iteos\Models\ReceivePurchaseItem;
use iteos\Models\Payment;
use iteos\Models\PaymentItem;
use iteos\Models\Delivery;
use iteos\Models\Reference;
use iteos\Models\Contact;
use iteos\Models\PaymentMethod;
use iteos\Models\PaymentTerm;
use iteos\Models\UomValue;
use Carbon\Carbon;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;
use PDF;

class PaymentManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can Access Finances');
         $this->middleware('permission:Can Create Finance', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Finance', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Finance', ['only' => ['destroy']]);
    }

    public function invoiceIndex()
    {
        $data = Payment::where('type_id','1')->get();
        $sales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')
                       ->pluck('order_ref','order_ref')->toArray();
        $deliveries = Delivery::join('sales','sales.order_ref','deliveries.order_ref')
                                ->where('sales.status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')
                                ->pluck('do_ref','do_ref')
                                ->toArray();

        return view('apps.pages.invoices',compact('data','sales','deliveries'));
    }

    public function invoicePoStore(Request $request) 
    {
        $latestRef = Reference::where('type','9')->count();
        $getClient = Sale::where('order_ref',$request->input('order_ref'))->first();
        $refs = 'INV/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->client_code).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).''; 
        $invoices = Payment::create([
            'reference_id' => $refs,
            'type_id' => '1',
            'sales_order' => $request->input('order_ref'),
            'created_by' => auth()->user()->name,
        ]);
        $refs = Reference::create([
            'type' => '9',
            'ref_no' => $ref,
        ]);
        $process = Sale::where('order_ref',$invoices->order_ref)->update([
            'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
        ]);

        $log = 'Invoice '.($invoices->refs).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Invoice '.($invoices->refs).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        
        return redirect()->route('invoice.index')->with($notification);
    }

    public function invoiceDoStore(Request $request) 
    {
        $latestRef = Reference::where('type','9')->count();
        $getDelivery = Delivery::where('id',$request->input('do_ref'))->first();
        $getClient = Sale::where('order_ref',$getDelivery->order_ref)->first();
        $refs = 'INV/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->client_code).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).''; 
        $invoices = Payment::create([
            'reference_id' => $refs,
            'type_id' => '1',
            'sales_order' => $request->input('do_ref'),
            'created_by' => auth()->user()->name,
        ]);
        $refs = Reference::create([
            'type' => '9',
            'ref_no' => $ref,
        ]);
        $process = Sale::where('id',$invoices->sales_order)->update([
            'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
        ]);

        $log = 'Invoice '.($invoices->refs).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Invoice '.($invoices->refs).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        
        return redirect()->route('invoice.index')->with($notification);
    }

    public function invoicePayment(Request $request,$id)
    {
        $invoices = Payment::find($id);
        $payment = $invoices->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
            'updated_by' => auth()->user()->name,
            'payment_received' => Carbon::now(),
        ]);
        $process = Sale::where('order_ref',$invoices->sales_order)->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
        ]);
        $log = 'Invoice '.($invoices->refs).' Berhasil Dibayar';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Invoice '.($invoices->refs).' Berhasil Dibayar',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function invoiceShow($id)
    {
        $source = Payment::find($id);
        $sales = Sale::where('id',$source->sales_order)
                        ->first();   
        $items = SaleItem::where('sales_id',$sales->order_ref)
                        ->get();
        
        return view('apps.print.invoice',compact('source','sales','items'));
    }

    public function invoicePrint($id)
    {
        $source = Payment::find($id);
        $sales = Sale::join('deliveries','deliveries.order_ref','sales.order_ref')
                        ->where('sales.order_ref',$source->sales_order)
                        ->first();   
        $parent = Sale::where('order_ref',$source->sales_order)->first();
        $items = SaleItem::where('sales_id',$parent->id)
                        ->get();
        
        $filename = $source->reference_id;
        $pdf = PDF::loadview('apps.print.invoice',compact('source','sales','items'))
                    ->setPaper('a4','portrait');
        return $pdf->download(''.$filename.'.pdf');
    }

    public function salesPrint($id) 
    {
        $sales = Sale::find($id);
        $data = SaleItem::where('sales_id',$id)->get();

        $pdf = PDF::loadview('apps.print.sales',compact('data','sales'));
        return $pdf->download('SO.pdf');
    }

    public function receiptIndex()
    {
        $data = Payment::orderBy('created_at','DESC')->get();
        
        return view('apps.pages.purchasePayment',compact('data'));
    }

    public function receiptMake()
    {
        $suppliers = Contact::where('type_id','2')->pluck('name','ref_id')->toArray();
        $refs = ReceivePurchase::pluck('ref_no','id')->toArray();
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.input.receiptPayment',compact('suppliers','refs','methods','terms','uoms'));
    }

    public function receiptManualStore(Request $request)
    {
        $this->validate($request,[
            'supplier_code' => 'required',
            'pay_method' => 'required',
            'pay_term' => 'required',
            'terms_no' => 'required',
            'tax' => 'required',
            'amount' => 'required|numeric'
        ]);

        $latestRef = Reference::where('type','10')->count();
        $refs = 'FIN/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($request->input('supplier_code')).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $reference = Reference::create([
            'type' => '10',
            'ref_no' => $refs,
        ]);
        $getOrder = ReceivePurchase::where('id',$request->input('pr_ref'))->first();
        $getPurchase = Purchase::where('order_ref',$getOrder->order_ref)->first();
        $remaining = ($getPurchase->total) - ($request->input('amount'));
        if($remaining == '0') {
            $status = '00c4df56-a91b-45c6-a59c-e02577442072';
        } else {
            $status = 'cc040768-2b4f-48df-867f-7da18b749e61';
        }
        if($request->input('tax') == 'yes') {
            $tax_amount = ($request->input('amount')) * (0.1);
            $payments = Payment::create([
                'reference_id' => $refs,
                'order_ref' => $getOrder->order_ref,
                'purchase_amount' => $getPurchase->total,
                'supplier_code' => $request->input('supplier_code'),
                'pay_method' => $request->input('pay_method'),
                'pay_term' => $request->input('pay_term'),
                'terms_no' => $request->input('terms_no'),
                'tax_id' => $request->input('tax_id'),
                'tax_amount' => $tax_amount,
                'pay_amount' => $request->input('amount'),
                'pay_left' =>  $remaining,
                'status_id' => $status,
                'created_by' => auth()->user()->name,
            ]);
        } else {
            $payments = Payment::create([
                'reference_id' => $refs,
                'order_ref' => $getOrder->order_ref,
                'supplier_code' => $request->input('supplier_code'),
                'pay_method' => $request->input('pay_method'),
                'pay_term' => $request->input('pay_term'),
                'terms_no' => $request->input('terms_no'),
                'purchase_amount' => $getPurchase->total,
                'pay_amount' => $request->input('amount'),
                'pay_left' =>  $remaining,
                'status_id' => $status,
                'created_by' => auth()->user()->name,
            ]);
        }
        $items = $request->product;
        $orders = $request->pesanan;
        $received = $request->dikirim;
        $uoms = $request->uom_id;
        foreach($items as $index=>$item) {
            $payItem = PaymentItem::create([
                'payment_id' => $payments->id,
                'product_name' => $item,
                'product_amount' => $received[$index],
                'uom_id' => $uoms[$index],
            ]);
        } 
        $log = 'Pembayaran '.($refs).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pembayaran '.($refs).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        return redirect()->route('purchaseReceipt.index')->with($notification);
    }

    public function receiptPayment(Request $request,$id)
    {
        $invoices = Payment::find($id);
        $payment = $invoices->update([
            'status_id' => 'd6c23804-3b9b-40ca-b050-146af5594f5d',
            'updated_by' => auth()->user()->name,
            'payment_made' => Carbon::now(),
        ]);
        $upPurchase = Purchase::where('order_ref',$invoices->sales_order)->update([
            'status_id' => 'd6c23804-3b9b-40ca-b050-146af5594f5d'
        ]);
        
        $log = 'Pembayaran '.($invoices->refs).' Berhasil Dibayar';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pembayaran '.($invoices->refs).' Berhasil Dibayar',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function receiptShow($id)
    {
        $source = Payment::find($id);
        $purchases = Purchase::where('id',$source->order_ref)
                        ->first();   
        $items = PurchaseItem::where('purchase_id',$purchases->id)
                        ->get();
        
        return view('apps.show.purchaseReceipt',compact('source','purchases','items'));
    }

    public function receiptPrint($id)
    {
        $source = Payment::find($id);
        $purchases = Purchase::where('id',$source->order_ref)
                        ->first();   
        $items = PurchaseItem::where('purchase_id',$purchases->id)
                        ->get();
        
        $filename = $source->order_ref;
        $pdf = PDF::loadview('apps.print.purchaseReceipt',compact('source','purchases','items'))
                    ->setPaper('a4','portrait');
        return $pdf->download(''.$filename.'.pdf');
    }
}
