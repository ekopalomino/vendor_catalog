@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Sales Order Detail
@endsection
@section('header.plugin')
<link href="{{ asset('assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<div class="portlet light portlet-fit portlet-datatable bordered">
				<div class="portlet-title">
					<div class="caption">
						
                    </div>
                    <div class="actions">
                        <div class="btn-group">
                            <a href="{{ route('sales.pdf',$sales->id) }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">Print SO</button></a>
                            <a href="{{ url()->previous() }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">Back</button></a>
                        </div>
                    </div>
                </div>
                <div class="portlet-body">
                	<div class="row">
                		<div class="col-md-6 col-sm-12">
                			<div>
                				<div class="portlet-title">
                                    <div class="caption">
                                        <img src="{{ asset('assets/fibertekno.jpg') }}" alt="" />
                                        <p style="line-height: 1;"><strong>PT. FIBER TEKNOLOGI INDONESIA</strong></p> 
                                        <p style="line-height: 1;">Kirana Two Office Tower Lt. 10A</p>
                                        <p style="line-height: 1;">Jl. Boulevard Timur No.88 </p>
                                        <p style="line-height: 1;">Jakarta Utara 14250</p>
                                        <p style="line-height: 1;">email : sales@fibertekno.co.id</p>
                                        <p style="line-height: 1;">Phone : 021 - 21484090</p>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-bordered table-hover" style="width: 50%;background:#4B77BE;">
                                        <thead>
                                            <tr>
                                                <th style="color: #ffffff;">DI TAGIHKAN KEPADA</th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <p style="line-height: 1;"><strong>{{$sales->Customers->name}}</strong></p>
                                    <p style="line-height: 1;">{{$sales->Customers->billing_address}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div>
                                <div class="portlet-title">
                                    <div class="caption">
                                        <h2 align="right"><strong>SALES ORDER</strong></h2>
                                        
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>No Invoice</th>
                                                <th>Tanggal Invoice</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>{{$sales->order_ref}}</td>
                                                <td>{{date("d F Y",strtotime($sales->created_at)) }}</td>
                                            </tr>
                                        </tbody>
                                        <thead>
                                            <tr>
                                                <th>Tanggal Pengiriman</th>
                                                <th>Termin Pembayaran</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>{{date("d F Y",strtotime($sales->delivery_date)) }}</td>
                                                <td>{{$sales->Customers->Terms->name}}</td>
                                            </tr>
                                        </tbody>
                                        <thead>
                                            <tr>
                                                <th colspan="2">ID Customer</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="2">{{$sales->client_code}}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-bordered table-hover" style="width: 50%;background:#4B77BE;margin-top: -10px;">
                                        <thead>
                                            <tr>
                                                <th style="color: #ffffff;">DI KIRIM KEPADA</th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <p style="line-height: 1;"><strong>{{$sales->Customers->company}}</strong></p>
                                    <p style="line-height: 1;">{{$sales->Customers->shipping_address}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>KETERANGAN NAMA BARANG/JASA</th>
                                        <th>JML</th>
                                        <th>HARGA PER UNIT</th>
                                        <th>DISC TOTAL</th>
                                        <th>JUMLAH(RUPIAH)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($data as $key=>$val)
                                    <tr>
                                        <td>{{ $key+1 }}</td>
                                        <td>{{ $val->product_name }}</td>
                                        <td>{{ number_format($val->quantity,0,',','.')}}</td>
                                        <td>Rp {{ number_format($val->sale_price,0,',','.')}}</td>
                                        <td>Rp {{ number_format($val->discount,0,',','.')}}</td>
                                        <td>Rp {{ number_format($val->sub_total,0,',','.')}}</td>
                                    </tr>
                                    @endforeach
                                    <tr>
                                        <td colspan="2" style="background:#4B77BE;color: #ffffff;" align="center">Thank You For Your Business!</td>
                                        <td colspan="4"><strong>TAX &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp {{ number_format($sales->tax,0,',','.')}}
                                            <br>TOTAL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp {{ number_format($sales->total,0,',','.')}}</strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <p style="line-height: 1;">Catatan Khusus :</p>
                                            <p style="line-height: 1;"><strong>Pembayaran mohon di transfer:</strong></p>
                                            <p style="line-height: 1;">Bank Mandiri</p>
                                            <p style="line-height: 1;"><strong>No Rek : 1250077778785</strong></p>
                                            <p style="line-height: 1;">Bank BCA</p>
                                            <p style="line-height: 1;"><strong>No Rek : 7660146878</strong></p>
                                            <p style="line-height: 1;"><strong>a.n. DIAN</strong></p>
                                        </td>
                                        <td colspan="4">
                                            <p style="line-height: 1;" align="center">PT. FIBER TEKNOLOGI INOVASI</p>
                                            <p align="center">
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                (DIAN)
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/ecommerce-orders-view.min.js') }}" type="text/javascript"></script>
@endsection