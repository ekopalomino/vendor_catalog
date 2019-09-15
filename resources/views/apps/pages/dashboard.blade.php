@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Dashboard
@endsection
@section('content')
<div class="page-content">
	<h1 class="page-title">
		Dashboard
	</h1>
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
			<div class="dashboard-stat blue">
                <div class="visual">
                    <i class="fa fa-briefcase fa-icon-medium"></i>
                </div>
                <div class="details">
                    <div class="number"> $168,492.54 </div>
                    <div class="desc"> Total Penjualan </div>
                </div>
                <a class="more" href="{{ route('sales.index') }}"> Lihat
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
            <div class="dashboard-stat red">
                <div class="visual">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <div class="details">
                    <div class="number"> 1,127,390 </div>
                    <div class="desc"> Total Pesanan </div>
                </div>
                <a class="more" href="{{ route('sales.index') }}"> Lihat
        	        <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
            <div class="dashboard-stat green">
                <div class="visual">
                    <i class="fa fa-group fa-icon-medium"></i>
                </div>
                <div class="details">
                    <div class="number"> $670.54 </div>
                    <div class="desc"> Rata Rata Penjualan </div>
                </div>
                <a class="more" href="javascript:;"> View more
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="row">
      	<div class="col-md-6">
       		<div class="portlet light bordered">
       			<div class="portlet-title">
       				<div class="caption">
                        <i class="icon-graph font-red"></i>
                        <span class="caption-subject font-red bold uppercase">Pendapatan</span>
                    </div>
                </div>
                <div class="portlet-body">
                	<div class="tab-pane active" id="portlet_ecommerce_tab_1">
                        <div id="statistics_1" class="chart"> </div>
                    </div>
       	        </div>
            </div>
        </div>
        <div class="col-md-6">
      		<div class="portlet light bordered">
       			<div class="portlet-title">
       				<div class="caption">
                        <i class="icon-list font-blue"></i>
                        <span class="caption-subject font-blue bold uppercase">Top 5 Penjualan Produk</span>
                    </div>
                </div>
                <div class="portlet-body">
                  	<div class="table-responsive">
                   		<table class="table table-striped table-hover table-bordered">
                   			<thead>
                   				<tr>
                   					<th>Produk</th>
                   					<th>Jumlah Penjualan</th>
                   					<th>Total Penjualan</th>
                   				</tr>
                   			</thead>
                   			<tbody>
                   				<tr>
                   					<td></td>
            					    <td></td>
            					    <td></td>
                   				</tr>
                   			</tbody>
                   		</table>
                   	</div>
                </div>
            </div>
        </div>		
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.resize.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/flot/jquery.flot.categories.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/ecommerce-dashboard.min.js') }}" type="text/javascript"></script>
@endsection