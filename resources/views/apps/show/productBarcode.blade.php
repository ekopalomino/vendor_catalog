@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<img src="data:image/png;base64,{{DNS1D::getBarcodePNG($data->barcode, 'UPCA')}}" alt="barcode" />
		</div>
	</div>
</div>       
@endsection