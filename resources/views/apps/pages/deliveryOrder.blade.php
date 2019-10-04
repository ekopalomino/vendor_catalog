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
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Proses SO </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'delivery.process','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Add Delivery Order</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Sales Order</label>
                                                    {!! Form::select('sales_ref', [null=>'Please Select'] + $sales,[], array('class' => 'form-control')) !!}
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
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Delivery Order</th>
                                <th>Sales Order</th>
                				<th>Status</th>
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
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->sales_ref }}</td>
                                <td>
                                    @if(($val->status_id) == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                                    <label class="badge badge-danger">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="badge badge-success">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>{{ $val->Author->name }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->updated_at)) }}</td>
                                <td>
                                    {!! Form::open(['method' => 'POST','route' => ['delivery.done', $val->id],'style'=>'display:inline']) !!}
                                    {!! Form::button('<i class="fa fa-truck"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Change Status']) !!}
                                    {!! Form::close() !!}
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