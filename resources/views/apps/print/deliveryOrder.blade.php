<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<table style="height: 28px;" width="540">
<tbody>
<tr>
<td style="width: 250px;">
	<table style="height: 104px;" width="250">
<tbody>
<tr>
<td style="width: 144px;"><img src="{{ asset('assets/fibertekno.jpg') }}" alt="" /></td>
</tr>
<tr>
<td style="width: 144px;"><strong>PT. FIBER TEKNOLOGI INDONESIA</strong></td>
</tr>
<tr>
<td style="width: 144px;">Kirana Two Office Tower Lt. 10A</td>
</tr>
<tr>
<td style="width: 144px;">Jl. Boulevard Timur No.88</td>
</tr>
<tr>
<td style="width: 144px;">Jakarta Utara 14250</td>
</tr>
<tr>
<td style="width: 144px;">email : sales@fibertekno.co.id</td>
</tr>
<tr>
<td style="width: 144px;">Phone : 021 - 21484090</td>
</tr>
</tbody>
</table>
<td style="width: 280px;">
<table style="height: 71px;" width="280">
<tbody>
<tr>
<td style="width: 68px;">Kepada Yth</td>
<td style="width: 68px;">{{ $data->Customers->name }}<br>{{ $data->shipping_address }}</td>
</tr>
<tr>
<td style="width: 68px;">Tgl Pengiriman</td>
<td style="width: 68px;">{{date("d F Y",strtotime($data->delivery_date)) }}</td>
</tr>
<tr>
<td style="width: 68px;">No Surat Jalan</td>
<td style="width: 68px;">{{ $source->order_ref }}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p align="center"><strong>Surat Jalan</strong></p>
<table style="height: 41px; border-color: #000000;" border="1" width="540">
<tbody>
	@foreach($details as $key=>$val)
<tr>
<td style="width: 10px;">No</td>
<td style="width: 20px;">Kode Barang</td>
<td style="width: 128px;">Nama Barang</td>
<td style="width: 20px;">Jumlah</td>
</tr>
<tr>
<td style="width: 10px;">{{ $key+1 }}</td>
<td style="width: 20px;">{{ $val->Products->product_barcode }}</td>
<td style="width: 128px;">{{ $val->Products->name }}</td>
<td style="width: 20px;">{{ $val->quantity }}</td>
</tr>
@endforeach
</tbody>
</table>
<table style="height: 20px;" width="540">
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
</body>
</html>