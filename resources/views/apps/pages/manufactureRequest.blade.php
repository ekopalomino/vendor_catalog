@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Permintaan Manufaktur
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
                        <i class="fa fa-database"></i>Data Permintaan Manufaktur 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Buat Baru </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'manufacture-request.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Buat Permintaan Manufaktur</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Nama Barang</label>
                                                    {!! Form::select('product_id', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Jumlah</label>
                                                    {!! Form::text('quantity', null, array('placeholder' => 'Jumlah','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Satuan</label>
                                                    {!! Form::select('uom_id', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}
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
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Request Ref</th>
                                <th>Produk</th>
                                <th>Jumlah</th>
                                <th>Satuan</th>
                                <th>Status</th>
                				<th>Dibuat</th>
                				<th>Tgl Dibuat</th>
                				<th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->Products->name }}</td>
                                <td>{{ $val->quantity }}</td>
                                <td>{{ $val->Uoms->name }}</td>
                                <td><label class="badge badge-info">{{ $val->Statuses->name }}</td>
                                <td>{{ $val->Author->name }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    <a class="btn btn-xs btn-info modalMd" href="#" value="{{ action('Apps\ManufactureManagementController@checkStock',['id'=>$val->id]) }}" title="Cek Stok" data-toggle="modal" data-target="#modalMd"><i class="fa fa-search"></i></a>
                                    {!! Form::open(['method' => 'POST','route' => ['make.manufacture', $val->id],'style'=>'display:inline']) !!}
                                    {!! Form::button('<i class="fa fa-check"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Approve']) !!}
                                    {!! Form::close() !!}
                                    <a class="btn btn-xs btn-success modalMd" href="#" value="{{ action('Apps\ManufactureManagementController@makeManufacture',['id'=>$val->id]) }}" title="Approve" data-toggle="modal" data-target="#modalMd"><i class="fa fa-check"></i></a>
                                    <a class="btn btn-xs btn-danger modalMd" href="#" value="{{ action('Apps\UserManagementController@userEdit',['id'=>$val->id]) }}" title="Reject" data-toggle="modal" data-target="#modalMd"><i class="fa fa-remove"></i></a>
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