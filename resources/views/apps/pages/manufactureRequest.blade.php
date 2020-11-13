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
                    @can('Can Create Manufacture')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('manufacture-request.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> Buat Permintaan
                                </button>
                            </a>
                        </div> 
                    </div>
                    @endcan
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>MO Ref</th>
                                <th>Sales Ref</th>
                                <th>Produk</th>
                                <th>Jumlah</th>
                                <th>Deadline</th>
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
                                <td>{{ $val->sales_order }}</td>
                                <td>{{ $val->product_name }}</td>
                                <td>{{ $val->man_plan }}</td>
                                <td>
                                    @if(!empty($val->deadline))
                                    {{date("d F Y H:i",strtotime($val->deadline)) }}
                                    @endif
                                </td>
                                <td><label class="label label-sm label-info ">{{ $val->Statuses->name }}</td>
                                <td>{{ $val->created_by }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @can('Can Edit Manufacture')
                                    <a class="btn btn-xs btn-info modalMd" href="#" value="{{ action('Apps\ManufactureManagementController@checkStock',['id'=>$val->id]) }}" title="Cek Stok" data-toggle="modal" data-target="#modalMd"><i class="fa fa-search"></i></a>
                                    {!! Form::open(['method' => 'POST','route' => ['manufacture-request.approve', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
                                    {!! Form::button('<i class="fa fa-check"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Approve']) !!}
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
    var x = confirm("Permintaan Manufaktur Diterima ?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection