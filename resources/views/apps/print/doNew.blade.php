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
			</tr>
		</tbody>
	</table>
	<h2 align="center"><strong>SURAT JALAN</strong></h2>
	<table style="height: 9px;" width="540">
		<tbody>
			<tr>
				<td style="width: 172px;background:#4B77BE;color:#ffffff;font-size: 12px;">KEPADA YTH</td>
				<td style="width: 173px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 172px;">
					<table style="height: 72px;" width="174">
						<tbody>
							<tr>
								<td style="width: 164px;font-size: 12px;">{{ $data->Customers->name }}</td>
							</tr>
							<tr>
								<td style="width: 164px;font-size: 12px;">{{ $data->shipping_address }}</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 41px; border-color: #000000;" border="1" width="540">
		<tbody>
			<tr> 
				<td style="width: 10px;background:#4B77BE;color:#ffffff;font-size: 16px;">NO</td>
				<td style="width: 280px;background:#4B77BE;color:#ffffff;font-size: 16px;">NAMA BARANG/JASA</td>
				<td style="width: 30px;background:#4B77BE;color:#ffffff;font-size: 16px;">JML</td>
				<td style="width: 60px;background:#4B77BE;color:#ffffff;font-size: 16px;">SATUAN</td>
			</tr>
			@foreach($details as $key=>$val)
			<tr>
				<td style="width: 10px;font-size: 13px;">{{ $key+1 }}</td>
				<td style="width: 280px;font-size: 13px;">{{ $val->product_name }}</td>
				<td style="width: 30px;font-size: 13px;">{{ number_format($val->product_shipment,0,',','.')}}</td>
				<td style="width: 60px;font-size: 13px;">{{ $val->Uoms->name }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	<table style="height: 26px;" width="540">
		<tbody>
			<tr>
				<td style="width: 172px; text-align: center;">
					<p>Penerima</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>(.................)</p>
				</td>
				<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px; text-align: center;">
					<p>Fiber Teknologi&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>(....................)</p>
				</td>
			</tr>
		</tbody>
	</table>
	<p style="text-align: center;">Jika memerlukan informasi, silahkan hubungi
	<br>
	sales@fibertekno.co.id</p>
</body>
</html>