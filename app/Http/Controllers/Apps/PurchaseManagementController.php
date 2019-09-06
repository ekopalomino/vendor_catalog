<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\Contact;
use Erp\Models\PaymentMethod;
use Erp\Models\PaymentTerm;
use Auth;

class PurchaseManagementController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Purchasing');
        $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
        $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
        $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    
}
