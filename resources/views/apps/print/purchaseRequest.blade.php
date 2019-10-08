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
<h2 align="right"><strong>PURCHASE REQUEST</strong></h2>
<table style="height: 73px; border-color: #000000;" border="1" width="265">
<tbody>
<tr>
<td style="width: 148px;background:#4B77BE;color:#ffffff;">No Invoice</td>
<td style="width: 148px;background:#4B77BE;color:#ffffff;">Tanggal Invoice</td>
</tr>
<tr>
<td style="width: 148px;">{{$data->order_ref}}</td>
<td style="width: 148px;">{{date("d F Y",strtotime($data->created_at)) }}</td>
</tr>
<tr>
<td style="width: 148px;background:#4B77BE;color:#ffffff;">Tanggal Pengiriman</td>
<td style="width: 148px;background:#4B77BE;color:#ffffff;">Termin Pembayaran</td>
</tr>
<tr>
<td style="width: 148px;">{{date("d F Y",strtotime($data->delivery_date)) }}</td>
<td style="width: 148px;">{{$data->Suppliers->Terms->name}}</td>
</tr>
<tr>
<td style="width: 148px;background:#4B77BE;color:#ffffff;" colspan="2">ID Supplier</td>
</tr>
<tr>
<td style="width: 148px;" colspan="2">{{$data->supplier_code}}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="height: 35px;" width="171">
<tbody>
<tr>
<td style="width: 200px;background:#4B77BE;color:#ffffff;">DI BAYARKAN KEPADA</td>
</tr>
</tbody>
</table>
<p ><strong>{{$data->Suppliers->name}}</strong></p>
<p>{{$data->Suppliers->billing_address}}</p>
<table style="height: 41px; border-color: #000000;" border="1" width="540">
<tbody>
<tr>
	<td style="width: 10px;background:#4B77BE;color:#ffffff;">NO</td>
	<td style="width: 280px;background:#4B77BE;color:#ffffff;">KETERANGAN NAMA BARANG/JASA</td>
	<td style="width: 30px;background:#4B77BE;color:#ffffff;">JML</td>
	<td style="width: 102px;background:#4B77BE;color:#ffffff;">SATUAN</td>
	<td style="width: 110px;background:#4B77BE;color:#ffffff;">HARGA PER UNIT</td>
	<td style="width: 102px;background:#4B77BE;color:#ffffff;">JUMLAH(RUPIAH)</td>
</tr>
@foreach($details as $key=>$val)
<tr>
	<td style="width: 10px;">{{ $key+1 }}</td>
	<td style="width: 280px;">{{ $val->Products->name }}</td>
	<td style="width: 30px;">{{ number_format($val->quantity,0,',','.')}}</td>
	<td style="width: 102px;">{{ $val->Uoms->name }}</td>
	<td style="width: 110px;">Rp {{ number_format($val->purchase_price,0,',','.')}}</td>
	<td style="width: 102px;">Rp {{ number_format($val->sub_total,0,',','.')}}</td>
</tr>
@endforeach
<tr>
<td style="width: 101px;" colspan="4">Thank You For Your Business!</td>
<td style="width: 102px;" colspan="2">TOTAL Rp {{ number_format($data->total,0,',','.')}}</td>
</tr>
</tbody>
</table>
<table style="height: 26px;" width="540">
<tbody>
<tr>
<td style="width: 316px;">&nbsp;</td>
<td style="width: 317px;">&nbsp;
<p align="center">PT. FIBER TEKNOLOGI INOVASI</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">(Dian)</p>
</td>
</tr>
</tbody>
</table>
</body>
</html>