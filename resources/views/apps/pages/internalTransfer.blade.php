@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Mutasi Barang
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
                        <i class="fa fa-database"></i>Data Mutasi Internal 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Buat Mutasi </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'internal.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Buat Mutasi Internal</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Produk</label>
                                                    {!! Form::select('product_id', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Gudang Asal</label>
                                                    {!! Form::select('from_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Gudang Tujuan</label>
                                                    {!! Form::select('to_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Jumlah</label>
                                                    {!! Form::text('amount', null, array('placeholder' => 'Amount','class' => 'form-control')) !!}
                                                </div>
                                                 <div class="form-group">
                                                    <label class="control-label">Satuan</label>
                                                    {!! Form::select('convert', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}
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
                				<th>Produk</th>
                                <th>Gudang Asal</th>
                                <th>Gudang Tujuan</th>
                                <th>Jumlah</th>
                                <th>Tgl Dibuat</th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key=>$val)
                            <tr>      
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->Products->name }}</td>
                                <td>{{ $val->From->name }}</td>
                                <td>{{ $val->To->name }}</td>
                                <td>{{ $val->amount }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>    
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