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
            {!! Form::open(array('route' => 'invoice.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Sales Order</label>
                            @if(isset($findSale))
                            {!! Form::text('sales_order', $findSale->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                            @else
                            {!! Form::text('sales_order', $findDelivery->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                            @endif
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nomor Delivery Order</label>
                            {!! Form::text('delivery_order', $findDelivery->do_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Nama Customer</label>
                            {!! Form::text('customer_id', $findContact->company, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-2">
            			<div class="form-group">
            				<label class="control-label">Metode Pembayaran</label>
                            {!! Form::text('pay_method', $findContact->payment_method, array('class' => 'form-control','readonly'=>'true')) !!}
            			</div>
            		</div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Termin Pembayaran</label>
                            {!! Form::text('pay_term', $findContact->payment_terms, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">NPWP</label>
                            {!! Form::text('tax_id', $findContact->tax_no, array('class' => 'form-control','readonly'=>'true')) !!}
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
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                            <thead>
                                <tr>
                                    <th>Produk</th>
                                    <th>Jumlah</th>
                                    <th>Harga Satuan</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($findItem as $key=>$item)
                                <tr>
                                    <td>{!! Form::text('product[]', $item->product_name, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>
                                        @if(($item->remaining) > '0')
                                        {!! Form::number('shipment[]', $item->shipping, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}
                                        @else
                                        {!! Form::number('quantity[]', $item->shipping, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}
                                        @endif
                                    </td>
                                    <td>{!! Form::number('sale_price[]', $item->sale_price, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('sub_total[]', $item->sub_total, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
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
<script src="{{ asset('public/assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection