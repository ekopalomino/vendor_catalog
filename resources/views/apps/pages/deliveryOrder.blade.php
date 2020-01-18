@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Delivery Order
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
                        <i class="fa fa-database"></i>Delivery Order
                    </div>
                </div>
                <div class="portlet-body">
                    @can('Can Create Inventory')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('delivery.search') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> Proses PO
                            </button></a>
                        </div>
                    </div>
                    @endcan
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Sales Order</th>
                				<th>Nama Barang</th>
                                <th>Jumlah Pesan</th>
                                <th>Jumlah Kirim</th>
                                <th>Status</th>
                                <th>Tgl Proses</th>
                                <th>Tgl Kirim</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>
                                    @foreach($val->Child as $child)
                                    <ul>
                                        <li>{{$child->product_name}}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach($val->Child as $child)
                                    <ul>
                                        <li>{{$child->product_quantity}}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach($val->Child as $child)
                                    <ul>
                                        <li>{{$child->product_shipment}}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @if(($val->status_id) == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                                    <label class="label label-sm label-danger">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="label label-sm label-success">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->updated_at)) }}</td>
                                <td>
                                    <a class="btn btn-xs btn-success modalLg" href="#" value="{{ action('Apps\InventoryManagementController@doShow',
                                        ['id'=>$val->id]) }}" title="Lihat Item {{$val->do_ref}}" data-toggle="modal" data-target="#modalLg"><i class="fa fa-search"></i>
                                    </a>
                                    <a class="btn btn-xs btn-info" title="Print DO" href="{{ route('delivery.print',$val->id) }}"><i class="fa fa-print"></i></a>
                                    @can('Can Create Receipt')
                                    @if(($val->status_id) == 'c2fdba02-e765-4ee8-8c8c-3073209ddd26')
                                    <a class="btn btn-xs btn-warning modalMd" href="#" value="{{ action('Apps\InventoryManagementController@doReceipt',
                                        ['id'=>$val->id]) }}" title="Input Resi" data-toggle="modal" data-target="#modalMd"><i class="fa fa-truck"></i>
                                    </a>
                                    @endif
                                    @endcan
                                    {!! Form::open(['method' => 'POST','route' => ['delivery.cancel', $val->id],'style'=>'display:inline','onsubmit' => 'return ConfirmDelete()']) !!}
                                    {!! Form::button('<i class="fa fa-close"></i>',['type'=>'submit','class' => 'btn btn-xs btn-danger','title'=>'Cancel DO']) !!}
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
<script>
    function ConfirmDelete()
    {
    var x = confirm("Pengiriman Akan Dibatalkan?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection