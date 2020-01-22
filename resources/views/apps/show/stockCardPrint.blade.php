                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Tgl Transaksi</th>
                                <th>No Referensi</th>
                                <th>Barang Masuk</th>
                                <th>Barang Keluar</th>
                                <th>Sisa Barang</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $key=>$val)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>{{ $val->reference_id}}</td>
                                <td>{{ $val->incoming}}</td>
                                <td>{{ $val->outgoing }}</td>
                                <td>{{ $val->remaining }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>