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
            {!! Form::open(array('route' => 'receiptPayment.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Purchase Order</label>
                            {!! Form::text('order_ref', $data->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Purchase Receipt</label>
                            {!! Form::text('ref_no', $data->ref_no, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Nama Supplier</label>
                            {!! Form::text('supplier_name', $data->Contacts->name, array('class' => 'form-control','readonly'=>'true')) !!}
                            {{Form::hidden('supplier_code', $data->supplier_id)}}
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Tgl Terima Barang</label>
                            {!! Form::text('delivery_date', date("d F Y H:i",strtotime($data->created_at)), array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Nama Bank</label>
                            {!! Form::text('bank_name', $data->Contacts->bank_name, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Akun Bank</label>
                            {!! Form::text('account_no', $data->Contacts->account_no, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Metode Pembayaran</label>
                            {!! Form::text('payment', $data->Contacts->Methods->name, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Termin Pembayaran</label>
                            {!! Form::text('terms', $data->Contacts->Terms->name, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Status PO</label>
                            {!! Form::text('status', $data->Status->name, array('placeholder' => 'Delivery Cost','class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Delivery Cost</label>
                            {!! Form::number('delivery_cost', null, array('placeholder' => 'Delivery Cost','class' => 'form-control')) !!}
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
                                    <th>Pajak</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data->Child as $item)
                                <tr>
                                    <td>{!! Form::text('product[]', $item->product_name, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('pesanan[]', $item->orders, array('placeholder' => 'Quantity','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('kiriman[]', $item->received, array('placeholder' => 'Quantity','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::text('uoms[]', $item->Uoms->name, array('class' => 'form-control','readonly'=>'true')) !!}
                                        {{Form::hidden('uom_id[]', $item->uom_id)}}
                                    </td>
                                    <td>{!! Form::text('sub_total[]', $item->sub_total, array('class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('tax[]', null, array('class' => 'form-control')) !!}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div> 
                <div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('purchaseReceipt.index') }}">Cancel</a>
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