<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\SaleItem;
use Erp\Charts\DashboardChart;
use DB;

class DashboardController extends Controller
{
    public function index()
    {
        $sumSales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->sum('total');
        $sumOrders = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->count();
        $avgSales = Sale::avg('total');
        $sales = Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')
                        ->select(DB::raw('sum(total) as sums'),DB::raw("DATE_FORMAT(updated_at,'%M %Y') as months"))
                        ->groupBy('months')
                        ->get();
        
        if($sales->count()>0) {
            $chart = new DashboardChart;
            $chart->labels(['Jan','Feb','Mar','Apr','Mei','Jun','Jul','Ags','Sep','Okt','Nov','Des']);
            $chart->dataset($sales[0]->months,'line',[$sales[0]->sums]);
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
        $products = Sale::join('sale_items','sale_items.sales_id','sales.id')
                        ->join('products','products.id','sale_items.product_id')
                        ->where('sales.status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')
                        ->select(DB::raw('sum(sale_items.quantity) as sums'),'products.name as produk')
                        ->groupBy('products.name')
                        ->get();
        $array = $products->toArray();
        if($products->count()>0) {
            $prodchart = new DashboardChart;
            $chart->labels(['Jan','Feb','Mar','Apr','Mei','Jun','Jul','Ags','Sep','Okt','Nov','Des']);
            $prodchart->dataset($products[0]->produk,'bar',[$products[0]->sums]);
            $prodchart->options([
                'responsive' => 'true'
            ]);
        } else {
            $prodchart = new DashboardChart;
            $prodchart->dataset('no data','bar',[0]);
            $prodchart->options([
                'responsive' => 'true'
            ]);
        }
        return view('apps.pages.dashboard',compact('sumSales','sumOrders','avgSales','chart','prodchart'));
    }
}
