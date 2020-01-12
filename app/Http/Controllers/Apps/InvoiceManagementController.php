<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\Invoice;
use iteos\Models\Delivery;
use iteos\Models\Purchase;
use Carbon\Carbon;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;
use PDF;

class InvoiceManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can Access Finances');
         $this->middleware('permission:Can Create Finance', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Finance', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Finance', ['only' => ['destroy']]);
    }

    public function index()
    {
        $orders = Sale::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();
        $data = Invoice::get(); 
        return view('apps.pages.invoices',compact('data','orders'));
    }

    public function invoiceStore(Request $request)
    {
        $latestRef = Invoice::count();
        $getClient = Sale::where('id',$request->input('sales_order'))->first();
        $refs = 'INV/FTI/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->client_code).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).''; 
        $invoices = Invoice::create([
            'order_ref' => $refs,
            'sales_order' => $request->input('sales_order'),
            'created_by' => auth()->user()->name,
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
        $invoices = Invoice::find($id);
        $payment = $invoices->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
            'updated_by' => auth()->user()->name,
            'payment_received' => Carbon::now(),
        ]);
        $process = Sale::where('id',$invoices->sales_order)->update([
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
        $source = Invoice::find($id);
        $sales = Sale::where('id',$source->sales_order)
                        ->first();   
        $items = SaleItem::where('sales_id',$sales->order_ref)
                        ->get();
        
        return view('apps.print.invoice',compact('source','sales','items'));
    }

    public function invoicePrint($id)
    {
        $source = Invoice::find($id);
        $sales = Sale::join('deliveries','deliveries.order_ref','sales.order_ref')
                        ->where('sales.id',$source->sales_order)
                        ->first();   
        
        $items = SaleItem::where('sales_id',$source->sales_order)
                        ->get();
        
        $filename = $source->order_ref;
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
        $data = Invoice::where()->get();
        $orders = Purchase::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->pluck('order_ref','id')->toArray();

        return view('apps.pages.receiptIndex',compact('data','orders'));
    }
}
