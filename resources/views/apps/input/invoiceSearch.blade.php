@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Invoice 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Invoice
            </div>
        </div>
        <div class="portlet-body form">
            <div class="m-heading-1 border-red m-bordered">
                <h3>Petunjuk Pengisian</h3>
                <p> Pilih <strong>Nomor Sales Order</strong> untuk full delivery atau <strong>Nomor Delivery Order</strong> untuk partial delivery</p>
            </div>
            @if (count($errors) > 0) 
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
            @endif 
            {!! Form::open(array('route' => 'invoice.search','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Sales Order</label>
                            {!! Form::select('sales_order', [null=>'Please Select'] + $sales,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Delivery Order</label>
                            {!! Form::select('delivery_order', [null=>'Please Select'] + $deliveries,[], array('class' => 'form-control')) !!}
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