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
          <div class="number"> Rp {{ number_format($sumSales,0,',','.')}}</div>
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
          <div class="number"> {{ number_format($sumOrders,0,',','.')}} </div>
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
          <div class="number"> Rp {{ number_format($avgSales,0,',','.')}} </div>
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
            <span class="caption-subject font-red bold uppercase">Sales Income</span>
          </div>
        </div>
        <div class="portlet-body">
         	{!!$chart->container() !!}
   	    </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="portlet light bordered">
        <div class="portlet-title">
          <div class="caption">
            <i class="icon-graph font-red"></i>
            <span class="caption-subject font-red bold uppercase">Product Sales</span>
          </div>
        </div>
        <div class="portlet-body">
          {!!$prodchart->container() !!}
        </div>
      </div>
    </div>	
  </div>
</div>
@endsection
@section('footer.scripts')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.bundle.min.js"></script>
{!! $chart->script() !!}
{!! $prodchart->script() !!}
@endsection