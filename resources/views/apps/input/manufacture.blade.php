@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Buat Manufaktur Order
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Manufaktur Order
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
                {!! Form::open(array('route' => 'manufacture.calculate','method'=>'POST', 'class' => 'form-horizontal')) !!}
                @csrf
                <div class="form-body">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Produk</label>
                        <div class="col-md-4">
                            {!! Form::select('product_id', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Jumlah</label>
                        <div class="col-md-4">
                            {!! Form::number('quantity', null, array('placeholder' => 'Jumlah','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <!-- <table class="table table-striped table-bordered table-hover" id="sample_2">
                    	<thead>
                    		<tr>
                    			<th>Material</th>
                    			<th>Jumlah</th>
                    			<th>Satuan</th>
                    			<th>Status Stok</th>
                    		</tr>
                    	</thead>
                    	<tbody>
                    		<tr>
                    			<td></td>
                    			<td></td>
                    			<td></td>
                    			<td></td>
                    		</tr>
                    	</tbody>
                    </table> -->
                    <div class="form-actions right">
                        <a button type="button" class="btn default" href="{{ route('sales.index') }}">Kembali</a>
                        <button type="submit" class="btn blue">
                        <i class="fa fa-check"></i> Kalkulasi</button>
                    </div>
                </div>
                {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets//global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/components-date-time-pickers.min.js') }}" type="text/javascript"></script>
@endsection