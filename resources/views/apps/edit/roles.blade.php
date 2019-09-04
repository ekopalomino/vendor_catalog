@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			{!! Form::model($role, ['method' => 'POST','route' => ['role.update', $role->id]]) !!}
            @csrf
            <div class="row">
            	<div class="col-md-12">
                	<div class="form-group">
                		<label class="control-label">Nama Role</label>
                		{!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                	</div>
                </div>
            </div>
            <div class="row">                                        
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Hak Akses</label>
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
                                        <td>{{ Form::checkbox('permission[]', $value->id, in_array($value->id, $rolePermissions) ? true : false, array('class' => 'name')) }}
                                            {{ $value->name }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
@endsection