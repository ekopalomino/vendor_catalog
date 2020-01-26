@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Retur Barang Penjualan 
@endsection
@section('header.styles')
<link href="{{ asset('public/assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('public/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('public/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption"> 
                        <i class="fa fa-database"></i>Retur Barang Penjualan 
                    </div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    @can('Can Create Inventory')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('deliveryRetur.search') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> Buat Retur
                            </button></a>
                        </div>
                    </div>
                    @endcan
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Sales Order</th>
                				<th>Produk</th>
                                <th>Jumlah Pesanan</th>
                                <th>Jumlah Retur</th>
                                <th>Alasan Retur</th>
                                <th>Status</th>
                				<th>Tgl Update</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $val)
                			<tr>
                				<td>{{ $key+1 }}</td>
                				<td>{{ $val->sales_order }}</td>
                                <td>
                                    @foreach($val->Items as $item)
                                    <ul>
                                        <li>{{ $item->product_name }}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach($val->Items as $item)
                                    <ul>
                                        <li>{{ $item->sales_qty }}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach($val->Items as $item)
                                    <ul>
                                        <li>{{ $item->retur_qty }}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach($val->Items as $item)
                                    <ul>
                                        <li>{{ $item->Reason->name }}</li>
                                    </ul>
                                    @endforeach
                                </td>
                                <td>{{ $val->Status->name }}</td>
                				<td>{{date("d F Y H:i",strtotime($val->updated_at)) }}</td>
                                <td>
                                    
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
<script src="{{ asset('public/assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('public/assets/pages/scripts/table-datatables-buttons.min.js') }}" type="text/javascript"></script>
@endsection