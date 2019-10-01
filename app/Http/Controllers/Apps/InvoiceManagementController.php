<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Sale;
use Erp\Models\Invoice;

class InvoiceManagementController extends Controller
{
    public function index()
    {
        return view('apps.pages.invoices');
    }
}
