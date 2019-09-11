@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Sales Management
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
                        <i class="fa fa-database"></i>Sales Order Data 
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('sales.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> New Sales Order
                            </button></a>
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
                    </div>
                	<table class="table table-striped table-bordered table-hover" id="sample_1">
                		<thead>
                			<tr>
                                <th>No</th>
                				<th>SO Ref</th>
                                <th>Customer Name</th>
                                <th>Qty Sale</th>
                                <th>Total Sale</th>
                				<th>Created By</th>
                				<th>Created At</th>
                				<th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($sales as $key => $sale)
                			<tr>
                				<td>{{ $key+1 }}</td>
                                <td>{{ $sale->order_ref }}</td>
                                <td>{{ $sale->Customers->name}}</td>
                                <td>{{ number_format($sale->quantity,2,',','.')}}</td>
                                <td>{{ number_format($sale->total,2,',','.')}}</td>
                                <td>{{ $sale->Author->name }}</td>
                                <td>{{date("d F Y H:i",strtotime($sale->created_at)) }}</td>
                                <td>
                                    <a class="btn btn-xs btn-success" title="Edit" href="{{ route('sales.show',$sale->id) }}"><i class="fa fa-search"></i></a>
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