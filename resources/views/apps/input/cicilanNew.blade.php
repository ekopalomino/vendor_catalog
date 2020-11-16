@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Invoice 
@endsection 
@section('content') 
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Invoice Cicilan
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
            {!! Form::open(array('route' => ['invoiceCicilan.store',$data->id],'method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nomor Sales Order</label>
                            {!! Form::text('sales_order', $data->sales_order, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nomor Invoice</label>
                            {!! Form::text('delivery_order', $data->reference_no, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nama Customer</label>
                            {!! Form::text('customer_name', $data->Contacts->name, array('class' => 'form-control','readonly'=>'true')) !!}
                            {{Form::hidden('customer_id', $data->contact_id)}}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Status Pembelian</label>
                            {!! Form::text('status_id', $data->Status->name, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Cicilan Dibayar</label>
                            {!! Form::number('terms_no', $data->terms_no, array('placeholder' => 'Cicilan Ke','class' => 'form-control','required','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Total Cicilan</label>
                            {!! Form::number('total_terms', $data->total_terms, array('placeholder' => 'Total Cicilan','class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Sisa Tagihan</label>
                            {!! Form::number('total_terms', $remaining->remaining, array('placeholder' => 'Total Cicilan','class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Total Pembayaran</label>
                            {!! Form::number('amount', null, array('placeholder' => 'Total Bayar','class' => 'form-control','required')) !!}
                        </div>
                    </div>
                </div>
                <div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('invoice.index') }}">Cancel</a>
                    <button type="submit" class="btn blue">
                    <i class="fa fa-check"></i> Create</button>
                </div>
            </div>
            {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection