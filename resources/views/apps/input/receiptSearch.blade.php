@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Purchase Payment 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Pembayaran Barang Supplier 
            </div>
        </div>
        <div class="portlet-body form">
            <div class="m-heading-1 border-red m-bordered">
                <h3>Petunjuk Pengisian</h3>
                <p> Pilih <strong>Nomor Purchase Order</strong> untuk full delivery atau <strong>Nomor Receipt Purchase</strong> untuk partial delivery</p>
            </div>
            {!! Form::open(array('route' => 'purchaseReceipt.get','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari Purchase Order</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $purchaseOrder,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Cari Receipt Purchase</label>
                            {!! Form::select('receipt_ref', [null=>'Please Select'] + $receiptPurchase,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Supplier</label>
                            {!! Form::text('supplier', null, array('placeholder' => 'ID Supplier','class' => 'form-control','disabled')) !!}
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
                                    <th>Satuan</th>
                                    <th>Sub Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>{!! Form::text('product[]', null, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'UOM','class' => 'form-control','disabled')) !!}</td>
                                    <td>{!! Form::number('quantity[]', null, array('placeholder' => 'Sub Total','class' => 'form-control','disabled')) !!}</td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('purchaseReceipt.index') }}">Cancel</a>
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