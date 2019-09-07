<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Product;
use Erp\Models\Inventory;
use Erp\Models\InventoryMovement;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class InventoryManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can View Data');
         $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function inventoryIndex()
    {
        $data = Inventory::orderBy('id','asc')->get();

        return view('apps.pages.inventories',compact('data'));
    }

    public function stockCard(Request $request,$id)
    {
        $source = Inventory::where('id',$id)->pluck('product_id');
        $data = InventoryMovement::where('product_id',$source)->paginate(5);
       
        return view('apps.show.stockCard',compact('data'))->renderSections()['content'];
    }

    public function inventoryAdjustIndex()
    {
        $data = Inventory::orderBy('id','asc')->get();
        
        return view('apps.pages.inventoryAdjustment',compact('data'));
    }

    public function makeAdjust($id)
    {
        $data = Inventory::find($id);

        return view('apps.edit.makeAdjust',compact('data'))->renderSections()['content'];
    }

    public function storeAdjust(Request $request,$id)
    {
        $ref = 'ADJUST/'.($request->input('product_id')).'/'.(auth()->user()->id).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $input = [
            'reference_id' => $ref,
            'product_id' => $request->input('product_id'),
            'in' => $request->input('opening_amount'),
            'out' => $request->input('closing_amount'),
            'notes' => $request->input('notes'),
        ];
        $data = InventoryMovement::create($input);
        $source = Inventory::where('product_id',$data->product_id)->update([
            'opening_amount' => $data->in,
            'closing_amount' => $data->out,
        ]);
        return redirect()->back();
    }
    
}
