<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;

class ReportManagementController extends Controller
{
    /*----Sales Reports--------------------*/
    public function saleTable()
    {
        return view('apps.pages.saleTable');
    }

    public function reportSales(Request $request)
    {
        $this->validate($request, [
            'from_date' => 'required',
            'to_date' => 'required',
        ]);

        $data = Sale::where('updated_at','>=',$request->input('from_date'))
                        ->where('updated_at','<=',$request->input('to_date'))
                        ->get();
        
        return view('apps.show.saleTable',compact('data'));
    }

    public function inventoryTable()
    {
        return view('apps.pages.inventoryTable');
    }

    public function purchaseTable()
    {
        return view('apps.pages.purchaseTable');
    }
}
