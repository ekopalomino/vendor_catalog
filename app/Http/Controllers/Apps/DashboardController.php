<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\SaleItem;
use Erp\Charts\DashboardChart;

class DashboardController extends Controller
{
    public function index()
    {
        $sumSales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->sum('total');
        $sumOrders = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->count();
        $avgSales = Sale::avg('total');
        $sales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')
                        ->select('updated_at','total')
                        ->get();
        $salesGraph = $sales->toArray();
        
        if($sales->count()>0) {
            $chart = new DashboardChart;
            $chart->dataset('no data','line',[0]);
            $chart->options([
                'responsive' => 'true'
            ]);
        } else {
            $chart = new DashboardChart;
            $chart->dataset('no data','line',[0]);
            $chart->options([
                'responsive' => 'true'
            ]);
        }
        return view('apps.pages.dashboard',compact('sumSales','sumOrders','avgSales','chart'));
    }
}
