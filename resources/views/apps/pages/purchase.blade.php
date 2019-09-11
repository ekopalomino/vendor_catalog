@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Purchase Management
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
                        <i class="fa fa-database"></i>Purchase Order Data 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('request.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">New Request
                            </button></a>
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
                    </div>
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Ref No</th>
                                <th>Supplier Name</th>
                                <th>Qty Sale</th>
                                <th>Total Sale</th>
                				<th>Request By</th>
                				<th>Created At</th>
                                <th>Status</th>
                				<th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $val)
                			<tr>
                				<td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->Suppliers->name}}</td>
                                <td>{{ number_format($val->quantity,2,',','.')}}</td>
                                <td>{{ number_format($val->total,2,',','.')}}</td>
                                <td>{{ $val->Author->name }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @if(($val->status) == '458410e7-384d-47bc-bdbe-02115adc4449')
                                    <label class="badge badge-success">{{ $val->Statuses->name }}</label>
                                    @elseif(($val->status) == '8083f49e-f0aa-4094-894f-f64cd2e9e4e9')
                                    <label class="badge badge-warning">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="badge badge-danger">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>
                                    <a class="btn btn-xs btn-info" title="Show Data" href="{{ route('request.form',$val->id) }}"><i class="fa fa-search"></i></a>
                                    @if(($val->status) == '8083f49e-f0aa-4094-894f-f64cd2e9e4e9')
                                    <a class="btn btn-xs btn-success" title="Approve Data" href="{{ route('request.form',$val->id) }}"><i class="fa fa-check"></i></a>
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
@endsection