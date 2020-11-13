<!DOCTYPE html> 
<html>
<head>
</head>
<body>
	<table style="height: 5px;" width="540">
		<tbody>
			<tr>
				<td style="width: 315px;">
					<img src="{{ asset('assets/fibertekno.jpg') }}" alt="" />
					<p></p>
					<p><strong>PT. FIBER TEKNOLOGI INDONESIA</strong></p>
					<p style="text-align: left;">Kirana Two Office Tower Lt. 10A
					<br>
					Jl. Boulevard Timur No.88
					<br>
					Jakarta Utara 14250
					<br>
					email : sales@fibertekno.co.id
					<br>
					Phone : 021 - 21484090</p>
				</td>
				<td style="width: 316px;">
					<h2 align="right"><strong>PURCHASE REQUEST</strong></h2>
						<table style="height: 73px; border-color: #000000;" border="1" width="270">
							<tbody>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">No Order</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">Tanggal Order</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$data->order_ref}}</td>
								<td style="width: 148px;font-size: 10px;">{{date("d F Y",strtotime($data->created_at)) }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">ID Vendor</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$data->supplier_code}}</td>
								</tr>
							</tbody>
						</table>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 9px;" width="540">
		<tbody>
			<tr>
				<td style="width: 172px;background:#4B77BE;color:#ffffff;font-size: 12px;">VENDOR</td>
				<td style="width: 173px;">&nbsp;</td>
			</tr>
			<tr>
			<td style="width: 172px;">
				<table style="height: 72px;" width="174">
					<tbody>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$data->Suppliers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$data->Suppliers->billing_address}}</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tbody>
	</table>
	<table style="height: 41px; border-color: #000000;" border="1" width="540">
		<tbody>
			<tr> 
				<td style="width: 10px;background:#4B77BE;color:#ffffff;font-size: 16px;">NO</td>
				<td style="width: 280px;background:#4B77BE;color:#ffffff;font-size: 16px;">NAMA BARANG/JASA</td>
				<td style="width: 60px;background:#4B77BE;color:#ffffff;font-size: 16px;">JML</td>
				<td style="width: 60px;background:#4B77BE;color:#ffffff;font-size: 16px;">SATUAN</td>
				<td style="width: 70px;background:#4B77BE;color:#ffffff;font-size: 16px;">HARGA</td>
				<td style="width: 70px;background:#4B77BE;color:#ffffff;font-size: 16px;">SUBTOTAL</td>
			</tr>
			@foreach($details as $key=>$val)
			<tr>
				<td style="width: 10px;font-size: 13px;">{{ $key+1 }}</td>
				<td style="width: 280px;">{{ $val->product_name }}</td>
				<td style="width: 60px;">{{ number_format($val->quantity,0,',','.')}}</td>
				<td style="width: 102px;">{{ $val->Uoms->name }}</td>
				<td style="width: 110px;">Rp {{ number_format($val->purchase_price,0,',','.')}}</td>
				<td style="width: 102px;">Rp {{ number_format($val->sub_total,0,',','.')}}</td>
			</tr>
			@endforeach
			<tr>
				<td style="width: 102px;font-size: 12px;" colspan="2">
					<strong style="font-size: 14px;">TOTAL Rp {{ number_format(($data->total),0,',','.')}}</strong>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 26px;" width="540">
		<tbody>
			<tr>
				<td style="width: 172px; text-align: center;">
					<p>Requester</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>(.................)</p>
				</td>
				<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px; text-align: center;">
					<p>Approval&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>(....................)</p>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="actions">
		<div class="btn-group">
            <a href="{{ route('request.print',$data->id) }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">Print PR</button></a>
            <a href="{{ url()->previous() }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">Back</button></a>
        </div>
    </div>
</body>
</html>