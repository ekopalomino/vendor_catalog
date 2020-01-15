@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Delivery Order
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
                        <i class="fa fa-database"></i>Delivery Order
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
                    @can('Can Create Inventory')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('delivery.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> DO Baru
                            </button></a>
                        </div>
                    </div>
                    @endcan
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Delivery Order</th>
                                <th>Sales Order</th>
                				<th>Status</th>
                                <th>Kurir</th>
                                <th>No Resi</th>
                                <th>Dibuat Oleh</th>
                                <th>Tgl Dibuat</th>
                                <th>Tgl Dikirim</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->do_ref }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>
                                    @if(($val->status_id) == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                                    <label class="label label-sm label-danger">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="label label-sm label-success">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>{{ $val->Courier->delivery_name }}</td>
                                <td>{{ $val->receipt }}</td>
                                <td>{{ $val->created_by }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->updated_at)) }}</td>
                                <td>
                                    <a class="btn btn-xs btn-info" title="Print DO" href="{{ route('delivery.print',$val->id) }}"><i class="fa fa-print"></i></a>
                                    @can('Can Edit Inventory')
                                    @if(($val->status_id) == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                                    <a class="btn btn-xs btn-warning modalMd" href="#" value="{{ action('Apps\InventoryManagementController@deliveryReceipt',['id'=>$val->id]) }}" title="Input Resi" data-toggle="modal" data-target="#modalMd"><i class="fa fa-truck"></i></a>
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
@endsection