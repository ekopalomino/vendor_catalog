@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                		<th>Produk</th>
						<th>Jumlah Pesanan</th>
                		<th>Jumlah Pengiriman</th>
                        <th>Satuan</th>
                		<th>Kirim Parsial</th>
                	</tr>
                </thead>
                <tbody> 
                	@foreach($items as $key=>$val)
                	<tr>
	                	<td>{{ $val->product_name}}</td>                           
						<td>{{ number_format(($val->product_quantity),2,',','.')}}</td>
	                	<td>{{ number_format(($val->product_shipment),2,',','.')}}</td>
	                	<td>{{ $val->Uoms->name}}</td>
	                	<td>
                            @if(($val->is_partial) == '1')
                            <label class="label label-sm label-danger">Ya
                            @else      
                            <label class="label label-sm label-success">Tidak
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