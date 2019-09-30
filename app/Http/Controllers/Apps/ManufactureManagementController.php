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
use Erp\Models\InternalItems;
use Erp\Models\Manufacture;
use Erp\Models\ManufactureItem;
use Erp\Models\WorkItem;
use Erp\Models\UomValue;
use Erp\Models\Sale;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class ManufactureManagementController extends Controller
{
    public function index()
    {
        $data = Manufacture::where('status_id','!=','5bc79891-e396-4792-a0f3-617ece2a00ce')->get();
       
        return view ('apps.pages.manufacture',compact('data'));
    }

    public function requestIndex()
    {
        $data = Manufacture::where('status_id','5bc79891-e396-4792-a0f3-617ece2a00ce')->get();
        
        return view('apps.pages.manufactureRequest',compact('data'));
    }

    public function manufactureRequest()
    {
        $products = Product::pluck('name','id')->toArray();
        return view('apps.input.manufactureRequest',compact('products'));
    }

    public function createRequest()
    {
        $orders  = Sale::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->pluck('order_ref','id')->toArray();
        $products = Product::where('is_manufacture','1')->pluck('name','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.input.manufactureRequest',compact('orders','products','uoms'));
    }

    public function storeRequest(Request $request)
    {
        $latestOrder = Manufacture::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->count();
        $ref = 'MR/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $input = [
            'order_ref' => $ref,
            'sales_order' => $request->input('sales_order'),
            'deadline' => $request->input('deadline'),
            'status_id' => '5bc79891-e396-4792-a0f3-617ece2a00ce',
            'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
            'created_by' => auth()->user()->id,
        ];

        $data = Manufacture::create($input);
        $items = $request->product_id;
        $quantity = $request->quantity;
        $uoms = $request->uom_id;

        foreach($items as $index=>$item) {
            $bases = UomValue::where('id',$uoms[$index])->first();
            if($bases->is_parent == null) {
                $convertion = ($quantity[$index]) * ($bases->value); 
            } else {
                $convertion = $quantity[$index];
            }
            $details = ManufactureItem::create([
                'manufacture_id' => $data->id,
                'item_id' => $item,
                'qty' => $convertion,
                'uom_id' => $uoms[$index],
            ]);
        }

        return redirect()->route('manufacture-request.index');
    }

    public function approveRequest($id)
    {
        $latestOrder = Manufacture::where('status_id','45e139a2-a423-46ef-8901-d07b25b461a3')->count();
        $ref = 'MO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $data = Manufacture::find($id);
        $accept = $data->update([
            'order_ref' => $ref,
            'status_id' => '45e139a2-a423-46ef-8901-d07b25b461a3',
        ]);

        return redirect()->route('manufacture.index');
    }

    public function checkStock($id)
    {
        $data = ManufactureItem::join('product_boms','product_boms.product_id','=','manufacture_items.item_id')
                                ->join('inventories','inventories.product_id','=','product_boms.material_id')
                                ->where('inventories.warehouse_id','=','afdcd530-bb5e-462b-8dda-1371b9195903')
                                ->where('manufacture_items.manufacture_id',$id)
                                ->get();
        
        return view('apps.show.manufactureStock',compact('data'))->renderSections()['content'];
    }

    public function makeManufacture(Request $request,$id)
    {
        $data = Manufacture::find($id);
        $workItems = ManufactureItem::join('product_boms','product_boms.product_id','=','manufacture_items.item_id')
                        ->where('manufacture_items.manufacture_id',$id)
                        ->get();
        
        $transfers = InternalTransfer::create([
            'order_ref' => $data->order_ref,
            'from_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
            'to_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'created_by' => auth()->user()->id,
            'updated_by' => auth()->user()->id,
        ]);

        $updateStatus = $data->update([
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
            'start_production' => Carbon::now(),
        ]);
        
        foreach($workItems as $workItem)
        {
            $baseInventory = Inventory::where('product_id',$workItem->material_id)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->orderBy('updated_at','DESC')->first();
            $baseMovement = InventoryMovement::where('product_id',$workItem->material_id)->where('warehouse_id','afdcd530-bb5e-462b-8dda-1371b9195903')->orderBy('updated_at','DESC')->first();
            $newInventory = Inventory::where('product_id',$workItem->material_id)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->orderBy('updated_at','DESC')->first();
            
            $totalQty = ($workItem->qty) * ($workItem->quantity);
            
            $itemTransfers = InternalItems::create([
                'mutasi_id' => $transfers->id,
                'product_id' => $workItem->product_id,
                'quantity' => $totalQty,
                'uom_id' => $workItem->uom_id,
            ]);

            $inventoryOut = $baseInventory->update([
                'closing_amount' => ($baseInventory->closing_amount) - ($totalQty),
            ]);
            
            if($newInventory == null) {
                $inventoryIn = Inventory::create([
                    'product_id' => $workItem->material_id,
                    'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                    'opening_amount' => $totalQty,
                    'closing_amount' => $totalQty,
                ]);
            } else {
                $inventoryIn = Inventory::where('product_id',$workItem->material_id)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->update([
                    'opening_amount' => ($newInventory->closing_amount) + ($totalQty),
                    'closing_amount' => ($newInventory->closing_amount) + ($totalQty),
                ]);
            }
            $id = Inventory::where('product_id',$workItem->material_id)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->first();
            $movementOut = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $baseInventory->id,
                'reference_id' => $data->order_ref,
                'product_id' => $workItem->material_id,
                'warehouse_id' => 'afdcd530-bb5e-462b-8dda-1371b9195903',
                'incoming' => '0',
                'outgoing' => $totalQty,
                'remaining' => ($baseMovement->remaining) - ($totalQty),
            ]);    

            $movementIn = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $id->id,
                'reference_id' => $data->order_ref,
                'product_id' => $workItem->material_id,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'incoming' => $totalQty,
                'outgoing' => '0',
                'remaining' => $totalQty,
            ]);
        }

        return redirect()->route('manufacture.index');
    }

    public function manufactureShow($id)
    {
        $data = Manufacture::find($id);
        $details = ManufactureItem::where('manufacture_id',$id)->get();

        return view('apps.show.manufactureOrder',compact('data','details'));
    }

    public function manufactureDone($id)
    {
        $products = ManufactureItem::where('manufacture_id',$id)->get();
        $data = Manufacture::join('manufacture_items','manufacture_items.manufacture_id','manufactures.id')
                            ->join('inventory_movements','inventory_movements.reference_id','manufactures.order_ref')
                            ->where('inventory_movements.warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')
                            ->where('manufactures.id',$id)
                            ->groupBy('inventory_movements.product_id')
                            ->select('inventory_movements.product_id')
                            ->get();
       
        return view('apps.input.manufactureDone',compact('data','products'))->renderSections()['content'];
    }

    public function process(Request $request)
    {
        $orders = Manufacture::join('manufacture_items','manufacture_items.manufacture_id','manufactures.id')->where('manufacture_items.id',$request->input('id'))->first();
        $products = $request->product_id;
        $material = $request->material_id;
        $usage = $request->usage;
        $scrap = $request->scrap;
        $result = $request->result;
       
        foreach($products as $index=>$product) {
            $finishInventory  =Inventory::updateOrCreate([
                'product_id' => $product,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b'],[
                    'min_stock' => '0',
                    'opening_amount' => '0',
                    'closing_amount' => $result[$index],
            ]);
            $inventories = Inventory::where('product_id',$material[$index])
                                        ->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')
                                        ->update([
                                            'closing_amount' => $scrap[$index],
                                        ]);
            $id = Inventory::where('product_id',$material[$index])
                            ->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')
                            ->orderBy('updated_at','DESC')
                            ->first();
            
            $movementOutScrap = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $id->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $material[$index],
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'outgoing' => $scrap[$index],
                'remaining' => '0',
            ]);                
            $movementInScrap = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $id->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $material[$index],
                'warehouse_id' => 'c40f889e-6fa3-43f2-bc2a-5fdded5aafed',
                'incoming' => $scrap[$index],
                'remaining' => $scrap[$index],
            ]);

        }
        
        $data = Manufacture::join('manufacture_items','manufacture_items.manufacture_id','manufactures.id')->where('manufacture_items.id',$request->input('id'))->first();
        $updates = Manufacture::where('id',$data->manufacture_id)->update([
            'manufactures.status_id' => '0fb7f4e6-e293-429d-8761-f978dc850a97',
            'manufactures.end_production' => Carbon::now(),
        ]);
        return redirect()->route('manufacture.index');
    }
}
