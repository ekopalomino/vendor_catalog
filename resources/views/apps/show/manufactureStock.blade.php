@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                		<th>Material</th>
                		<th>Kebutuhan</th>
                		<th>Tersedia</th>
                        <th>Satuan</th>
                		<th>Status</th>
                	</tr>
                </thead>
                <tbody>
                	@foreach($data as $key=>$val)
                	<tr>
	                	<td>{{ $val->material_id }}</td>
	                	<td>{{ $val->quantity * $val->qty }}</td>
	                	<td>{{ $val->closing_amount }}</td>
                        <td>{{ $val->Uoms->name}}</td>
	                	<td>
                            @if((($val->quantity) * ($val->qty)) > ($val->closing_amount))
                            <label class="badge badge-danger">Stok Tidak Cukup
                            @else      
                            <label class="badge badge-success">Stok Cukup
                            @endif
                        </td>
	                </tr>
                	@endforeach
                </tbody>
            </table>         
		</div>
	</div>
</div>       
@endsection