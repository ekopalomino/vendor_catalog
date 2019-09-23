<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\SaleItem;

class DashboardController extends Controller
{
    public function index()
    {
        $sumSales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->sum('total');
        $sumOrders = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->count();
        
        return view('apps.pages.dashboard',compact('sumSales','sumOrders'));
    }
}
