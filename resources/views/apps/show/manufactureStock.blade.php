@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                		<th>Material</th>
						<th>Gudang</th>
                		<th>Kebutuhan</th>
                		<th>Tersedia</th>
                        <th>Satuan</th>
                		<th>Status</th>
                	</tr>
                </thead>
                <tbody> 
                	@foreach($data as $key=>$val)
                	<tr>
	                	<td>                           
                            {{ $val->item_name }}                           
                        </td>
						<td>{{ $val->warehouse_name }}</td>
	                	<td>{{ number_format(($val->qty),2,',','.')}}</td>
	                	<td>{{ number_format($val->closing_amount,2,',','.')}}</td>
                        <td>{{ $val->Uoms->name}}</td>
	                	<td>
                            @if(($val->qty) > ($val->closing_amount))
                            <label class="label label-sm label-danger">Stok Tidak Cukup
                            @else      
                            <label class="label label-sm label-success">Stok Cukup
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