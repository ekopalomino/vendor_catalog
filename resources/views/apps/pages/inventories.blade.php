@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Inventory
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
                        <i class="fa fa-database"></i>Inventory 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <tr>
                                <td>
                                    <a class="btn red btn-outline sbold" data-toggle="modal" href="#basic"> Stok Awal </a>
                                </td>
                            </tr>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="modal fade" id="basic" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    {!! Form::open(array('route' => 'initial.stock','method'=>'POST')) !!}
                                    @csrf
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Add Initial Stock</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Product</label>
                                                    {!! Form::select('product_id', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Warehouse</label>
                                                    {!! Form::select('warehouse_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Amount</label>
                                                    {!! Form::text('amount', null, array('placeholder' => 'Amount','class' => 'form-control')) !!}
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
                				<th>Product Name</th>
                                <th>Product Location</th>
                                <th>Opening Stock</th>
                                <th>Closing Stock</th>
                                <th>Stock Status</th>
                				<th>Created At</th>
                                <th></th>
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
                                    <a class="btn btn-xs btn-info modalMd" href="#" value="{{ action('Apps\InventoryManagementController@stockCard',['id'=>$product->id]) }}" title="Stock Card" data-toggle="modal" data-target="#modalMd"><i class="fa fa-search"></i></a>
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