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
					<p>Kirana Two Office Tower Lt. 10A</p>
					<p>Jl. Boulevard Timur No.88</p>
					<p>Jakarta Utara 14250</p>
					<p>email : sales@fibertekno.co.id</p>
					<p>Phone : 021 - 21484090</p>
				</td>
				<td style="width: 316px;">
					<h2 align="right"><strong>INVOICE</strong></h2>
						<table style="height: 73px; border-color: #000000;" border="1" width="265">
							<tbody>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">No Invoice</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">Tanggal Invoice</td>
								</tr>
								<tr>
								<td style="width: 148px;">{{$source->reference_id}}</td>
								<td style="width: 148px;">{{date("d F Y",strtotime($source->created_at)) }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">No SO</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">Termin Pembayaran</td>
								</tr>
								<tr>
								<td style="width: 148px;">{{$sales->order_ref}}</td>
								<td style="width: 148px;">{{ $sales->Customers->Terms->name }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;" colspan="2">ID Customer</td>
								</tr>
								<tr>
								<td style="width: 148px;" colspan="2">{{$sales->client_code}}</td>
								</tr>
							</tbody>
						</table>
				</td>
			</tr>
		</tbody>
	</table>
	<p>&nbsp;</p>
	<table style="height: 9px;" width="540">
		<tbody>
			<tr>
				<td style="width: 172px;background:#4B77BE;color:#ffffff;">DI TAGIHKAN KEPADA</td>
				<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;background:#4B77BE;color:#ffffff;">DI KIRIMKAN KEPADA</td>
			</tr>
			<tr>
			<td style="width: 172px;">
				<table style="height: 72px;" width="174">
					<tbody>
						<tr>
							<td style="width: 164px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$sales->Customers->company}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$sales->billing_address}}</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;">
					<table style="height: 79px;" width="175">
						<tbody>
							<tr>
							<td style="width: 164px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$sales->Customers->company}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$sales->shipping_address}}</td>
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
				<td style="width: 10px;background:#4B77BE;color:#ffffff;">NO</td>
				<td style="width: 280px;background:#4B77BE;color:#ffffff;">NAMA BARANG/JASA</td>
				<td style="width: 30px;background:#4B77BE;color:#ffffff;">JML</td>
				<td style="width: 60px;background:#4B77BE;color:#ffffff;">SATUAN</td>
				<td style="width: 70px;background:#4B77BE;color:#ffffff;">HARGA UNIT</td>
				<td style="width: 50px;background:#4B77BE;color:#ffffff;">DISC</td>
				<td style="width: 102px;background:#4B77BE;color:#ffffff;">JUMLAH(RUPIAH)</td>
			</tr>
			@foreach($items as $key=>$val)
			<tr>
				<td style="width: 10px;">{{ $key+1 }}</td>
				<td style="width: 280px;">{{ $val->Products->name }}</td>
				<td style="width: 30px;">{{ number_format($val->quantity,0,',','.')}}</td>
				<td style="width: 60px;">{{ $val->Uoms->name }}</td>
				<td style="width: 70px;">Rp {{ number_format($val->sale_price,0,',','.')}}</td>
				<td style="width: 50px;">Rp {{ number_format($val->discount,0,',','.')}}</td>
				<td style="width: 102px;">Rp {{ number_format($val->sub_total,0,',','.')}}</td>
			</tr>
			@endforeach
			<tr>
				<td style="width: 150px;" colspan="5">Thank You For Your Business!</td>
				<td style="width: 102px;" colspan="2">PPN(10%) Rp {{ number_format($sales->tax,0,',','.')}}
					<br>
					<strong>DELIVERY COST Rp {{ number_format($sales->delivery_cost,0,',','.')}}</strong>
					<br>
					<strong>TOTAL Rp {{ number_format(($sales->total) + ($sales->delivery_cost),0,',','.')}}</strong>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 26px;" width="540">
		<tbody>
			<tr>
			<td style="width: 316px;">
				<p><strong>Catatan Khusus</strong></p>
				<p><strong>Pembayaran mohon di transfer :</strong></p>
				<p>Bank Mandiri</p>
				<p><strong>PT. Fiber Teknologi Inovasi</strong></p>
				<p>No Rek : 123-00-0909080-6</p>
				<p>NPWP : 81.056.126.6-023.000</p>
			</td>
				<td style="width: 317px;">&nbsp;
					<p align="center">PT. FIBER TEKNOLOGI INOVASI</p>
					<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<p align="center">(Dian)</p>
				</td>
			</tr>
		</tbody>
	</table>
	<p align="center">Jika memerlukan informasi mengenai invoice ini, silahkan hubungi</p>
	<p align="center">sales@fibertekno.co.id</p>
</body>
</html>