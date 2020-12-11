@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Sales Order 
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/select2/css/select2-bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Sales Order 
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
            {!! Form::open(array('route' => 'sales.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
            @csrf
            <div class="form-body">
            	<div class="row">
            		<div class="col-md-6">
            			<div class="form-group">
            				<label class="col-md-2 control-label">Customer</label>
                            <div class="col-md-5">
                                <select id="single" name="client_code" class="form-control select2">
                                    <option></option>
                                    @foreach($customers as $cust)
                                    <option value="{{$cust->ref_id}}">{{$cust->name}}</option>
                                    @endforeach
                                </select>
                            </div>
            			</div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">PO Number</label>
                            <div class="col-md-5">
                            {!! Form::text('customer_po', null, array('placeholder' => 'Customer PO', 'class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">SO Number</label>
                            <div class="col-md-5">
                            {!! Form::text('order_ref', $ref, array('placeholder' => 'Customer PO', 'class' => 'form-control','readonly')) !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-2 control-label">Sales Date</label>
                            <div class="col-md-5">
                                {!! Form::date('sale_date', \Carbon\Carbon::now(), array('id' => 'datepicker','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Delivery Date</label>
                            <div class="col-md-5">
                                {!! Form::date('delivery_date', \Carbon\Carbon::now(), array('id' => 'datepicker','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Status</label>
                            <div class="col-md-5">
                                {!! Form::text('status', 'Open', array('class' => 'form-control','readonly')) !!}
                            </div>
                        </div>
            		</div>
            	</div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah</th>
	            					<th>Satuan</th>
	            					<th>Harga Satuan</th>
                                    <th>Diskon (dalam Rupiah)</th>
	            				</tr>
	            			</thead>
	            			<tbody>
	            				<tr>
	            					<td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                    				<td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control','required')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control','required')) !!}</td>
                    			</tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="single" name="product[]" class="form-control select2">
                                            <option></option>
                                            @foreach($products as $val)
                                            <option value="{{$val->name}}">{{$val->name}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('sale_price[]', null, array('placeholder' => 'Harga','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('discount[]', null, array('placeholder' => 'Diskon','class' => 'form-control')) !!}</td>
                                </tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-2 control-label">Description</label>
                            <div class="col-md-10">
                                {!! Form::textarea('description', null, array('placeholder' => 'Deskripsi', 'class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-2 control-label">Sales Person</label>
                            <div class="col-md-5">
                                {!! Form::text('sale_person', auth()->user()->name, array('placeholder' => 'Deskripsi', 'class' => 'form-control','readonly')) !!}
                            </div>
                        </div>
                    </div>
                </div>
                <br>
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
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/select2/js/select2.full.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/components-date-time-pickers.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/pages/scripts/components-select2.min.js') }}" type="text/javascript"></script>
@endsection