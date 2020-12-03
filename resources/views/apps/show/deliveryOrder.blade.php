@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
            <h4>Nama Kurir :{{ $data->Courier->delivery_name }}</h4>
            <h4>No Resi :{{ $data->receipt }}</h4>
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                		<th>Produk</th>
						<th>Jumlah Pesanan</th>
                		<th>Jumlah Pengiriman</th>
                        <th>Satuan</th>
                	</tr>
                </thead>
                <tbody> 
                	@foreach($items as $key=>$val)
                	<tr>
	                	<td>{{ $val->product_name}}</td>                           
						<td>{{ number_format(($val->quantity),2,',','.')}}</td>
	                	<td>{{ number_format(($val->shipping),2,',','.')}}</td>
	                	<td>{{ $val->Uoms->name}}</td>
	                </tr>
                	@endforeach
                </tbody>
            </table>         
		</div>
	</div>
</div>       
@endsection