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
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Carbon\Carbon;
use Auth;

class ManufactureManagementController extends Controller
{
    public function index()
    {
        $data = Manufacture::get();
        return view ('apps.pages.manufacture',compact('data'));
    }

    public function create(Request $request)
    {
        $products = Product::pluck('name','id')->toArray();
        
    }
}
