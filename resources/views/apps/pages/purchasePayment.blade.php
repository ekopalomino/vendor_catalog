@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Invoice Management
@endsection
@section('header.styles')
<link href="{{ asset('assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-database"></i>Data Pembayaran 
                    </div>
                </div>
                <div class="portlet-body">
                    @can('Can Create Finance')
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Pembayaran Baru </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    @endcan
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'purchaseReceipt.store','method'=>'POST','files'=>'true')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Buat Pembayaran Baru</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Order Ref</label>
                                                    {!! Form::select('purchase_order', [null=>'Please Select'] + $orders,[], array('class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Jumlah</label>
                                                    {!! Form::number('purchase_amount', null, array('placeholder' => 'Jumlah Pembelian','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Upload Invoice</label>
                                                    {!! Form::file('purchase_invoice', null, array('placeholder' => 'Invoice Pembelian','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                    <div class="modal-footer">
                                        <button type="close" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                        <button id="register" type="submit" class="btn green">Save changes</button>
                                    </div>
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
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
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Order Ref</th>
                                <th>Invoice Ref</th>
                                <th>Supplier</th>
                                <th>Total Harga</th>
                                <th>Status</th>
                				<th>Dibuat Oleh</th>
                				<th>Tgl Dibuat</th>
                                <th>Pembayaran</th>
                				<th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $val)
                			<tr>
                				<td>{{ $key+1 }}</td>
                                <td>{{ $val->Purchases->order_ref }}</td>
                                <td>{{ $val->reference_id }}</td>
                                <td>{{ $val->Purchases->Suppliers->name}}</td>
                                <td>{{ number_format($val->Purchases->total,2,',','.')}}</td>
                                <td><label class="label label-sm label-success">{{ $val->Statuses->name }}</label></td>
                                <td>{{ $val->created_by }}</td> 
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @if(!empty($val->payment_made))
                                    {{date("d F Y H:i",strtotime($val->payment_made)) }}
                                    @endif
                                </td>
                                <td>
                                    @can('Can Edit Finance')
                                    @if($val->status_id == '106da5a6-2c71-4a08-9342-db3fd8ebf71e')
                                    {!! Form::open(['method' => 'POST','route' => ['purchaseReceipt.payment', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmAccept()']) !!}
                                    {!! Form::button('<i class="fa fa-bank"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Terima Bayar']) !!}
                                    {!! Form::close() !!}
                                    @endif
                                    @endcan
                                </td>
                			</tr>
                            @endforeach
                		</tbody>
                	</table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/table-datatables-buttons.min.js') }}" type="text/javascript"></script>
<script>
    function ConfirmAccept()
    {
    var x = confirm("Pembayaran Akan Dilakukan?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection