@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Penyesuaian Persediaan
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
                        <i class="fa fa-database"></i>Penyesuaian Persediaan
                    </div>
                </div>
                <div class="portlet-body">
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Produk</th>
                                <th>Gudang</th>
                                <th>Satuan</th>
                                <th>Stok Awal</th>
                                <th>Stok Akhir</th>
                				<th>Tgl Dibuat</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $product)
                			<tr>
                				<td>{{ $key+1 }}</td>
                				<td>{{ $product->Products->name }}</td>
                                <td>
                                    @if(!empty($product->warehouse_name))
                                    {{ $product->warehouse_name }}
                                    @endif
                                </td>
                                <td>{{ $product->Products->Uoms->name }}</td>
                                <td>{{ number_format($product->opening_amount,2,',','.')}}</td>
                                <td>{{ number_format($product->closing_amount,2,',','.')}}</td>
                				<td>{{date("d F Y H:i",strtotime($product->created_at)) }}</td>
                                <td>
                                    @can('Can Approve Inventory')
                                    <a class="btn btn-xs btn-success modalMd" href="#" value="{{ action('Apps\InventoryManagementController@makeAdjust',['id'=>$product->id]) }}" title="Make Adjustment" data-toggle="modal" data-target="#modalMd"><i class="fa fa-edit"></i></a>
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
<script src="{{ asset('public/assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('public/assets/pages/scripts/table-datatables-buttons.min.js') }}" type="text/javascript"></script>
@endsection