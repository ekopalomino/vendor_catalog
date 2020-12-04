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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nomor Sales Order</label>
                            {!! Form::text('sales_order', $data->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nomor Delivery Order</label>
                            {!! Form::text('delivery_order', $data->do_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nama Customer</label>
                            {!! Form::text('customer_name', $data->name, array('class' => 'form-control','readonly'=>'true')) !!}
                            {{Form::hidden('customer_id', $data->contact_id)}}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Status Pembelian</label>
                            {!! Form::text('status_id', $data->name, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-3">
            			<div class="form-group">
            				<label class="control-label">Metode Pembayaran</label>
                            {!! Form::text('pay_method', $data->method, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
            		</div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Termin Pembayaran</label>
                            {!! Form::text('pay_term', $data->terms, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3" id="is_cicil">
                        <div class="form-group">
                            <label class="control-label">Pembayaran Cicilan</label>
                            <select name="is_cicil" class="form-control">
                                <option value="">Please Select</option>
                                <option value="1">Ya</option>
                                <option value="2">Tidak</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="cicilan">
                        <div class="form-group">
                            <label class="control-label">Jumlah Cicilan</label>
                            {!! Form::number('total_terms', null, array('placeholder' => 'Termin','class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">PKP</label>
                            @if(($data->tax) == 1)
                            {!! Form::text('is_tax', "Ya", array('class' => 'form-control','readonly'=>'true')) !!}
                            @else
                            {!! Form::text('is_tax', "Tidak", array('class' => 'form-control','readonly'=>'true')) !!}
                            @endif
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">NPWP</label>
                            @isset($data->tax_no)
                            {!! Form::text('tax_id', $data->tax_no, array('class' => 'form-control','readonly'=>'true')) !!}
                            @endisset
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Total Sales</label>
                            {!! Form::number('amount', $data->total, array('placeholder' => 'Total Bayar','class' => 'form-control','required')) !!}
                        </div>
                    </div>
                    @if(($data->tax) == 1)
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Total Pajak</label>
                            {!! Form::number('tax_amount', $data->pajak, array('placeholder' => 'Total Pajak','class' => 'form-control')) !!}
                        </div>
                    </div>
                    @endif
            		<!--/span-->
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
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($details as $index =>$item)
                                <tr>
                                    <td>{!! Form::text('product[]', $item->product_name, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('shipment[]', $item->shipping, array('placeholder' => 'Produk','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::text('satuan[]', $item->uom_name, array('placeholder' => 'Produk','class' => 'form-control','readonly'=>'true')) !!}{{Form::hidden('uom_id[]', $item->uom)}}</td>
                                    <td>{!! Form::number('sale_price[]', $item->sale_price, array('placeholder' => 'Produk','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('sub_total[]', ($item->sale_price) * ($item->shipping), array('placeholder' => 'Produk','class' => 'form-control','readonly'=>'true')) !!}</td>
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
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection