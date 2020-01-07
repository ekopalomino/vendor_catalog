<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Product;
use iteos\Models\ProductBom;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use iteos\Models\Warehouse;
use iteos\Models\InternalTransfer;
use iteos\Models\InternalItems;
use iteos\Models\Manufacture;
use iteos\Models\ManufactureItem;
use iteos\Models\WorkItem;
use iteos\Models\UomValue;
use iteos\Models\Sale;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class ManufactureManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can Access Manufactures');
         $this->middleware('permission:Can Create Manufacture', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Manufacture', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Manufacture', ['only' => ['destroy']]);
    }

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

    public function manufactureProduct(Request $request)
    {
        $search = $request->get('product');
        $result = Product::where('is_manufacture','1')
                            ->where('name','LIKE','%'.$search. '%')
                            ->select('id','name')
                            ->get();

        return response()->json($result);
    }

    public function createRequest()
    {
        $orders  = Sale::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->pluck('order_ref','id')->toArray();
        $uoms = UomValue::pluck('name','id')->toArray();

        return view('apps.input.manufactureRequest',compact('orders','uoms'));
    }

    public function storeRequest(Request $request)
    {
        $latestOrder = Manufacture::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->count();
        $ref = 'MR/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $bases = UomValue::where('id',$request->input('uom_id'))->first();
        if($bases->is_parent == null) {
            $convertion = ($request->input('quantity')) * ($bases->value); 
        } else {
            $convertion = $request->input('quantity');
        }
        $input = [
            'order_ref' => $ref, 
            'sales_order' => $request->input('sales_order'),
            'product_name' => $request->input('product'),
            'deadline' => $request->input('deadline'),
            'status_id' => '5bc79891-e396-4792-a0f3-617ece2a00ce',
            'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
            'man_plan' => $convertion,
            'created_by' => auth()->user()->name,
        ];
        $names = Product::join('product_boms','product_boms.product_id','products.id')
                          ->where('products.name',$request->input('product'))
                          ->orWhere('products.product_barcode',$request->input('product'))
                          ->get();
        
        $data = Manufacture::create($input);
        foreach($names as $index=>$name) {
            $details = ManufactureItem::create([
                'manufacture_id' => $data->id,
                'item_name' => $names[$index]->material_name,
                'qty' => ($names[$index]->quantity) * ($data->man_plan),
                'uom_id' => $names[$index]->uom_id,
            ]);
        }
        
        $log = 'Manufacture Request '.($data->order_ref).' Berhasil Dibuat';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Manufacture Request '.($data->order_ref).' Berhasil Dibuat',
            'alert-type' => 'success'
        );

        return redirect()->route('manufacture-request.index')->with($notification);
    }

    public function approveRequest($id)
    {
        $latestOrder = Manufacture::where('status_id','45e139a2-a423-46ef-8901-d07b25b461a3')->count();
        $ref = 'MO/'.str_pad($latestOrder + 1, 4, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
        $data = Manufacture::find($id);
        $accept = $data->update([
            'order_ref' => $ref,
            'status_id' => '45e139a2-a423-46ef-8901-d07b25b461a3',
            'approve_by' => auth()->user()->name,
        ]);
        $log = 'Manufacture Request '.($data->order_ref).' Berhasil Disetujui';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Manufacture Request '.($data->order_ref).' Berhasil Disetujui',
            'alert-type' => 'success'
        );

        return redirect()->route('manufacture.index')->with($notification);
    }

    public function checkStock($id)
    {
        $data = ManufactureItem::join('inventories','inventories.product_name','=','manufacture_items.item_name')
                                ->where('manufacture_items.manufacture_id',$id)
                                ->get();
        
        return view('apps.show.manufactureStock',compact('data'))->renderSections()['content'];
    }

    public function makeManufacture(Request $request,$id)
    {
        $data = Manufacture::find($id);
        $workItems = ManufactureItem::join('products','products.name','manufacture_items.item_name')
                        ->where('manufacture_items.manufacture_id',$id)
                        ->get();
        
        $transfers = InternalTransfer::create([
            'order_ref' => $data->order_ref,
            'from_wh' => 'Gudang Utama',
            'to_wh' => 'Gudang Manufaktur',
            'status_id' => '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43',
            'created_by' => auth()->user()->name,
            'updated_by' => auth()->user()->name,
        ]);

        $updateStatus = $data->update([
            'status_id' => 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
            'process_by' => auth()->user()->name,
            'start_production' => Carbon::now(),
        ]);
        
        foreach($workItems as $workItem)
        {
            $baseInventory = Inventory::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $baseMovement = InventoryMovement::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Utama')->orderBy('updated_at','DESC')->first();
            $newInventory = Inventory::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Manufaktur')->orderBy('updated_at','DESC')->first();
            
            $totalQty = ($workItem->qty) * ($workItem->quantity);
            
            $itemTransfers = InternalItems::create([
                'mutasi_id' => $transfers->id,
                'product_name' => $workItem->item_name,
                'quantity' => $workItem->qty,
                'uom_id' => $workItem->uom_id,
            ]);

            $inventoryOut = $baseInventory->update([
                'closing_amount' => ($baseInventory->closing_amount) - ($workItem->qty),
            ]);
            
            if($newInventory == null) {
                $inventoryIn = Inventory::create([
                    'product_id' => $workItem->id,
                    'product_name' => $workItem->item_name,
                    'warehouse_name' => 'Gudang Manufaktur',
                    'min_stock' => '0',
                    'opening_amount' => $workItem->qty,
                    'closing_amount' => $workItem->qty,
                ]);
                $id = Inventory::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Manufaktur')->first();
                $movementIn = InventoryMovement::create([
                    'type' => '7',
                    'inventory_id' => $id->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $workItem->item_name,
                    'warehouse_name' => 'Gudang Manufaktur',
                    'incoming' => $workItem->qty,
                    'outgoing' => '0',
                    'remaining' => $workItem->qty,
                ]);
            } else {
                $inventoryIn = Inventory::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Manufaktur')->update([
                    'opening_amount' => ($newInventory->closing_amount) + ($workItem->qty),
                    'closing_amount' => ($newInventory->closing_amount) + ($workItem->qty),
                ]);
                $id = Inventory::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Manufaktur')->first();
                $last = InventoryMovement::where('product_name',$workItem->item_name)->where('warehouse_name','Gudang Manufaktur')->first();
                $movementIn = InventoryMovement::create([
                    'type' => '7',
                    'inventory_id' => $id->id,
                    'reference_id' => $data->order_ref,
                    'product_name' => $workItem->item_name,
                    'warehouse_name' => 'Gudang Manufaktur',
                    'incoming' => $workItem->qty,
                    'outgoing' => '0',
                    'remaining' => ($last->remaining) + ($workItem->qty),
                ]);
            }
            
            $movementOut = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $baseInventory->id,
                'reference_id' => $data->order_ref,
                'product_name' => $workItem->item_name,
                'warehouse_name' => 'Gudang Manufaktur',
                'incoming' => '0',
                'outgoing' => $totalQty,
                'remaining' => ($baseMovement->remaining) - ($workItem->qty),
            ]);    
            
            
        }
        $log = 'Manufacture Order '.($data->order_ref).' Berhasil Dijalankan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Manufacture Order '.($data->order_ref).' Berhasil Dijalankan',
            'alert-type' => 'success'
        );
        return redirect()->route('manufacture.index')->with($notification);
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
        $itemInventory = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->first();
        $items = $request->material_id;
        $usage = $request->usage;
        $scrap = $request->scrap;
        $updateQty = ManufactureItem::where('id',$request->input('id'))->update(['result'=>$request->input('result')]);
        if($itemInventory == null) {
            $finishItems = Inventory::create([
                'product_id' => $request->input('product_id'),
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'min_stock' => '0',
                'opening_amount' => $request->input('result'),
                'closing_amount' => $request->input('result'),
            ]);
        } else {
            $finishItems = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->update([
                'opening_amount' => $itemInventory->opening_amount,
                'closing_amount' => ($itemInventory->closing_amount) + ($request->input('result')),
            ]);
        }
        $idFinish = Inventory::where('product_id',$request->input('product_id'))->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->first();
        $lastMoves = InventoryMovement::where('product_id',$request->input('product_id'))->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->orderBy('updated_at','DESC')->first();
        if($lastMoves == null) {
            $finishIn = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $idFinish->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $idFinish->product_id,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'incoming' => $request->input('result'),
                'outgoing' => '0',
                'remaining' => $request->input('result'),
            ]);
        } else {
            $finishIn = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $idFinish->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $idFinish->product_id,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'incoming' => $request->input('result'),
                'outgoing' => '0',
                'remaining' => ($lastMoves->remaining) + ($request->input('result')),
            ]);
        }
               
        foreach($items as $index=>$item) {
            $scrapInventory = Inventory::where('product_id',$item)->where('warehouse_id','c40f889e-6fa3-43f2-bc2a-5fdded5aafed')->first();
            if($scrapInventory == null) {
                $scrapItems = Inventory::create([
                    'product_id' => $item,
                    'warehouse_id' => 'c40f889e-6fa3-43f2-bc2a-5fdded5aafed',
                    'min_stock' => '0',
                    'opening_amount' => $scrap[$index],
                    'closing_amount' => $scrap[$index],
                ]);
            } else {
                $scrapItems = Inventory::where('product_id',$item)->where('warehouse_id','c40f889e-6fa3-43f2-bc2a-5fdded5aafed')->update([
                    'closing_amount' => ($scrapInventory->closing_amount) + $scrap[$index],
                ]);
            }
            $idScrap = Inventory::where('product_id',$item)->where('warehouse_id','c40f889e-6fa3-43f2-bc2a-5fdded5aafed')->first();
            $lastMove = InventoryMovement::where('product_id',$item)->where('warehouse_id','c40f889e-6fa3-43f2-bc2a-5fdded5aafed')->orderBy('updated_at','DESC')->first();
            if($lastMove == null) {
                $scrapIn = InventoryMovement::create([
                    'type' => '7',
                    'inventory_id' => $idScrap->id,
                    'reference_id' => $orders->order_ref,
                    'product_id' => $item,
                    'warehouse_id' => 'c40f889e-6fa3-43f2-bc2a-5fdded5aafed',
                    'incoming' => $scrap[$index],
                    'outgoing' => '0',
                    'remaining' => $scrap[$index],
                ]);
            } else {
                $scrapIn = InventoryMovement::create([
                    'type' => '7',
                    'inventory_id' => $idScrap->id,
                    'reference_id' => $orders->order_ref,
                    'product_id' => $item,
                    'warehouse_id' => 'c40f889e-6fa3-43f2-bc2a-5fdded5aafed',
                    'incoming' => $scrap[$index],
                    'outgoing' => '0',
                    'remaining' => ($lastMove->remaining) + ($scrap[$index]),
                ]);
            }
            $idUsage = Inventory::where('product_id',$item)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->first();
            $usageMove = InventoryMovement::where('product_id',$item)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->orderBy('updated_at','DESC')->first();
            $usageOut = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $idUsage->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $item,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'incoming' => '0',
                'outgoing' => $usage[$index],
                'remaining' => ($usageMove->remaining) - ($usage[$index]),
            ]);
            $scrapOut = InventoryMovement::create([
                'type' => '7',
                'inventory_id' => $idUsage->id,
                'reference_id' => $orders->order_ref,
                'product_id' => $item,
                'warehouse_id' => 'ce8b061c-b1bb-4627-b80f-6a42a364109b',
                'incoming' => '0',
                'outgoing' => $scrap[$index],
                'remaining' => ($usageOut->remaining) - ($scrap[$index]),
            ]);
            $updateInventory = Inventory::where('product_id',$item)->where('warehouse_id','ce8b061c-b1bb-4627-b80f-6a42a364109b')->first();
            $final = $updateInventory->update([
                'closing_amount' => ($updateInventory->closing_amount) - (($usage[$index])+($scrap[$index])),
            ]);
           
        }
        
        $data = Manufacture::join('manufacture_items','manufacture_items.manufacture_id','manufactures.id')->where('manufacture_items.id',$request->input('id'))->first();
        $updates = Manufacture::where('id',$data->manufacture_id)->update([
            'manufactures.status_id' => '0fb7f4e6-e293-429d-8761-f978dc850a97',
            'manufactures.end_by' => auth()->user()->name,
            'manufactures.end_production' => Carbon::now(),
        ]);
        return redirect()->route('manufacture.index');
    }
}
