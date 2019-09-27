@extends('apps.layouts.main')
@section('content')
<div class="page-content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">                               
                <div class="form-group">
                    <strong>Nama Hak Akses:</strong>
                    {{$role->name}}
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                    <table class="table table-bordered table-striped mb-0">
                        <thead>
                            <tr>
                                <th>Hak Akses</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(!empty($rolePermissions))
                            @foreach($rolePermissions as $value)
                            <tr>
                                <td>{{ $value->name }}</td>
                            </tr>
                            @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection