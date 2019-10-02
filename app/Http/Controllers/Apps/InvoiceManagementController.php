<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\Invoice;
use Carbon\Carbon;
use Auth;

class InvoiceManagementController extends Controller
{
    public function index()
    {
        $orders = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->pluck('order_ref','id')->toArray();
        $data = Invoice::get(); 
        return view('apps.pages.invoices',compact('data','orders'));
    }

    public function invoiceStore(Request $request)
    {
        $this->validate($request, [
            'sales_order' => 'required|unique:sale,order_ref',
        ]);
        $latestRef = Invoice::count();
        $getClient = Sale::where('order_ref',$request->input('sales_order'))->first();
        $refs = 'INV/'.str_pad($latestRef + 1, 4, "0", STR_PAD_LEFT).'/'.($getClient->client_code).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).''; 
        $invoices = Invoice::create([
            'order_ref' => $refs,
            'sales_order' => $request->input('sales_order'),
            'created_by' => auth()->user()->id,
        ]);
        $process = Sale::where('order_ref',$invoices->sales_order)->update([
            'status_id' => '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
        ]);
        
        return redirect()->route('invoice.index');
    }

    public function invoicePayment(Request $request,$id)
    {
        $invoices = Invoice::find($id);
        $payment = $invoices->update([
            'status_id' => 'eca81b8f-bfb9-48b9-8e8d-86f4517bc129',
        ]);

        return redirect()->back();
    }
}
