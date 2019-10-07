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
                        <i class="fa fa-database"></i>Data Invoice 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Invoice Baru </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'invoice.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Buat Invoice Baru</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Sales Order</label>
                                                    {!! Form::select('sales_order', [null=>'Please Select'] + $orders,[], array('class' => 'form-control')) !!}
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
                				<th>Sales Order</th>
                                <th>Invoice Ref</th>
                                <th>Customer</th>
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
                                <td>{{ $val->Sales->order_ref }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->Sales->Customers->name}}</td>
                                <td>{{ number_format($val->Sales->total,2,',','.')}}</td>
                                <td><label class="badge badge-success">{{ $val->Statuses->name }}</label></td>
                                <td>{{ $val->created_by }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @if(!empty($val->payment_received))
                                    {{date("d F Y H:i",strtotime($val->payment_received)) }}
                                    @endif
                                </td>
                                <td>
                                    <a class="btn btn-xs btn-info" title="Lihat Invoice" href="{{ route('invoice.show',$val->id) }}"><i class="fa fa-search"></i></a>
                                    @if($val->status_id == '3da32f6e-494f-4b61-b010-7ccc0e006fb3')
                                    {!! Form::open(['method' => 'POST','route' => ['invoice.payment', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmAccept()']) !!}
                                    {!! Form::button('<i class="fa fa-bank"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Terima Bayar']) !!}
                                    {!! Form::close() !!}
                                    @endif
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
    var x = confirm("Pembayaran Sudah Diterima?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection