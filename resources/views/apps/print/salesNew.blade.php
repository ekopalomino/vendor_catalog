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
					<h2 align="right"><strong>SALES ORDER</strong></h2>
						<table style="height: 73px; border-color: #000000;" border="1" width="270">
							<tbody>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">No Order</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">Tanggal Order</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$sales->order_ref}}</td>
								<td style="width: 148px;font-size: 10px;">{{date("d F Y",strtotime($sales->created_at)) }}</td>
								</tr>
								<tr>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">ID Customer</td>
								<td style="width: 148px;background:#4B77BE;color:#ffffff;font-size: 12px;">PO Customer</td>
								</tr>
								<tr>
								<td style="width: 148px;font-size: 10px;">{{$sales->client_code}}</td>
								<td style="width: 148px;font-size: 10px;">{{ $sales->customer_po }}</td>
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
				<td style="width: 172px;background:#4B77BE;color:#ffffff;font-size: 12px;">CUSTOMER</td>
				<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;background:#4B77BE;color:#ffffff;font-size: 12px;">PENGIRIMAN</td>
			</tr>
			<tr>
			<td style="width: 172px;">
				<table style="height: 72px;" width="174">
					<tbody>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->billing_address}}</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td style="width: 173px;">&nbsp;</td>
				<td style="width: 173px;">
					<table style="height: 79px;" width="175">
						<tbody>
							<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->name}}</td>
						</tr>
						<tr>
							<td style="width: 164px;font-size: 10px;">{{$sales->Customers->shipping_address}}</td>
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
			@foreach($data as $key=>$val)
			<tr>
				<td style="width: 10px;font-size: 13px;">{{ $key+1 }}</td>
				<td style="width: 280px;font-size: 13px;">{{ $val->Products->name }}</td>
				<td style="width: 30px;font-size: 13px;">{{ number_format($val->quantity,0,',','.')}}</td>
				<td style="width: 60px;font-size: 13px;">{{ $val->Uoms->name }}</td>
				<td style="width: 70px;font-size: 13px;">Rp {{ number_format($val->sale_price,0,',','.')}}</td>
				<td style="width: 50px;font-size: 13px;">Rp {{ number_format($val->discount,0,',','.')}}</td>
				<td style="width: 102px;font-size: 13px;">Rp {{ number_format($val->subtotal,0,',','.')}}</td>
			</tr>
			@endforeach
			<tr>
				<td style="width: 150px;font-size: 14px;" colspan="5">Thank You For Your Business!</td>
				<td style="width: 102px;font-size: 12px;" colspan="2">PPN(10%) Rp {{ number_format($sales->tax_total,0,',','.')}}
					<br>
					<strong style="font-size: 14px;">TOTAL Rp {{ number_format(($sales->total),0,',','.')}}</strong>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="height: 26px; border-color: #000000;" border="1" width="540">
		<tbody>
			<tr>
			<td style="width: 316px;">
				<p style="text-align: left;"><strong>Deskripsi</strong>
				<br>
				{{ $sales->description}}
				</p>
			</td>
		</tbody>
	</table>
	<p style="text-align: center;">Jika memerlukan informasi, silahkan hubungi
	<br>
	sales@fibertekno.co.id</p>
</body>
</html>