<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Product;
use iteos\Models\ProductCategory;
use iteos\Models\ProductBom;
use iteos\Models\UomValue;
use iteos\Models\Warehouse;
use iteos\Models\Contact;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use Auth;
use PDF;
use File;

class ProductManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Products');
        $this->middleware('permission:Can Create Product', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Product', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Product', ['only' => ['destroy']]);
    }

    public function categoryIndex()
    {
        $data = ProductCategory::orderBy('name','asc')->get();
        $parent = ProductCategory::pluck('id','name')->toArray();

        return view('apps.pages.productCategory',compact('data','parent'));
    }

    public function categoryStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:product_categories,name',
        ]);

        $input = [
            'name' => $request->input('name'),
            'parent_id' => $request->input('parent_id'),
            'created_by' => auth()->user()->name,
        ];
        $data = ProductCategory::create($input);
        $log = 'Kategori Produk '.($data->name).' Berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Produk '.($data->name).' Berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('product-cat.index')->with($notification);
    }

    public function categoryEdit($id)
    {
        $data = ProductCategory::find($id);

        return view('apps.edit.productCategory',compact('data'))->renderSections()['content'];
    }

    public function categoryUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required|unique:product_categories,name',
        ]);

        $input = [
            'name' => $request->input('name'),
            'updated_by' => auth()->user()->name,
        ];
        $data = ProductCategory::find($id)->update($input);
        $log = 'Kategori Produk '.($input->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Produk '.($input->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('product-cat.index')->with($notification);
    }

    public function categoryDestroy($id)
    {
        $data = ProductCategory::find($id);
        $log = 'Kategori Produk '.($data->name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Kategori Produk '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->route('product-cat.index')->with($notification);
    }

    public function productIndex()
    {
    	$data = Product::orderBy('name','asc')->get();

    	return view('apps.pages.products',compact('data'));
    }

    public function productCreate()
    {
        $categories = ProductCategory::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $vendors = Contact::where('type_id','2')->pluck('name','id')->toArray();
         
        return view('apps.input.products',compact('categories','uoms','vendors'));
    }

    public function productStore(Request $request)
    {
        $this->validate($request, [
            'barcode' => 'required',
            'name' => 'required|unique:products,name',
            'category_id' => 'required',
            'uom_id' => 'required',
            'image' => 'nullable|file|image',
            'min_stock' => 'required|numeric',
            'base_price' => 'required|numeric',
            'sale_price' => 'required|numeric',
        ]);

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
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'image' => $filename,
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'is_manufacture' => $request->input('is_manufacture'),
                'is_sale' => $request->input('is_sale'),
                'created_by' => auth()->user()->name,
            ];
        } else {
            $input = [
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'is_manufacture' => $request->input('is_manufacture'),
                'is_sale' => $request->input('is_sale'),
                'created_by' => auth()->user()->name,
            ];
        }
        
        $data = Product::create($input);
        $stocks = Inventory::create([
            'product_id' => $data->id,
            'product_name' => $data->name,
            'warehouse_name' => 'Gudang Utama',
            'min_stock' => $data->min_stock,
            'opening_amount' => '0',
            'closing_amount' => '0', 
        ]);
        $log = 'Produk '.($data->name).' berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('product.index')->with($notification);
    }

    public function productShow($id)
    {
        $product = Product::find($id);
        $boms = ProductBom::where('product_id',$id)->get();

        return view('apps.show.products',compact('product','boms'));
    }

    public function productPdf($id)
    {
        $product = Product::find($id);
        $boms = ProductBom::where('product_id',$id)->get();

        $pdf = PDF::loadview('apps.show.products',compact('product','boms'));
        return $pdf->download('product-detail.pdf');
    }
 
    public function productBarcode() 
    {
        $data = Product::where('active','2b643e21-a94c-4713-93f1-f1cbde6ad633')->get();
        
        return view('apps.pages.productBarcode',compact('data'));
    }
 
    public function barcodePdf()
    {
        $data = Product::where('active','2b643e21-a94c-4713-93f1-f1cbde6ad633')->orderBy('name','ASC')->get();

        $pdf = PDF::loadview('apps.print.barcode',compact('data'));
        return $pdf->download('barcode.pdf');
    }

    public function productEdit($id)
    {
        $data = Product::find($id);
        $categories = ProductCategory::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $vendors = Contact::where('type_id','2')->pluck('name','id')->toArray();
        $locations = Warehouse::pluck('name','id')->toArray();

        return view('apps.edit.products',compact('data','categories','uoms','vendors','locations'));
    }

    public function productUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'product_barcode' => 'required',
            'name' => 'required',
            'category_id' => 'required',
            'uom_id' => 'required',
            'image' => 'nullable|file|image',
            'min_stock' => 'required|numeric',
            'base_price' => 'required|numeric',
            'sale_price' => 'required|numeric',
        ]);

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
                'product_barcode' => $request->input('product_barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'image' => $filename,
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'is_manufacture' => $request->input('is_manufacture'),
                'is_sale' => $request->input('is_sale'),
                'updated_by' => auth()->user()->name,
            ];
        } else {
            $input = [
                'product_barcode' => $request->input('product_barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'is_manufacture' => $request->input('is_manufacture'),
                'is_sale' => $request->input('is_sale'),
                'updated_by' => auth()->user()->name,
            ];
        }
        
        $data = Product::find($id)->update($input);
        $log = 'Produk '.($request->input('name')).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($request->input('name')).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('product.index')->with($notification);
    }

    public function productDestroy($id)
    {
        $data = Product::find($id);
        $invent = Product::where('id',$id)->update([
            'active' => '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a'
        ]);
        $log = 'Produk '.($data->name).' Berhasil Dinonaktifkan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Dinonaktifkan',
            'alert-type' => 'success'
        );
        
        return redirect()->route('product.index')->with($notification);
    }

    public function indexBom()
    {
        $data = Product::get();
        
        return view('apps.pages.productBom',compact('data'));
    }

    public function createBom(Request $request,$id)
    {
        $materials = Product::pluck('name','name')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $boms = ProductBom::where('product_id',$id)->get();
        $id = Product::where('id',$id)->first();
        
        return view('apps.input.productBom',compact('materials','uoms','boms','id'));
    }

    public function storeBom(Request $request)
    {
        $this->validate($request, [
            'material_name' => 'required',
            'quantity' => 'required|numeric',
            'uom_id' => 'required',
        ]);

        $input = $request->all();
        
        $data = ProductBom::create($input);
        $log = 'Bill of Material'.($data->name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Bill of Material'.($data->name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function editBom($id)
    {
        $data = ProductBom::find($id);
        $materials = Product::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.edit.productBom',compact('data','materials','uoms'))->renderSections()['content'];
    }

    public function updateBom(Request $request,$id)
    {
        $input = $request->all();

        $data = ProductBom::find($id)->update($input);
        $log = 'Bill of Material Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Bill of Material Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function destroyBom($id)
    {
        $data = ProductBom::find($id);
        $log = 'Bill of Material Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Bill of Material Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->back()->with($notification);
    }
}
