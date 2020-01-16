@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Invoice 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Proses Invoice 
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
            {!! Form::open(array('route' => 'invoice.get','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari PO</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $sales,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari DO</label>
                            {!! Form::select('do_ref', [null=>'Please Select'] + $deliveries,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-5">
            			<div class="form-group">
            				<label class="control-label">Customer</label>
            				{!! Form::text('customer', null, array('placeholder' => 'ID Pelanggan','class' => 'form-control','disabled')) !!}
            			</div>
            		</div>
            	</div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Harga</th>
                                    <th>Jumlah Dikirim</th>
	            					<th>Satuan</th>
	            					<th>Proses</th>
	            				</tr>
	            			</thead>
	            			<tbody>
	            				<tr>
	            					<td>{!! Form::text('product[]', null, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','disabled')) !!}</td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                    				<td>
                                    <td>
                                        <div class="mt-checkbox-inline">
                                            <label class="mt-checkbox">
                                                {!! Form::checkbox('is_shipment[]','1') !!} Kirim
                                                <span></span>
                                            </label>
                                            <label class="mt-checkbox">
                                                {!! Form::checkbox('is_partial[]','1') !!} Parsial
                                                <span></span>
                                            </label>
                                        </div>
                                    </td>
	            				</tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('invoice.index') }}">Cancel</a>
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
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection