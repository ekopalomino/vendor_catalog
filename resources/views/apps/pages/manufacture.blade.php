@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Manufactures
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
                        <i class="fa fa-database"></i>Data Manufaktur 
                    </div>
                </div>
                <div class="portlet-body">
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>MO Ref</th>
                                <th>Produk</th>
                                <th>Jumlah</th>
                                <th>Hasil</th>
                                <th>Deadline</th>
                                <th>Status</th>
                				<th>Mulai Produksi</th>
                                <th>Selesai Produksi</th>
                				<th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>
                                    {{ $val->product_name }}
                                </td>
                                <td>
                                    {{ $val->man_plan }}
                                </td>
                                <td>
                                    {{ $val->man_result }}
                                </td>
                                <td>
                                    @if(!empty($val->deadline))
                                    {{date("d F Y",strtotime($val->deadline)) }}
                                    @endif
                                </td>
                                <td><label class="label label-sm label-danger">{{ $val->Statuses->name }}</td>
                                <td>
                                    @if(!empty($val->start_production))
                                    {{date("d F Y H:i",strtotime($val->start_production)) }}
                                    @endif
                                </td>
                                <td>
                                    @if(!empty($val->end_production))
                                    {{date("d F Y H:i",strtotime($val->end_production)) }}
                                    @endif
                                </td>
                                <td>
                                    @if($val->status_id == '45e139a2-a423-46ef-8901-d07b25b461a3')
                                    {!! Form::open(['method' => 'POST','route' => ['manufacture.process', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmStart()']) !!}
                                    {!! Form::button('<i class="fa fa-play"></i>',['type'=>'submit','class' => 'btn btn-xs btn-success','title'=>'Mulai Proses Manufaktur']) !!}
                                    {!! Form::close() !!}
                                    @endif
                                    @if($val->status_id == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')                                    
                                    <a class="btn btn-xs btn-danger modalMd" href="#" value="{{ action('Apps\ManufactureManagementController@manufactureDone',['id'=>$val->id]) }}" title="Selesai Proses Manufaktur" data-toggle="modal" data-target="#modalMd"><i class="fa fa-stop"></i></a>
                                    @endif
                                    <a class="btn btn-xs btn-info" title="Lihat MO" href="{{ route('manufacture.show',$val->id) }}"><i class="fa fa-print"></i></a>
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
    function ConfirmStart()
    {
    var x = confirm("Manufacture Process Akan Dimulai?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection