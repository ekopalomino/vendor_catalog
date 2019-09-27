@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Role Management
@endsection
@section('header.styles')
<link href="{{ asset('assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-database"></i>Data Hak Akses 
                    </div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Tambah Baru </a>
                                </td>
                            </tr>
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
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'role.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Tambah Hak Akses Baru</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Nama</label>
                                                    {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                                                    <table class="table table-bordered table-striped mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th>Permission</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        @foreach($permission as $value)
                                                            <tr>
                                                                <td>{{ Form::checkbox('permission[]', $value->id, false, array('class' => 'name')) }}
                                                                {{ $value->name }}</td>
                                                            </tr>
                                                        @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="modal-footer">
                                        <button type="close" class="btn dark btn-outline" data-dismiss="modal">Tutup</button>
                                        <button id="register" type="submit" class="btn green">Simpan</button>
                                    </div>
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
                    </div>
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Nama Hak Akses</th>
                				<th>Tgl Dibuat</th>
                				<th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($roles as $key => $role)
                			<tr>
                				<td>{{ $key+1 }}</td>
                				<td>{{ $role->name }}</td>
                				<td>{{date("d F Y H:i",strtotime($role->created_at)) }}</td>
                				<td>
                                    <a class="btn btn-xs btn-info modalMd" href="#" value="{{ action('Apps\UserManagementController@roleShow',['id'=>$role->id]) }}" title="Lihat Hak Akses" data-toggle="modal" data-target="#modalMd"><i class="fa fa-search"></i></a>
                                    <a class="btn btn-xs btn-success modalMd" href="#" value="{{ action('Apps\UserManagementController@roleEdit',['id'=>$role->id]) }}" title="Edit Data" data-toggle="modal" data-target="#modalMd"><i class="fa fa-edit"></i></a>
                                    {!! Form::open(['method' => 'POST','route' => ['role.destroy', $role->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
                                    {!! Form::button('<i class="fa fa-trash"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger','title'=>'Hapus Data']) !!}
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
<script>
    function ConfirmDelete()
    {
    var x = confirm("Yakin Data Akan Dihapus?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection