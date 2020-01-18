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
                <p> Pilih Salah Satu Antara <strong>Nomor Sales Order</strong>, <strong>Nomor Delivery Order</strong> Atau <strong>Nama Customer</strong></p>
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
            {!! Form::open(array('route' => 'invoice.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Sales Order</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $sales,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Delivery Order</label>
                            {!! Form::select('do_ref', [null=>'Please Select'] + $deliveries,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nama Customer</label>
                            {!! Form::select('customer_id', [null=>'Please Select'] + $customers,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-2">
            			<div class="form-group">
            				<label class="control-label">Metode Pembayaran</label>
            				{!! Form::select('pay_method', [null=>'Please Select'] + $methods,[], array('class' => 'form-control')) !!}
            			</div>
            		</div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Termin Pembayaran</label>
                            {!! Form::select('pay_term', [null=>'Please Select'] + $terms,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Pajak</label>
                            <select class="form-control" name="tax">
                                <option>Please Select</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">NPWP</label>
                            {!! Form::text('tax_id', null, array('placeholder' => 'NPWP','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Pembayaran Ke</label>
                            {!! Form::number('terms_no', null, array('placeholder' => 'Pembayaran Ke','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Total Pembayaran</label>
                            {!! Form::number('amount', null, array('placeholder' => 'Total Bayar','class' => 'form-control')) !!}
                        </div>
                    </div>
            		<!--/span-->
            	</div>        		
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('purchaseReceipt.index') }}">Cancel</a>
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