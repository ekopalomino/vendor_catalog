<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;
use iteos\Models\Sale;
use iteos\Models\SaleItem;
use iteos\Models\Purchase;
use iteos\Models\Delivery;
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
        $totalPurchase = Purchase::where('status','596ae55c-c0fb-4880-8e06-56725b21f6dc')->count();

        $totalIncome = Sale::where('status_id','6d32841b-2606-43a5-8cf7-b77291ddbfbb')->sum('total');
        $totalTax = Sale::where('status_id','6d32841b-2606-43a5-8cf7-b77291ddbfbb')->sum('tax');
        $totalDeliveries = Delivery::where('status_id','6d32841b-2606-43a5-8cf7-b77291ddbfbb')->sum('delivery_cost');
        $totalItems = Sale::where('status_id','6d32841b-2606-43a5-8cf7-b77291ddbfbb')->sum('quantity');

        $data = DB::table('sales')
        			->select(DB::raw('date(closing_date) as date'),DB::raw('sum(total) as total'))
        			->groupBy(DB::raw('date(closing_date)'))
        			->get();
        $array[] = ['date','total'];
        foreach($data as $key=>$value) {
        	$array[++$key] = [$value->date,(int)$value->total];
        }

        $items = DB::table('sale_items')
        			->select(DB::raw('product_name as Produk'),DB::raw('sum(quantity) as Quantity'))
        			->orderBy('Quantity','DESC')
        			->groupBy('product_name')
        			->get();
        $products[] = ['Produk','Quantity'];
        foreach($items as $key=>$value) {
        	$products[++$key] = [$value->Produk,(int)$value->Quantity];
        }
        
        return view('apps.pages.dashboard',compact('totalSale','avgSale','totalPurchase','totalIncome','totalTax','totalDeliveries','totalItems'))->with('data',json_encode($array))->with('items',json_encode($products));
    }
}
