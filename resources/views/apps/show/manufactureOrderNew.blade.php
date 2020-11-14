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
                    <h2 align="right"><strong>MANUFACTURE ORDER</strong></h2>
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
                            </tbody>
                        </table>
                </td>
            </tr>
        </tbody>
    </table>
    <table style="height: 41px; border-color: #000000;" border="1" width="540">
        <tbody>
            <tr> 
                <td style="width: 280px;background:#4B77BE;color:#ffffff;font-size: 16px;">NAMA BARANG/JASA</td>
                <td style="width: 60px;background:#4B77BE;color:#ffffff;font-size: 16px;">JML</td>
            </tr>
            <tr>
                <td style="width: 280px;">{{ $data->product_name }}</td>
                <td style="width: 60px;">{{ number_format($data->man_result,0,',','.')}}</td>
            </tr>
        </tbody>
    </table>
    <table style="height: 26px;" width="540">
        <tbody>
            <tr>
                <td style="width: 173px;">&nbsp;</td>
                <td style="width: 173px; text-align: center;">
                    <p>PT. FIBER TEKNOLOGI INOVASI&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>(....................)</p>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="actions">
        <div class="btn-group">
            <a href=""><button id="sample_editable_1_new" class="btn red btn-outline sbold">Print MO</button></a>
            <a href="{{ url()->previous() }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold">Back</button></a>
        </div>
    </div>
</body>
</html>