@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Purchase Order Detail
@endsection
@section('header.plugin')
<link href="{{ asset('apps/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('apps/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('apps/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('apps/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<div class="portlet light portlet-fit portlet-datatable bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-settings font-dark"></i>
                        <span class="caption-subject font-dark sbold uppercase"> Order {{$data->order_ref}}
                            <span class="hidden-xs">| {{date("d F Y H:i",strtotime($data->created_at)) }} </span>
                        </span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="tab-content">
                    	<div class="row">
                    		<div class="col-md-6 col-sm-12">
                    			<div class="portlet yellow-crusta box">
                    				<div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs"></i>Purchase Order Details 
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Purchase #: </div>
                                            <div class="col-md-7 value"> {{$data->order_ref}}
                                                
                                            </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Request Date & Time: </div>
                                            <div class="col-md-7 value"> {{date("d F Y H:i",strtotime($data->created_at)) }} </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Grand Total: </div>
                                            <div class="col-md-7 value"> Rp {{ number_format($data->total,2,',','.')}} </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Request By: </div>
                                            <div class="col-md-7 value"> {{$data->Author->name}} </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="portlet grey-cascade box">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs"></i>Shopping Cart 
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Produk</th>
                                                    <th>Jumlah</th>
                                                    <th>Satuan</th>
                                                    <th>Harga Satuan</th>
                                                    <th>Harga Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($details as $key=>$val)
                                                <tr>    
                                                    <td>{{ $key+1 }}</td>
                                                    <td>{{ $val->Products->name }}</td>
                                                    <td>{{ $val->quantity }}</td>
                                                    <td>{{ $val->Uoms->name }}</td>
                                                    <td>{{ number_format($val->purchase_price,2,',','.')}}</td>
                                                    <td>{{ number_format($val->sub_total,2,',','.')}}</td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('apps/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('apps/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('apps/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('apps/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('apps/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('apps/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('apps/pages/scripts/ecommerce-orders-view.min.js') }}" type="text/javascript"></script>
@endsection