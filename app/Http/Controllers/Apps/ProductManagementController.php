<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Product;
use Erp\Models\ProductCategory;
use Erp\Models\ProductBom;
use Erp\Models\UomValue;
use Erp\Models\Warehouse;
use Erp\Models\Contact;
use Erp\Models\Inventory;
use Auth;
use PDF;

class ProductManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can View Data');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function categoryIndex()
    {
        $data = ProductCategory::orderBy('name','asc')->get();

        return view('apps.pages.productCategory',compact('data'));
    }

    public function categoryStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:product_categories,name',
        ]);

        $input = [
            'name' => $request->input('name'),
            'created_by' => auth()->user()->id,
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
            'updated_by' => auth()->user()->id,
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
        $locations = Warehouse::pluck('name','id')->toArray();

        return view('apps.input.products',compact('categories','uoms','vendors','locations'));
    }

    public function productStore(Request $request)
    {
        $this->validate($request, [
            'product_sku' => 'required|unique:products,product_sku',
            'barcode' => 'required|numeric|unique:products,product_barcode',
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
            $destinationPath = 'public/products';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'product.'.$extension;
            $uploadSuccess = $request->file('image')
            ->move($destinationPath, $filename);

            $input = [ 
                'product_sku' => $request->input('product_sku'),
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'image' => $filename,
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'created_by' => auth()->user()->id,
            ];
        } else {
            $input = [
                'product_sku' => $request->input('product_sku'),
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'created_by' => auth()->user()->id,
            ];
        }
        
        $data = Product::create($input);
        $rel = Inventory::create([
            'product_id' => $data->id,
            'warehouse_id' => $data->warehouse_id,
            'min_stock' => $data->min_stock,
            'opening_amount' => 0,
            'closing_amount' => 0,
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

    public function productBarcode($id) 
    {
        $data = Product::find($id);
        
        return view('apps.show.productBarcode',compact('data'))->renderSections()['content'];
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
            'product_sku' => 'required|unique:products,product_sku',
            'barcode' => 'required|numeric|unique:products,product_barcode',
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
            $destinationPath = 'public/products';
            $extension = $file->getClientOriginalExtension();
            $filename=$file_name.'product.'.$extension;
            $uploadSuccess = $request->file('image')
            ->move($destinationPath, $filename);

            $input = [ 
                'product_sku' => $request->input('product_sku'),
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'image' => $filename,
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'updated_by' => auth()->user()->id,
            ];
        } else {
            $input = [
                'product_sku' => $request->input('product_sku'),
                'product_barcode' => $request->input('barcode'),
                'name' => $request->input('name'),
                'category_id' => $request->input('category_id'),
                'uom_id' => $request->input('uom_id'),
                'supplier_id' => $request->input('supplier_id'),
                'warehouse_id' => $request->input('warehouse_id'),
                'min_stock' => $request->input('min_stock'),
                'base_price' => $request->input('base_price'),
                'sale_price' => $request->input('sale_price'),
                'updated_by' => auth()->user()->id,
            ];
        }
        
        $data = Product::find($id)->update($input);
        $log = 'Produk '.($data->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('product.index')->with($notification);
    }

    public function productDestroy($id)
    {
        $data = Product::find($id);
        $log = 'Produk '.($data->name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->route('product.index')->with($notification);
    }

    public function indexBom()
    {
        $data = Product::get();
        
        return view('apps.pages.productBom',compact('data'));
    }

    public function createBom(Request $request,$id)
    {
        $materials = Product::pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();
        $boms = ProductBom::where('product_id',$id)->get();
        $id = Product::where('id',$id)->first();
        
        return view('apps.input.productBom',compact('materials','uoms','boms','id'));
    }

    public function storeBom(Request $request)
    {
        $input = $request->all();
        
        $data = ProductBom::create($input);
        $log = 'Produk BOM'.($data->name).' Berhasil Disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Disimpan',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function editBom($id)
    {
        $data = ProductBom::find($id);
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.edit.productBom',compact('data','uoms'))->renderSections()['content'];
    }

    public function updateBom(Request $request,$id)
    {
        $input = $request->all();

        $data = ProductBom::find($id)->update($input);
        $log = 'Produk BOM'.($data->name).' Berhasil Diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Diubah',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function destroyBom($id)
    {
        $data = ProductBom::find($id);
        $log = 'Produk BOM'.($data->name).' Berhasil Dihapus';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Produk '.($data->name).' Berhasil Dihapus',
            'alert-type' => 'success'
        );
        $data->delete();

        return redirect()->back()->with($notification);
    }
}
