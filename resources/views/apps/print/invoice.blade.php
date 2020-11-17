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
					<h2 align="right"><strong>INVOICE</strong></h2>
						<table style="height: 73px; border-color: #000000;" border="1" width="270">
							<tbody>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">No Invoice</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">Tanggal Invoice</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$source->reference_no}}</td>
								<td style="width: 148px;font-size: 10px;">{{date("d F Y",strtotime($source->created_at)) }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">No SO</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">No PO Customer</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$source->sales_order}}</td>
								<td style="width: 148px;font-size: 10px;">{{$source->customer_po}}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">ID Customer</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">Termin Pembayaran</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$source->Contacts->ref_id}}</td>
								<td style="width: 148px;font-size: 10px;">{{ $source->Contacts->Terms->name }}</td>
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
				<td style="width: 172px;background:#4B77BE;color:#ffffff;font-size: 12px;">DI TAGIHKAN KEPADA</td>
				<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;background:#4B77BE;color:#ffffff;font-size: 12px;">DI KIRIMKAN KEPADA</td>
			</tr>
			<tr>
			<td style="width: 172px;">
				<table style="height: 72px;" width="174">
					<tbody>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->billing_address}}</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;">
					<table style="height: 79px;" width="175">
						<tbody>
							<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$source->Contacts->shipping_address}}</td>
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
				<td style="width: 70px;background:#4B77BE;color:#ffffff;font-size: 16px;">HARGA</td>
				<td style="width: 50px;background:#4B77BE;color:#ffffff;font-size: 16px;">DISC</td>
				<td style="width: 102px;background:#4B77BE;color:#ffffff;font-size: 16px;">SUBTOTAL</td>
			</tr>
			@foreach($source->Child as $key=>$val)
			<tr>
				<td style="width: 10px;font-size: 13px;">{{ $key+1 }}</td>
				<td style="width: 280px;font-size: 13px;">{{ $val->product_name }}</td>
				<td style="width: 30px;font-size: 13px;">{{ number_format($val->quantity,0,',','.')}}</td>
				<td style="width: 60px;font-size: 13px;">{{ $val->Uoms->name }}</td>
				<td style="width: 70px;font-size: 13px;">Rp {{ number_format(($val->subtotal)/($val->quantity),0,',','.')}}</td>
				<td style="width: 50px;font-size: 13px;">Rp {{ number_format($val->discount,0,',','.')}}</td>
				<td style="width: 102px;font-size: 13px;">Rp {{ number_format($val->subtotal,0,',','.')}}</td>
			</tr>
			@endforeach
			<tr>
				<td style="width: 150px;font-size: 14px;" colspan="5">Thank You For Your Business!</td>
				<td style="width: 102px;font-size: 12px;" colspan="2">PPN(10%) Rp {{ number_format($source->tax_total,0,',','.')}}
					<br>
					<strong style="font-size: 12px;">DELIVERY COST Rp {{ number_format($source->delivery_cost,0,',','.')}}</strong>
					<br>
					<br>
					<strong style="font-size: 14px;">TOTAL Rp {{ number_format(($source->amount),0,',','.')}}</strong>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 26px;" width="540">
		<tbody>
			<tr>
			@if(($source->tax_total) != 0)
			<td style="width: 316px;">
				<p style="text-align: left;"><strong>Catatan Khusus</strong>
				<br>
				<strong>Pembayaran mohon di transfer :</strong>
				<br>
				Bank Mandiri
				<br>
				Atas Nama : PT. Fiber Teknologi Inovasi
				<br>
				No Rek : 125-00-7777878-5
				<br>
				NPWP : 81.056.126.6-023.000</p>
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
				<p style="text-align: left;"><strong>Catatan Khusus</strong>
				<br>
				<strong>Pembayaran mohon di transfer :</strong>
				<br>
				Bank Central Asia
				<br>
				Atas Nama : Dian
				<br>
				No Rek : 766-01-46878-8
			</td>
				<td style="width: 317px;">&nbsp;
					<p align="center"><strong>PT. FIBER TEKNOLOGI INOVASI</strong></p>
					<p align="center">&nbsp;</p>
					<p align="center">&nbsp;</p>
					<p align="center">(Dian)</p>
				</td>
			</tr>
			@endif
		</tbody>
	</table>
	<p style="text-align: center;">Jika memerlukan informasi mengenai invoice ini, silahkan hubungi
	<br>
	sales@fibertekno.co.id</p>
</body>
</html>