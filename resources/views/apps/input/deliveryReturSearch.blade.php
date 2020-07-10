@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Product Retur 
@endsection
@section('content') 
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Retur Produk 
            </div>
        </div>
        <div class="portlet-body form">
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
            {!! Form::open(array('route' => 'deliveryRetur.get','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari SO</label>
                            {!! Form::select('sales_order', [null=>'Please Select'] + $sales,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari DO</label>
                            {!! Form::select('delivery_order', [null=>'Please Select'] + $deliveries,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>            		
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('delivery.index') }}">Cancel</a>
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