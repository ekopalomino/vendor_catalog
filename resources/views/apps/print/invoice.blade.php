<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<table style="height: 5px;" width="540">
		<tbody>
			<tr>
				<td style="width: 315px;">
					<img src="{{ asset('public/assets/fibertekno.jpg') }}" alt="" />
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
								<td style="width: 148px;">{{$source->reference_no}}</td>
								<td style="width: 148px;">{{date("d F Y",strtotime($source->created_at)) }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">No SO</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;">Termin Pembayaran</td>
								</tr>
								<tr>
								<td style="width: 148px;">{{$source->sales_order}}</td>
								<td style="width: 148px;">{{ $source->Contacts->Terms->name }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;" colspan="2">ID Customer</td>
								</tr>
								<tr>
								<td style="width: 148px;" colspan="2">{{$source->Contacts->ref_id}}</td>
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
							<td style="width: 164px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$source->Contacts->billing_address}}</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;">
					<table style="height: 79px;" width="175">
						<tbody>
							<tr>
							<td style="width: 164px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;">{{$source->Contacts->shipping_address}}</td>
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
			@foreach($source->Child as $key=>$val)
			<tr>
				<td style="width: 10px;">{{ $key+1 }}</td>
				<td style="width: 280px;">{{ $val->product_name }}</td>
				<td style="width: 30px;">{{ number_format($val->quantity,0,',','.')}}</td>
				<td style="width: 60px;">{{ $val->Uoms->name }}</td>
				<td style="width: 70px;">Rp {{ number_format(($val->subtotal)/($val->quantity),0,',','.')}}</td>
				<td style="width: 50px;">Rp {{ number_format($val->discount,0,',','.')}}</td>
				<td style="width: 102px;">Rp {{ number_format($val->subtotal,0,',','.')}}</td>
			</tr>
			@endforeach
			<tr>
				<td style="width: 150px;" colspan="5">Thank You For Your Business!</td>
				<td style="width: 102px;" colspan="2">PPN(10%) Rp {{ number_format($source->tax_total,0,',','.')}}
					<br>
					<strong>DELIVERY COST Rp {{ number_format($source->delivery_cost,0,',','.')}}</strong>
					<br>
					<strong>TOTAL Rp {{ number_format(($source->amount),0,',','.')}}</strong>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 26px;" width="540">
		<tbody>
			<tr>
			@if(($source->tax_total) != 0)
			<td style="width: 316px;">
				<p><strong>Catatan Khusus</strong></p>
				<p><strong>Pembayaran mohon di transfer :</strong></p>
				<p>Bank Mandiri</p>
				<p><strong>PT. Fiber Teknologi Inovasi</strong></p>
				<p>No Rek : 125-00-7777878-5</p>
				<p>NPWP : 81.056.126.6-023.000</p>
			</td>
				<td style="width: 317px;">&nbsp;
					<p align="center">PT. FIBER TEKNOLOGI INOVASI</p>
					<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<p align="center">(Dian)</p>
				</td>
			</tr>
			@else
			<td style="width: 316px;">
				<p><strong>Catatan Khusus</strong></p>
				<p><strong>Pembayaran mohon di transfer :</strong></p>
				<p>Bank Central Asia</p>
				<p><strong>Dian</strong></p>
				<p>No Rek : 766-01-46878-8</p>
			</td>
				<td style="width: 317px;">&nbsp;
					<p align="center">PT. FIBER TEKNOLOGI INOVASI</p>
					<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<p align="center">(Dian)</p>
				</td>
			</tr>
			@endif
		</tbody>
	</table>
	<p align="center">Jika memerlukan informasi mengenai invoice ini, silahkan hubungi</p>
	<p align="center">sales@fibertekno.co.id</p>
</body>
</html>