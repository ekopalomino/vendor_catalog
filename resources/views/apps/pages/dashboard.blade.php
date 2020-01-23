@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Dashboard
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/morris/morris.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
			<a class="dashboard-stat dashboard-stat-v2 blue" href="#">
                <div class="visual">
                    <i class="fa fa-comments"></i>
                </div>
                <div class="details">
                    <div class="number">
                        <span data-counter="counterup" data-value="{{ $totalSale }}">{{ $totalSale }}</span>
                    </div>
                    <div class="desc"> Total Penjualan </div>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
			<a class="dashboard-stat dashboard-stat-v2 red" href="#">
                <div class="visual">
                    <i class="fa fa-comments"></i>
                </div>
                <div class="details">
                    <div class="number">
                        <span data-counter="counterup" data-value="{{ $avgSale }}">{{ $avgSale }}</span>
                    </div>
                    <div class="desc"> Rata Rata Penjualan Per Bulan </div>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
			<a class="dashboard-stat dashboard-stat-v2 green" href="#">
                <div class="visual">
                    <i class="fa fa-comments"></i>
                </div>
                <div class="details">
                    <div class="number">
                        <span data-counter="counterup" data-value="1349">0</span>
                    </div>
                    <div class="desc"> Total Pembelian </div>
                </div>
            </a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
    	<div class="col-lg-6 col-xs-12 col-sm-12">
        	<div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-share font-red-sunglo hide"></i>
                        <span class="caption-subject font-dark bold uppercase">Penjualan</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div id="site_activities_loading">
                        <img src="../assets/global/img/loading.gif" alt="loading" /> </div>
                    <div id="site_activities_content" class="display-none">
                        <div id="site_activities" style="height: 228px;"> </div>
                    </div>
                    <div style="margin: 20px 0 10px 30px">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                <span class="label label-sm label-success"> Pendapatan: </span>
                                <h3>$13,234</h3>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                <span class="label label-sm label-info"> Pajak: </span>
                                <h3>$134,900</h3>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                <span class="label label-sm label-danger"> Pengiriman: </span>
                                <h3>$1,134</h3>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                <span class="label label-sm label-warning"> Pesanan: </span>
                                <h3>235090</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-xs-12 col-sm-12">
        	<div class="portlet light bordered">
        		<div class="portlet-title">
                    <div class="caption">
                        <i class="icon-share font-red-sunglo hide"></i>
                        <span class="caption-subject font-dark bold uppercase">10 Produk Terlaris</span>
                    </div>
                </div>
                <div class="portlet-body">
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
    	<div class="col-lg-6 col-xs-12 col-sm-12">
        	<div class="portlet light bordered">
        		<div class="portlet-title">
                    <div class="caption">
                        <i class="icon-share font-red-sunglo hide"></i>
                        <span class="caption-subject font-dark bold uppercase">10 Penjualan Customer</span>
                    </div>
                </div>
                <div class="portlet-body">
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-xs-12 col-sm-12">
        	<div class="portlet light bordered">
        		<div class="portlet-title">
                    <div class="caption">
                        <i class="icon-share font-red-sunglo hide"></i>
                        <span class="caption-subject font-dark bold uppercase">10 Pembelian Supplier</span>
                    </div>
                </div>
                <div class="portlet-body">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/plugins/moment.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/morris/morris.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/morris/raphael-min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/counterup/jquery.waypoints.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/counterup/jquery.counterup.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/amcharts.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/serial.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/pie.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/radar.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/themes/light.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/themes/patterns.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amcharts/themes/chalk.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/ammap/ammap.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/ammap/maps/js/worldLow.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/amcharts/amstockcharts/amstock.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/fullcalendar/fullcalendar.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/horizontal-timeline/horizontal-timeline.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.resize.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.categories.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/jquery.sparkline.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/dashboard.min.js') }}" type="text/javascript"></script>
@endsection