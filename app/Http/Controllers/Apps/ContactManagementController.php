<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Contact;
use Erp\Models\PaymentMethod;
use Erp\Models\PaymentTerm;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;

class ContactManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can View Data');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function customerIndex()
    {
    	$data = Contact::where('type_id','1')->get();

    	return view('apps.pages.customerNew',compact('data'));
    }

    public function customerCreate()
    {
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
    	return view('apps.input.customer',compact('methods','terms'));
    }

    public function customerStore(Request $request)
    {
        $this->validate($request, [
            'contact_ref' => 'required',
            'name' => 'required|unique:contacts,name',
            'phone' => 'required',
            'mobile' => 'required',
            'email' => 'required|email',
            'billing_address' => 'required',
            'payment_method' => 'required',
            'payment_term' => 'required',
            'tax' => 'required',
        ]);

        if($request->input('bill_ship') == true) {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('billing_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        } else {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('shipping_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        }
        
        $data = Contact::create($input);
        $log = 'Customer '.($data->name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Customer '.($data->name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('customer.index')->with($notification);
        
    }

    public function customerShow($id)
    {
        $data = Contact::find($id);

        return view('apps.show.customer',compact('data'));
    }

    public function customerEdit($id)
    {
        $clients = Contact::find($id);
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
        return view('apps.edit.customer',compact('clients','methods','terms'));
    }

    public function customerUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'contact_ref' => 'required',
            'name' => 'required|unique:contacts,name',
            'phone' => 'required',
            'mobile' => 'required',
            'email' => 'required|email',
            'billing_address' => 'required',
            'payment_method' => 'required',
            'payment_term' => 'required',
            'tax' => 'required',
        ]);

        if($request->input('bill_ship') == true) {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('billing_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        } else {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('shipping_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        }

        $data  = Contact::find($id)->update($input);
        $log = 'Customer '.($data->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Customer '.($data->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('customer.index')->with($notification);

    }

    public function customerDestroy($id)
    {
        $data = Contact::find($id);
        $log = 'Customer '.($data->name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Customer '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->route('customer.index')->with($notification);
    }

    public function supplierIndex()
    {
    	$data = Contact::where('type_id','2')->get();

    	return view('apps.pages.supplierNew',compact('data'));
    }

    public function supplierCreate()
    {
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
    	return view('apps.input.supplier',compact('methods','terms'));
    }

    public function supplierStore(Request $request)
    {
        $this->validate($request, [
            'contact_ref' => 'required',
            'name' => 'required|unique:contacts,name',
            'phone' => 'required',
            'mobile' => 'required',
            'email' => 'required|email',
            'billing_address' => 'required',
            'payment_method' => 'required',
            'payment_term' => 'required',
            'tax' => 'required',
        ]);

        if($request->input('bill_ship') == true) {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('billing_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        } else {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('shipping_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        }
        
        $data = Contact::create($input);
        $log = 'Supplier '.($data->name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Supplier '.($data->name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('supplier.index')->with($notification);
        
    }

    public function supplierEdit($id)
    {
        $suppliers = Contact::find($id);
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
        return view('apps.edit.suppliers',compact('suppliers','methods','terms'));
    }

    public function supplierUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'contact_ref' => 'required',
            'name' => 'required|unique:contacts,name',
            'phone' => 'required',
            'mobile' => 'required',
            'email' => 'required|email',
            'billing_address' => 'required',
            'payment_method' => 'required',
            'payment_term' => 'required',
            'tax' => 'required',
        ]);

        if($request->input('bill_ship') == true) {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('billing_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        } else {
            $input = [
                'ref_id' => $request->input('contact_ref'),
                'name' => $request->input('name'),
                'company' => $request->input('company'),
                'phone' => $request->input('phone'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'billing_address' => $request->input('billing_address'),
                'shipping_address' => $request->input('shipping_address'),
                'payment_method' => $request->input('payment_method'),
                'payment_terms' => $request->input('payment_term'),
                'tax' => $request->input('tax'),
                'tax_no' => $request->input('tax_no'),
                'created_by' => auth()->user()->id,
                'type_id' => $request->input('type_id'),
            ];
        }

        $data  = Contact::find($id)->update($input);
        $log = 'Supplier '.($data->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Supplier '.($data->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('supplier.index')->with($notification);
    }

    public function supplierDestroy($id)
    {
        $data = Contact::find($id);
        $log = 'Supplier '.($data->name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Supplier '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->route('supplier.index')->with($notification);
    }
}
