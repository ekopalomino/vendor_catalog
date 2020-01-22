@extends('apps.layouts.main')
@section('content')
<div class="page-content">
    <div class="row">
       <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>Material</th>
                                <th>Jumlah</th>
                                <th>Satuan</th>
                                <th>Status Stok</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $val->Materials->name }}</td>
                                <td>{{ $val->quantity }}</td>
                                <td></td>
                                <td>{{ $val->Statuses->name }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
    </div>
</div>
@endsection
@section('')