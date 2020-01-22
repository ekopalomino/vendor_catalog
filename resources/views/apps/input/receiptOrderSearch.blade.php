@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Receipt Order 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Terima Barang Supplier 
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
            {!! Form::open(array('route' => 'receipt.get','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari PO</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $purchases,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-5">
            			<div class="form-group">
            				<label class="control-label">Supplier</label>
            				{!! Form::text('customer', null, array('placeholder' => 'ID Supplier','class' => 'form-control','disabled')) !!}
            			</div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Gudang</label>
                            {!! Form::text('customer', null, array('placeholder' => 'Gudang','class' => 'form-control','disabled')) !!}
                        </div>
                    </div>
            	</div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah Dipesan</th>
                                    <th>Jumlah Dikirim</th>
                                    <th>Jumlah Rusak</th>
	            					<th>Satuan</th>
	            					<th></th>
	            				</tr>
	            			</thead>
	            			<tbody>
	            				<tr>
	            					<td>{!! Form::text('product[]', null, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','disabled')) !!}</td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                                    <td></td>
                                </tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('receipt.index') }}">Cancel</a>
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