@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Purchase Receipt
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
                        <i class="fa fa-database"></i>Penerimaan Barang Luar
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Terima Barang </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'receipt.store','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Add Purchase Receipt</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Purchase Order</label>
                                                    {!! Form::select('order_ref', [null=>'Please Select'] + $data,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Warehouse</label>
                                                    {!! Form::select('warehouse_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
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
                                <th>Ref No</th>
                                <th>Nama Supplier</th>
                                <th>Total Harga</th>
                                <th>Diminta Oleh</th>
                                <th>Tgl Dibuat</th>
                                <th>Status</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($details as $key => $val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->Suppliers->name}}</td>
                                <td>{{ number_format($val->total,2,',','.')}}</td>
                                <td>{{ $val->Author->name }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @if(($val->status) == '458410e7-384d-47bc-bdbe-02115adc4449')
                                    <label class="badge badge-success">{{ $val->Statuses->name }}</label>
                                    @elseif(($val->status) == '8083f49e-f0aa-4094-894f-f64cd2e9e4e9')
                                    <label class="badge badge-warning">{{ $val->Statuses->name }}</label>
                                    @elseif(($val->status) == '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43')
                                    <label class="badge badge-info">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="badge badge-danger">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>
                                    <a class="btn btn-xs btn-info" title="Show Data" href="{{ route('purchase.show',$val->id) }}"><i class="fa fa-search"></i></a>
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