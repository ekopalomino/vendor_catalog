<?php

namespace iteos\Http\Controllers\Apps;

use Illuminate\Http\Request;
use iteos\Http\Controllers\Controller;

class LogActivityController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:Can Access Users');
    }

    public function index()
    {
        $logs = \LogActivity::logActivityLists();
        return view('apps.pages.logActivity',compact('logs'));
    }
}
