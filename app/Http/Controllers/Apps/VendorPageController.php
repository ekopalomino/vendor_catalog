<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Contact;
use iteos\Models\ContacDocument;
use iteos\Models\PaymentMethod;
use iteos\Models\PaymentTerm;
use iteos\Models\Product;
use iteos\Models\ProductCategory;
use Auth;

class VendorPageController extends Controller
{
    public function vendorPage()
    {
        $data = Contact::where('user_id',Auth::user()->id)->first();
        $methods = PaymentMethod::pluck('name','id')->toArray();
        $terms = PaymentTerm::pluck('name','id')->toArray();
        return view('apps.pages.vendorProfile',compact('data','methods','terms'));
    }

    public function vendorUpdate(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'mobile' => 'required',
            'email' => 'required|email',
            'billing_address' => 'required',
            'payment_method' => 'required',
            'payment_terms' => 'required',
            'tax' => 'required',
        ]);

        $input = [
            'ref_id' => $request->input('ref_id'),
            'name' => $request->input('name'),
            'phone' => $request->input('phone'),
            'mobile' => $request->input('mobile'),
            'email' => $request->input('email'),
            'billing_address' => $request->input('billing_address'),
            'payment_method' => $request->input('payment_method'),
            'payment_terms' => $request->input('payment_terms'),
            'tax' => $request->input('tax'),
            'tax_no' => $request->input('tax_no'),
            'updated_by' => auth()->user()->name,
        ];

        $data  = Contact::where('user_id',Auth::user()->id)->update($input);
        $log = 'Data Vendor '.($data->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Data Vendor '.($data->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('vendor.index')->with($notification);
    }

    public function documentIndex()
    {
        return view ('apps.pages.vendorDocument');
    }


    public function productIndex()
    {
    	$data = Product::orderBy('category_id','asc')->get();

    	return view('apps.pages.products',compact('data'));
    }

    public function productCreate()
    {
        $categories = ProductCategory::pluck('name','id')->toArray();
        
        return view('apps.input.products',compact('categories'));
    }

    public function productStore(Request $request)
    {
        $this->validate($request, [
            'category_id' => 'required',
        ]);
        $suppliers = Contact::where('user_id',Auth()->user()->id)->first();

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();
            $size = $file->getSize();
            $ext = $file->getClientOriginalExtension();
            $destinationPath = 'products';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'product.'.$extension;
            $uploadSuccess = $request->file('image')
            ->move($destinationPath, $filename);

            $input = [ 
                'category_id' => $request->input('category_id'),
                'supplier_id' => $suppliers->id,
                'image' => $filename,
                'created_by' => auth()->user()->name,
            ];
        } else {
            $input = [
                'category_id' => $request->input('category_id'),
                'supplier_id' => $suppliers->id,
                'created_by' => auth()->user()->name,
            ];
        }
        
        $data = Product::create($input);
        
        $log = 'Produk '.($data->name).' berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('vendor.product')->with($notification);
    }


    public function newOffering()
    {
        
    }
}
