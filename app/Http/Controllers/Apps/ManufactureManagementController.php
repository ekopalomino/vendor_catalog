<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;

class ManufactureManagementController extends Controller
{
    public function index()
    {
        return view ('apps.pages.manufacture');
    }
}
