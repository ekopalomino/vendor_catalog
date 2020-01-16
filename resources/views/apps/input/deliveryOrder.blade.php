@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Delivery Order 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Delivery Order 
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
            {!! Form::open(array('route' => 'delivery.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Nomor PO</label>
                            {!! Form::text('order_ref', $sales->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-5">
            			<div class="form-group">
            				<label class="control-label">ID Customer</label>
            				{!! Form::text('customer', $sales->client_code, array('placeholder' => 'ID Pelanggan','class' => 'form-control','readonly'=>'true')) !!}
            			</div>
            		</div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Jasa Pengiriman</label>
                            {!! Form::select('delivery_service', [null=>'Please Select'] + $services,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Biaya Pengiriman</label>
                            {!! Form::text('delivery_cost', null, array('placeholder' => 'Biaya Kirim','class' => 'form-control')) !!}
                        </div>
                    </div>
            		<!--/span-->
            	</div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah Pesanan</th>
                                    <th>Jumlah Tersedia</th>
                                    <th>Jumlah Dikirim</th>
	            					<th>Satuan</th>
	            					<th>Proses</th>
	            				</tr>
	            			</thead>
	            			<tbody>
                                @foreach($details as $key=>$item)
	            				<tr>
	            					<td>{!! Form::text('product[]', $item->product_name, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                    				<td>{!! Form::number('pesanan[]', $item->quantity, array('placeholder' => 'Quantity','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>
                                        <label class="label label-sm label-danger">{{ number_format(($item->closing_amount),2,',','.')}}
                                        </label>
                                    </td>
                    				<td>{!! Form::number('pengiriman[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', $uoms,$item->uom_id, array('class' => 'form-control')) !!}</td>
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
                                @endforeach
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('delivery.index') }}">Cancel</a>
                    <button type="submit" class="btn blue">
                    <i class="fa fa-check"></i> Save</button>
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