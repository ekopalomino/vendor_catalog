@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Sales Order
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Sales Order Form 
            </div>
        </div>
        <div class="portlet-body">
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
                {!! Form::open(array('route' => 'sales.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
                @csrf
                <div class="form-body">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Customer Name</label>
                        <div class="col-md-4">
                            {!! Form::select('client_code', [null=>'Please Select'] + $customers,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Delivery Date</label>
                        <div class="col-md-4">
                            {!! Form::date('delivery_date', '', array('id' => 'datepicker','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Tax</label>
                            <div class="col-md-4">
                                <div class="mt-checkbox-inline">
                                    <label class="mt-checkbox">
                                        {!! Form::checkbox('tax', 'value') !!} 10% VAT
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                    </div>
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                    	<thead>
                    		<tr>
                    			<th>Product Name</th>
                    			<th>Quantity</th>
                    			<th>UOM</th>
                    			<th>Price</th>
                    		</tr>
                    	</thead>
                    	<tbody>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    		<tr>
                    			<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                    			<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                    			<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td>
                    		</tr>
                    	</tbody>
                    </table>
                    	</tbody>
                    <div class="form-actions right">
                        <a button type="button" class="btn default" href="{{ route('sales.index') }}">Cancel</a>
                        <button type="submit" class="btn blue">
                        <i class="fa fa-check"></i> Save</button>
                    </div>
                </div>
                {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets//global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/components-date-time-pickers.min.js') }}" type="text/javascript"></script>
@endsection