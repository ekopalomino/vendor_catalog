@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Product Retur
@endsection
@section('header.styles')
<link href="{{ asset('assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-database"></i>Data Retur Penjualan
                    </div>
                </div>
                <div class="portlet-body">
                    @can('Can Create Inventory')
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="{{ route('deliveryRetur.search') }}"><button id="sample_editable_1_new" class="btn red btn-outline sbold"> Buat Retur
                            </button></a>
                        </div>
                    </div>
                    @endcan
                	<table class="table table-striped table-bordered table-hover" id="sample_2">
                		<thead>
                			<tr>
                                <th>No</th>
                                <th>Sales Order</th>
                				<th>Delivery Order</th>
                                <th>Produk</th>
                                <th>Jumlah Penjualan</th>
                                <th>Jumlah Retur</th>
                                <th>Status Barang</th>
                                <th>Status Retur</th>
                                <th>Dibuat Oleh</th>
                				<th>Disetujui Oleh</th>
                                <th></th>
                			</tr>
                		</thead>
                		<tbody>
                            @foreach($data as $key => $val)
                			<tr>
                				<td>{{ $key+1 }}</td>
                                <td>{{ $val->order_ref }}</td>
                                <td>{{ $val->reference_id }}</td>
                                <td>{{ $val->Suppliers->name}}</td>
                                <td>{{ number_format($val->purchase_amount,2,',','.')}}</td>
                                <td>{{ number_format($val->pay_amount,2,',','.')}}</td>
                                <td>{{ number_format($val->pay_left,2,',','.')}}</td>
                                <td>
                                    @if(($val->status_id) == 'cc040768-2b4f-48df-867f-7da18b749e61')
                                    <label class="label label-sm label-danger">{{ $val->Statuses->name }}</label>
                                    @else
                                    <label class="label label-sm label-success">{{ $val->Statuses->name }}</label>
                                    @endif
                                </td>
                                <td>{{ $val->created_by }}</td> 
                                <td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
                                <td>
                                    @if(!empty($val->payment_made))
                                    {{date("d F Y H:i",strtotime($val->payment_made)) }}
                                    @endif
                                </td>
                                <td>
                                    
                                </td>
                			</tr>
                            @endforeach
                		</tbody>
                	</table>
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
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/table-datatables-buttons.min.js') }}" type="text/javascript"></script>
<script>
    function ConfirmAccept()
    {
    var x = confirm("Retur Akan Disimpan?");
    if (x)
        return true;
    else
        return false;
    }
</script>
@endsection