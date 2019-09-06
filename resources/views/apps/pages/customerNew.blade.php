@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Customer Management
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
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-database"></i>Customer Card 
                    </div>
                    <div class="actions">
                        <div class="btn-group">
                            <a href="{{ route('customer.create') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> New Customer</button></a>
                        </div>
                    </div>
                </div>
                <div class="portlet-body">
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
                    <div class="tiles"> 
                        @foreach($data as $key=>$val)
                    	<div class="tile double bg-blue-madison">
                            <div class="tile-body">
                                <img class="img-circle" src="/storage/avatars/user.jpg" alt="" style="height:89px;">
                                    <h4>{{ $val->name }}</h4>
                                    <p> {{ $val->company }} </p>
                            </div>
                            <div class="tile-object">
                                <div class="number">
                                    <a href="{{ route('customer.create') }}"><button id="sample_editable_1_new" class="btn btn-default"> View</button></a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
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