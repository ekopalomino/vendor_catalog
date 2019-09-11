@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Inventory Adjustment
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
                        <i class="fa fa-database"></i>Inventory Adjusment
                    </div>
                </div>
                <div class="portlet-body">
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>Product Name</th>
                                <th>Product Location</th>
                                <th>Product UOM</th>
                                <th>Opening Stock</th>
                                <th>Closing Stock</th>
                                <th>Stock Status</th>
                				<th>Created At</th>
                                <th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $product)
                			<tr>
                				<td>{{ $key+1 }}</td>
                				<td>{{ $product->Products->name }}</td>
                                <td>
                                    @if(!empty($product->warehouse_id))
                                    {{ $product->Locations->name }}
                                    @endif
                                </td>
                                <td>{{ $product->Products->Uoms->name }}</td>
                                <td>{{ $product->opening_amount }}</td>
                                <td>{{ $product->closing_amount }}</td>
                                <td>
                                    @if( ($product->status_id) == '72ceba35-758d-4bc2-9295-fd9f9f393c56')
                                        <label class="badge badge-danger">No Stock</label>
                                    @elseif(($product->status_id) == 'f8b26119-fb0c-40ff-85c0-8fb85696f220')
                                        <label class="badge badge-warning">Low On Stock</label>
                                    @elseif(($product->status_id) == '533806c2-19dc-4b24-886f-d783a8b448b7')
                                        <label class="badge badge-success">Stock Normal</label>
                                    @endif
                                </td>
                				<td>{{date("d F Y H:i",strtotime($product->created_at)) }}</td>
                                <td>
                                    @can('Can Create Adjustment')
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
<script src="{{ asset('assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/table-datatables-buttons.min.js') }}" type="text/javascript"></script>
@endsection