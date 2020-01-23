<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Charts\DashboardChart;
use DB;
use Carbon\Carbon;

class DashboardController extends Controller
{
    public function index()
    {
        $runMonth = Carbon::now()->month;
        $totalSale = Sale::where('status_id','6d32841b-2606-43a5-8cf7-b77291ddbfbb')->count();
        $avgSale = ($totalSale) / ($runMonth);
        
        return view('apps.pages.dashboard',compact('totalSale','avgSale'));
    }
}
