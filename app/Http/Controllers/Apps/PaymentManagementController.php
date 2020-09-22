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
use iteos\Models\PaymentCicilan;
use iteos\Models\Delivery;
use iteos\Models\DeliveryItem;
use iteos\Models\Reference;
use iteos\Models\Contact;
use iteos\Models\PaymentMethod;
use iteos\Models\PaymentTerm;
use iteos\Models\UomValue;
use Carbon\Carbon;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;
use DB;
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

        return view('apps.pages.invoices',compact('data'));
    }

    public function invoiceMake()
    {
        $sales = Sale::where('status_id','c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                            ->orWhere('status_id','eca81b8f-bfb9-48b9-8e8d-86f4517bc129')
                            ->pluck('order_ref','order_ref')->toArray();
        $deliveries = Delivery::where('status_id','c2fdba02-e765-4ee8-8c8c-3073209ddd26')->pluck('do_ref','do_ref')->toArray();

        return view('apps.input.invoiceSearch',compact('sales','deliveries'));
    }

    public function referenceGet(Request $request)
    {
        if((($request->input('delivery_order')) == null) && (($request->input('sales_order')) == null)) {
            $notification = array (
                'message' => 'Anda Belum Memilih No Order. Silahkan Pilh Terlebih Dahulu',
                'alert-type' => 'error'
            );

            return redirect()->back()->with($notification);
        } elseif(($request->input('delivery_order')) == null) {
            if(($request->input('is_cicil')) == '1') {
                $data = Sale::with('Child')->where('order_ref',$request->input('sales_order'))->first();

                return view('apps.input.invoiceCicil',compact('data'));
            } else {
                $data = Sale::with('Child')->where('order_ref',$request->input('sales_order'))->first();

                return view('apps.input.invoiceNormal',compact('data'));
            }
        } else {
            $data = Delivery::with('Child')->where('do_ref',$request->input('delivery_order'))->first();
                return view('apps.input.invoice',compact('data'));
        }
    }

    public function invoiceStore(Request $request)
    {
        $getMonth  = Carbon::now()->month;
        $getYear = Carbon::now()->year;
        $latestRef = Reference::where('type','9')->where('month',$getMonth)->where('year',$getYear)->count();
        $getClient = Contact::where('id',$request->input('customer_id'))->first();
    
        $refs = 'INV/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->ref_id).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
            $reference = Reference::create([
                'type' => '9',
                'month' => $getMonth,
                'year' => $getYear,
                'ref_no' => $refs,
            ]);

        $getDeliveryCost = Delivery::where('do_ref',$request->input('delivery_order'))->first();
        if(($request->input('terms_no') == NULL)) {
            $invoices = Payment::create([
                'reference_no' => $refs,
                'type_id' => '1',
                'warehouse_ref' => $request->input('delivery_order'),
                'sales_order' => $request->input('sales_order'),
                'contact_id' => $request->input('customer_id'),
                'delivery_cost' => $getDeliveryCost->delivery_cost,
                'subtotal' => array_sum($request->sub_total),
                'amount' => ($request->input('amount')) + ($getDeliveryCost->delivery_cost) + ($request->input('tax_total')),
                'tax_total' => $request->input('tax_total'),
                'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
                'created_by' => auth()->user()->name,
            ]);
            $items = $request->product;
            $quantity = $request->shipment;
            $prices = $request->salesPrint;
            $uoms = $request->uom_id;
            $total = $request->sub_total;
            foreach($items as $index => $item) {
                $details = PaymentItem::create([
                    'payment_id' => $invoices->id,
                    'product_name' => $item,
                    'uom_id' => $uoms[$index],
                    'quantity' => $quantity[$index],
                    'subtotal' => $total[$index],
                ]);
            }
    
            $log = 'Invoice '.($invoices->refs).' Berhasil Dibuat';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Invoice '.($invoices->refs).' Berhasil Dibuat',
                'alert-type' => 'success'
            );
            
            return redirect()->route('invoice.index')->with($notification);
        } else {
            $invoices = Payment::create([
                'reference_no' => $refs,
                'type_id' => '1',
                'warehouse_ref' => $request->input('delivery_order'),
                'sales_order' => $request->input('sales_order'),
                'contact_id' => $request->input('customer_id'),
                'terms_no' => $request->input('terms_no'),
                'total_terms' => $request->input('total_terms'),
                'delivery_cost' => $getDeliveryCost->delivery_cost,
                'subtotal' => array_sum($request->sub_total),
                'amount' => ($request->input('amount')) + ($getDeliveryCost->delivery_cost) + ($request->input('tax_total')),
                'tax_total' => $request->input('tax_total'),
                'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
                'created_by' => auth()->user()->name,
            ]);
            $items = $request->product;
            $quantity = $request->shipment;
            $prices = $request->salesPrint;
            $uoms = $request->uom_id;
            $total = $request->sub_total;
            foreach($items as $index => $item) {
                $details = PaymentItem::create([
                    'payment_id' => $invoices->id,
                    'product_name' => $item,
                    'uom_id' => $uoms[$index],
                    'quantity' => $quantity[$index],
                    'subtotal' => $total[$index],
                ]);
            }
    
            $log = 'Invoice '.($invoices->refs).' Berhasil Dibuat';
            \LogActivity::addToLog($log);
            $notification = array (
                'message' => 'Invoice '.($invoices->refs).' Berhasil Dibuat',
                'alert-type' => 'success'
            );
            
            return redirect()->route('invoice.index')->with($notification);
        }
    }

    public function cicilanCreate($id)
    {
        $data = Payment::with('Child')->find($id);
        $remaining = ($data->subtotal) - ($data->amount);
        
        return view('apps.input.cicilanNew',compact('data','remaining'));
    }

    public function cicilanStore(Request $request,$id)
    {
        $data = Payment::with('Child')->find($id);
        $getMonth  = Carbon::now()->month;
        $getYear = Carbon::now()->year;
        $latestRef = Reference::where('type','9')->where('month',$getMonth)->where('year',$getYear)->count();
        $getClient = Contact::where('id',$request->input('customer_id'))->first();
    
        $refs = 'INV/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->ref_id).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
            $reference = Reference::create([
                'type' => '9',
                'month' => $getMonth,
                'year' => $getYear,
                'ref_no' => $refs,
            ]);
        $invoice = Payment::create([
            'reference_no' => $refs,
            'type_id' => '1',
            'contact_id' => $request->input('customer_id'),
            'terms_no' => ($data->terms_no) + 1,
            'total_terms' => $data->total_terms,
            'sales_order' => $data->sales_order,
            'warehouse_ref' => $data->warehouse_ref,
            'delivery_cost' => '0',
            'subtotal' => $data->subtotal,
            'amount' => $request->input('amount'),
            'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
            'created_by' => auth()->user()->name,
        ]);

        $log = 'Invoice '.($invoices->refs).' Berhasil Dibuat';
        \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Invoice '.($invoices->refs).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        
        return redirect()->route('invoice.index')->with($notification);
    }

    public function cicilanPayment(Request $request,$id)
    {
        $invoices = Payment::find($id);
        $remaining = Payment::where('sales_order',$data->sales_order)->sum('amount');
        
        $payment = $invoices->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
            'updated_by' => auth()->user()->name,
            'payment_made' => Carbon::now(),
        ]);
        $process = Sale::where('order_ref',$invoices->sales_order)->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
        ]);
        $log = 'Cicilan Invoice '.($invoices->refs).' Berhasil Dibayar';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Cicilan Invoice '.($invoices->refs).' Berhasil Dibayar',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function invoicePayment(Request $request,$id)
    {
        $invoices = Payment::find($id);
         
        $payment = $invoices->update([
            'status_id' => '805ec360-ebe1-4872-9798-a69dbac86a29',
            'updated_by' => auth()->user()->name,
            'payment_made' => Carbon::now(),
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
        $source = Payment::with('Child')->find($id);
        dd($source);
        $sales = Sale::join('deliveries','deliveries.order_ref','sales.order_ref')
                        ->where('sales.order_ref',$source->order_ref)
                        ->first();   
        $parent = Sale::where('order_ref',$source->order_ref)->first();
        
        $items = SaleItem::where('sales_id',$parent->id)
                        ->get();
        $total = SaleItem::where('sales_id',$parent->id)->sum('sub_total');
        
        $filename = $source->invoice_ref;
        $pdf = PDF::loadview('apps.print.invoice',compact('source','sales','items','total'))
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
        $data = Payment::where('type_id','2')->orderBy('created_at','DESC')->get();
        
        return view('apps.pages.purchasePayment',compact('data'));
    }

    public function receiptSearch()
    {
        $purchaseOrder = Purchase::where('status','596ae55c-c0fb-4880-8e06-56725b21f6dc')
                                   ->pluck('order_ref','order_ref')
                                   ->toArray();
        $receiptPurchase = ReceivePurchase::where('status_id','314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43')
                                            ->pluck('ref_no','ref_no')
                                            ->toArray();
        
        return view('apps.input.receiptSearch',compact('purchaseOrder','receiptPurchase'));
    }

    public function receiptGet(Request $request)
    {
        if((($request->input('order_ref')) == null) && (($request->input('receipt_ref')) == null)) {
            $notification = array (
                'message' => 'Anda Belum Memilih No Order. Silahkan Pilh Terlebih Dahulu',
                'alert-type' => 'error'
            );
            return redirect()->back()->with($notification);
        } elseif(($request->input('order_ref')) == null) {
            $data = ReceivePurchase::with('Child')->where('ref_no',$request->input('receipt_ref'))->first();
            
            return view('apps.input.receiptPayment',compact('data'));
        } else {
            $data = ReceivePurchase::with('Child')->where('order_ref',$request->input('order_ref'))->first();
            
            return view('apps.input.receiptPayment',compact('data'));
        }
    }

    public function receiptStore(Request $request)
    {
        $getSupplier = Contact::where('id',$request->input('supplier_code'))->first();
        
        $getMonth  = Carbon::now()->month;
        $getYear = Carbon::now()->year;
        $latestRef = Reference::where('type','10')->count();
        $refs = 'FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getSupplier->ref_id).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $reference = Reference::create([
            'type' => '10',
            'ref_no' => $refs,
            'month' => $getMonth,
            'year' => $getYear,
        ]);
        $payment = Payment::create([
            'reference_no' => $refs,
            'type_id' => '2',
            'contact_id' => $getSupplier->id,
            'purchase_order' => $request->input('order_ref'),
            'warehouse_ref' => $request->input('ref_no'),
            'subtotal' => array_sum($request->sub_total),
            'amount' => (array_sum($request->sub_total)) + (array_sum($request->tax)) + $request->input('delivery_cost'),
            'tax_total' => array_sum($request->tax),
            'delivery_cost' => $request->input('delivery_cost'),
            'created_by' => auth()->user()->name,
        ]);
        
        $items = $request->product;
        $orders = $request->pesanan;
        $deliveries = $request->kiriman;
        $uoms = $request->uom_id;
        $subtotal = $request->sub_total;
        $taxes = $request->tax;
        foreach($items as $index=>$item) {
            $details = PaymentItem::create([
                'payment_id' => $payment->id,
                'product_name' => $item,
                'quantity' => $deliveries[$index],
                'uom_id' => $uoms[$index],
                'subtotal' => $subtotal[$index],
                'tax_amount' => $taxes[$index],
            ]);
        }

        $log = 'Pembayaran Untuk'.($refs).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pembayaran Untuk'.($refs).' Berhasil Dibuat',
            'alert-type' => 'success'
        );
        return redirect()->route('purchaseReceipt.index')->with($notification);
    }

    public function receiptPayment(Request $request,$id)
    {
        $invoices = Payment::find($id);
        $payment = $invoices->update([
            'status_id' => 'd6c23804-3b9b-40ca-b050-146af5594f5d',
            'release_by' => auth()->user()->name,
            'payment_made' => Carbon::now(),
        ]);
        $upPurchase = Purchase::where('order_ref',$invoices->order_ref)->update([
            'status' => 'd6c23804-3b9b-40ca-b050-146af5594f5d'
        ]);
        
        $log = 'Pembayaran '.($invoices->reference_id).' Berhasil Dibayar';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Pembayaran '.($invoices->reference_id).' Berhasil Dibayar',
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
        $source = Payment::with('Child')->where('id',$id)->first();
        
        $filename = $source->reference_no;
        $pdf = PDF::loadview('apps.print.purchaseReceipt',compact('source'))
                    ->setPaper('a4','portrait');
        return $pdf->download(''.$filename.'.pdf');
    }
}
