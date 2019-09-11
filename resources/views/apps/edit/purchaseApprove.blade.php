@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Sales Order Detail
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
                        <span class="caption-subject font-dark sbold uppercase"> Order {{$purchase->order_ref}}
                            <span class="hidden-xs">| {{date("d F Y H:i",strtotime($purchase->created_at)) }} </span>
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
                                            <i class="fa fa-cogs"></i>Purchase Details 
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Purchase #: </div>
                                            <div class="col-md-7 value"> {{$purchase->order_ref}}
                                                
                                            </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Request Date & Time: </div>
                                            <div class="col-md-7 value"> {{date("d F Y H:i",strtotime($purchase->created_at)) }} </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Grand Total: </div>
                                            <div class="col-md-7 value"> Rp {{ number_format($purchase->total,2,',','.')}} </div>
                                        </div>
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Request By: </div>
                                            <div class="col-md-7 value"> {{$purchase->Author->name}} </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="portlet red-sunglo box">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs"></i>Approval 
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        {!! Form::open(array('route' => 'request.approve','method'=>'POST')) !!}
                                        @csrf
                                        <div class="row static-info">
                                            <div class="col-md-5 name"> Approval Status: </div>
                                            <div class="col-md-7 value">
                                            {!! Form::select('status', array('458410e7-384d-47bc-bdbe-02115adc4449'=>'Approve','af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8'=>'Rejected'),[], array('class' => 'form-control')) !!}
                                            {{ Form::hidden('purchase_id', $id->id) }}
                                            {{ Form::hidden('order_ref', $purchase->order_ref) }}
                                            </div>
                                        </div>
                                        <div class="form-actions right">
                                                <a button type="button" class="btn default" href="{{ route('purchase.index') }}">Cancel</a>
                                                <button type="submit" class="btn blue">
                                                <i class="fa fa-check"></i> Save</button>
                                            </div>
                                        {!! Form::close() !!}
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <table class="table table-striped table-bordered table-hover" id="sample_2">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Product</th>
                                            <th>Quantity</th>
                                            <th>UOM</th>
                                            <th>Price</th>
                                            <th>Sub Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($data as $key=>$val)
                                        <tr>
                                            
                                            <td>{{ $key+1 }}</td>
                                            <td>{{ $val->Products->name }}</td>
                                            <td>{{ $val->quantity }}</td>
                                            <td></td>
                                            <td>{{ $val->purchase_price }}</td>
                                            <td>{{ $val->sub_total }}</td>
                                           
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