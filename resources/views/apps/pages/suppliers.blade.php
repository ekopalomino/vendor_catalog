@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Supplier Management
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
                        <i class="fa fa-database"></i>Supplier Table 
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
                    @can('Can Create Contact')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('supplier.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> New Supplier
                            </button></a>
                        </div>
                    </div>
                    @endcan
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Supplier ID</th>
                				<th>Name</th>
                				<th>Email</th>
                				<th>Address</th>
                				<th>Status</th>
                				<th>Created At</th>
                				<th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $val)
                			<tr>
                				<td>{{ $key+1 }}</td>
                                <td>{{ $val->ref_id }}</td>
                				<td>{{ $val->name }}</td>
                                <td>{{ $val->email }}</td>
                                <td>{{ $val->billing_address }}</td>
                				<td><label class="label label-sm label-info">{{ $val->Statuses->name }}</label></td>
                				<td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                				<td>
                                    @can('Can Edit Contact')
                                    <a class="btn btn-xs btn-success" href="{{ route('supplier.edit',$val->id) }}" title="Edit Supplier" ><i class="fa fa-edit"></i></a>
                                    @can('Can Delete Contact')
                                    {!! Form::open(['method' => 'POST','route' => ['supplier.destroy', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
                                    {!! Form::button('<i class="fa fa-trash"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger','title'=>'Delete Customer']) !!}
                                    {!! Form::close() !!}
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
    function ConfirmDelete()
    {
    var x = confirm("Supplier Akan Dihapus?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection