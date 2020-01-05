@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Bill of Material
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
            <div class="portlet box red ">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-database"></i> Form Bill of Material Produk {{ $id->name}}
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
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
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Tambah </a>
                                    <a button type="close" class="btn green btn-outline sbold" href="{{ route('product.index') }}">Selesai</a>
                                </td>
                            </tr>
                        </div>
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'product-bom.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Tambah Data</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Nama Barang</label>
                                                    {!! Form::select('material_id', [null=>'Please Select'] + $materials,[], array('class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Jumlah</label>
                                                    {!! Form::text('quantity', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Satuan</label>
                                                    {!! Form::select('uom_id', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            {{ Form::hidden('product_id', $id->id) }}
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
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Material Name</th>
                                <th>Material Quantity</th>
                                <th>Material UoM</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($boms as $key=>$data)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $data->Materials->name }}</td>
                                <td>{{ $data->quantity }}</td>
                                <td>{{ $data->Uoms->name }}</td>
                                <td>
                                    <a class="btn btn-xs btn-success modalMd" href="#" value="{{ action('Apps\ProductManagementController@editBom',['id'=>$data->id]) }}" title="Edit Data" data-toggle="modal" data-target="#modalMd"><i class="fa fa-edit"></i></a>
                                    {!! Form::open(['method' => 'POST','route' => ['product-bom.destroy', $data->id],'style'=>'display:inline']) !!}
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
@endsection