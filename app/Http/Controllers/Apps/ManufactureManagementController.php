<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Product;
use Erp\Models\ProductBom;
use Erp\Models\Inventory;
use Erp\Models\InventoryMovement;
use Erp\Models\Warehouse;
use Erp\Models\InternalTransfer;
use Erp\Models\Manufacture;
use Erp\Models\ManufactureItem;
use Erp\Models\UomValue;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class ManufactureManagementController extends Controller
{
    public function index()
    {
        return view ('apps.pages.manufacture');
    }

    public function requestIndex()
    {
        $data = Manufacture::where('type_id','1')->get();
        $products = Product::where('is_manufacture','1')->pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.pages.manufactureRequest',compact('data','products','uoms'));
    }

    public function manufactureRequest()
    {
        $products = Product::pluck('name','id')->toArray();
        return view('apps.input.manufactureRequest',compact('products'));
    }

    public function storeRequest(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'quantity' => 'required|numeric',
            'uom_id' => 'required',
        ]);
        $latestOrder = Manufacture::where('type_id','1')->count();
        $ref = 'MR/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $input = [
            'type_id' => '1',
            'order_ref' => $ref,
            'product_id' => $request->input('product_id'),
            'quantity' => $request->input('quantity'),
            'uom_id' => $request->input('uom_id'),
            'status_id' => '5bc79891-e396-4792-a0f3-617ece2a00ce',
            'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
            'created_by' => auth()->user()->id,
        ];

        $data = Manufacture::create($input);

        $details = ProductBom::join('inventories','inventories.product_id','=','product_boms.material_id')
                    ->where('inventories.warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')
                    ->where('product_boms.product_id','=',$data->product_id)
                    ->get();
        foreach($details as $item) {
            $bases = UomValue::where('id',$data->uom_id)->first();
            if($bases->is_parent == null) {
                ManufactureItem::create([
                    'manufacture_id' => $data->id,
                    'item_id' => $item->material_id,
                    'quantity' => ($data->quantity * $bases->value) * $item->quantity,
                    'uom_id' => $item->uom_id,
                ]);
            } else {
                ManufactureItem::create([
                    'manufacture_id' => $data->id,
                    'item_id' => $item->material_id,
                    'quantity' => $data->quantity * $item->quantity,
                    'uom_id' => $item->uom_id,
                ]);
            }
        }

        return redirect()->route('manufacture-request.index');
    }

    public function checkStock($id)
    {
        $details = ManufactureItem::join('inventories','inventories.product_id','=','manufacture_items.item_id')
                    ->where('manufacture_items.manufacture_id','=',$id)
                    ->get();
        
        return view('apps.show.manufactureStock',compact('details'))->renderSections()['content'];
    }

    public function makeManufacture(Request $request,$id)
    {
        $data = Manufacture::find($id);
        $latestOrder = Manufacture::where('type_id','2')->count();
        $ref = 'MO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $details = ManufactureItem::join('inventories','inventories.product_id','=','manufacture_items.item_id')
                    ->where('manufacture_items.manufacture_id','=',$id)
                    ->get();
        $process = Manufacture::find($id)->update([
            'type_id' => '2',
            'order_ref' => $ref,
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
            'updated_by' => auth()->user()->id,
        ]);
        foreach($details as $item) {
            $invmove = InventoryMovement::where('product_id',$item->item_id)->orderBy('updated_at','DESC')->first();
            
            if($item->warehouse_id == 'afdcd530-bb5e-462b-8dda-1371b9195903') {
                $transfer = InternalTransfer::create([
                    'product_id' => $item->item_id,
                    'from_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
                    'to_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                    'amount' => $item->quantity,
                ]);
                $inventories = Inventory::where('product_id',$item->item_id)
                                ->updateorCreate([
                                    'product_id' => $item->item_id,
                                    'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                                    'min_stock' => $item->min_stock,
                                    'opening_amount' => $item->opening_amount + $item->quantity,
                                    'closing_amount' =>'0',
                                    'status_id' => '1',
                                ]);
                $movements = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $inventories->id,
                                'reference_id' => $ref,
                                'product_id' => $item->item_id,
                                'warehouse_id' => $inventories->warehouse_id,
                                'incoming' => $item->quantity,
                                'outgoing' => '0',
                                'remaining' => $invmove->remaining + $item->quantity,
                ]);
            } else {
                $inventories = Inventory::where('product_id',$item->item_id)
                                ->updateorCreate([
                                    'product_id' => $item->item_id,
                                    'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                                    'min_stock' => $item->min_stock,
                                    'opening_amount' => $item->opening_amount + $item->quantity,
                                    'closing_amount' =>'0',
                                ]);
                $movements = InventoryMovement::create([
                                'type' => '4',
                                'inventory_id' => $inventories->id,
                                'reference_id' => $ref,
                                'product_id' => $item->item_id,
                                'warehouse_id' => $inventories->warehouse_id,
                                'incoming' => $item->quantity,
                                'outgoing' => '0',
                                'remaining' => $invmove->remaining + $item->quantity,
                ]);
            }
        }
    }

    public function manufactureDone(Request $request,$id)
    {
        $data = Manufacture::find($id);
        $details = ProductBom::join('inventories','inventories.product_id','=','product_boms.product_id')
                    ->where('product_boms.product_id','=',$data->product_id)
                    ->get();
        $process = Manufacture::find($id)->update([
            'type_id' => '2',
            'order_ref' => $ref,
            'status_id' => '0fb7f4e6-e293-429d-8761-f978dc850a97',
            'updated_by' => auth()->user()->id,
        ]);
        $mainInventory = Inventory::where('product_id',$process->product_id)
                            ->update([
                                ''
                            ]);
    }

    public function getCalculate(Request $request)
    {
        $details = ProductBom::join('inventories','inventories.product_id','=','product_boms.product_id')
                                ->where('product_boms.product_id','=',$request->input('product_id'))
                                ->get();
        $latestOrder = Manufacture::count();
        $ref = 'MO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $mo = Manufacture::create([
            'order_ref' => $ref,
            'product_id' => $request->input('product_id'),
            'uom_id' => $request->input('uom_id'),
            'quantity' => $request->input('quantity'),
            'status_id' => '45e139a2-a423-46ef-8901-d07b25b461a3',
            'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
            'created_by' => auth()->user()->id,
        ]);
        foreach($details as $item) {
            $jumlah = Inventory::where('product_id',$request->input('product_id'))->first();
            $total = $item->quantity * ($request->input('quantity'));
            $req = $jumlah->closing_amount;
           
            if($total >= $req) {
                $data = ManufactureItem::create([
                    'manufacture_id' => $mo->id,
                    'item_id' => $item->material_id,
                    'quantity' => $total,
                    'status_id' => 'f8b26119-fb0c-40ff-85c0-8fb85696f220',
                ]);
            } else {
                $data = ManufactureCalculate::create([
                    'product_id' => $item->product_id,
                    'material_id' => $item->material_id,
                    'quantity' => $total,
                    'status_id' => '533806c2-19dc-4b24-886f-d783a8b448b7',
                ]);
            }
        }
        $data = Manufacture::where('product_id',$data->product_id)->get();
        
        return view('apps.input.manufactureProcess',compact('data','details'));
    }

    public function process(Request $request,$id)
    {
        $data = Manufacture::find($id);
        $updates = [
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
        ];
        $process = $data->update($updates);

        return redirect()->back();

    }

    public function refreshItems(Request $request,$id)
    {
        $items = ManufactureItem::where('manufacture_id',$id)->get();
        $details = ManufactureItem::join('inventories','inventories.product_id','manufacture_items.item_id')
                    ->where('manufacture_id',$id)
                    ->get();
    
        foreach($details as $item) {
            $jumlah = Inventory::where('product_id',$item->material_id)->first();
            $total = $item->quantity * ($request->input('quantity'));
            $req = $jumlah->closing_amount;
           
            if($total < $req) {
                $data = ManufactureItem::update([
                    'status_id' => '533806c2-19dc-4b24-886f-d783a8b448b7',
                ]);
            } else {
                $data = ManufactureCalculate::update([
                    'status_id' => 'f8b26119-fb0c-40ff-85c0-8fb85696f220',
                ]);
            }
        }

        return redirect()->back();

    }

    
}
