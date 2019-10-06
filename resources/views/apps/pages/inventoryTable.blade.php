@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Laporan Stok - Tabel
@endsection
@section('content')
<div class="page-content">
	<div class="portlet box red ">
		<div class="portlet-title">
			<div class="caption">
				<i class="fa fa-database"></i> Query Laporan Stok
			</div>
		</div>
		<div class="portlet-body form">
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
			{!! Form::open(array('route' => 'inventory-table.view','method'=>'POST', 'class' => 'horizontal-form')) !!}
			@csrf
			<div class="form-body">
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label class="control-label">Tanggal Awal</label>
							{!! Form::date('from_date', '', array('id' => 'datepicker','class' => 'form-control')) !!}
						</div>
					</div>
					<div class="col-md-5">
						<div class="form-group">
							<label class="control-label">Tanggal Akhir</label>
							{!! Form::date('to_date', '', array('id' => 'datepicker','class' => 'form-control')) !!}
						</div>
					</div>
				</div>
				<div class="form-actions left">
					<a button type="button" class="btn default" href="{{ route('sales.index') }}">Cancel</a>
					<button type="submit" class="btn blue">
						<i class="fa fa-check"></i> Save
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection