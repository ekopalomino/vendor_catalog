@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                        <th>No</th>
                		<th>Produk</th>
                		<th>Jumlah</th>
                		<th>Satuan</th>
                	</tr>
                </thead>
                <tbody>
                	@foreach($data as $key=>$val)
                	<tr>
                        <td>{{ $key+1 }}</td>
	                	<td>{{ $val->Items->name }}</td>
	                	<td>{{ $val->quantity}}</td>
                        <td>{{ $val->Uoms->name}}</td>
	                </tr>
                	@endforeach
                </tbody>
            </table>         
		</div>
	</div>
</div>       
@endsection