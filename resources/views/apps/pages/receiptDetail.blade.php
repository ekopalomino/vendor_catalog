@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Payment Detail
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Payment Request
            </div>
        </div>
        <div class="portlet-body form">
            {!! Form::open(array('route' => 'purchaseReceipt.get','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Purchase Order</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $purchaseOrder,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Delivery Order</label>
                            {!! Form::select('delivery_order', [null=>'Please Select'] + $receiptOrder,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>       		
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('purchaseReceipt.index') }}">Cancel</a>
                    <button type="submit" class="btn blue">
                    <i class="fa fa-check"></i> Search</button>
                </div>
            </div>
            {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.scripts')
<script src="{{ asset('public/assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection