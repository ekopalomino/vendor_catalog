@extends('apps.layouts.main')
@section('pageTitle', 'User Profile')
@section('content')
<div class="page-content">
<h1 class="page-title"> Profil Perusahaan</h1>       
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-body">
                <ul class="nav nav-pills">
                    <li class="active">
                        <a href="#tab_2_1" data-toggle="tab"> Home </a>
                    </li>
                    <li>
                        <a href="#tab_2_2" data-toggle="tab"> Profile </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane face active in" id="tab_2_1">
                        <div class="thumbnail" style="min-height: 514px;">
                            <img class="rounded-circle" src="http://fibertekno.iteos.tech/public/storage/avatars/{{ $user->avatar }}" />
                            <div class="caption">
                                <h3>{{$user->Contacts->company}}</h3>
                                <p></p>
                                <p>Nama User : {{ $user->name }}</p>
                                <p>Register Date :  {{ date("d F Y",strtotime($user->created_at)) }} jam {{date("g:ha",strtotime($user->created_at)) }}</p>
                                <p>Login Terakhir : {{ date("d F Y",strtotime($user->last_login_at)) }} jam {{date("g:ha",strtotime($user->last_login_at)) }}</p> 
                            </div>
                            <h3>Ubah Avatar</h3>
                    {!! Form::open(array('route' => 'user.avatar','method'=>'POST', 'files' => true)) !!}
                        @csrf
                        <div class="form-group">
                            {!! Form::file('avatar', array('placeholder' => 'Avatar File','class' => 'form-control')) !!}
                            <small id="fileHelp" class="form-text text-muted"> Ukuran avatar tidak lebih dari 150x150.</small>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    {!! Form::close() !!}
                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="col-lg-3">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption">
                    </div>
                </div>
                <div class="portlet-body">
                <h3>Ubah Avatar</h3>
                    {!! Form::open(array('route' => 'user.avatar','method'=>'POST', 'files' => true)) !!}
                        @csrf
                        <div class="form-group">
                            {!! Form::file('avatar', array('placeholder' => 'Avatar File','class' => 'form-control')) !!}
                            <small id="fileHelp" class="form-text text-muted"> Ukuran avatar tidak lebih dari 150x150.</small>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <h3>Ubah Password</h3>
            {!! Form::open(array('route' => 'user.password','method'=>'POST', 'files' => true)) !!}
                @csrf
                <div class="form-group">
                    <label class="control-label">Password</label>
                    {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                </div>
                <div class="form-group">
                    <label class="control-label">Confirm Password</label>
                    {!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            {!! Form::close() !!}
        </div>
    </div>
</div>       
@endsection