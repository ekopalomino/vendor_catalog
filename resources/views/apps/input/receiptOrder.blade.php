@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Receipt Order 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Terima Barang Supplier  
            </div>
        </div>
        <div class="portlet-body form">
            @if (count($errors) > 0) 
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
            @endif 
            {!! Form::open(array('route' => 'receipt.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Nomor PO</label>
                            {!! Form::text('order_ref', $purchases->order_ref, array('class' => 'form-control','readonly'=>'true')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-5">
            			<div class="form-group">
            				<label class="control-label">ID Supplier</label>
            				{!! Form::text('supplier', $purchases->supplier_code, array('placeholder' => 'ID Supplier','class' => 'form-control','readonly'=>'true')) !!}
            			</div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">Gudang</label>
                            {!! Form::select('warehouse_name', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
            	</div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah Dipesan</th>
                                    <th>Jumlah Dikirim</th>
                                    <th>Jumlah Rusak</th>
	            					<th>Satuan</th>
	            					<th></th>
	            				</tr>
	            			</thead>
	            			<tbody>
                                @foreach($details as $key=>$item)
	            				<tr>
	            					<td>{!! Form::text('product[]', $item->product_name, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','readonly'=>'true')) !!}</td>
                    				<td>{!! Form::number('pesanan[]', $item->quantity, array('placeholder' => 'Quantity','class' => 'form-control','readonly'=>'true')) !!}</td>
                                    <td>{!! Form::number('pengiriman[]', null, array('placeholder' => 'Jumlah Dikirim','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::number('rusak[]', null, array('placeholder' => 'Jumlah Rusak','class' => 'form-control')) !!}</td>
                                    <td>{!! Form::select('uom_id[]', $uoms,$item->uom_id, array('class' => 'form-control')) !!}</td>
                    				<td>
                                        {{ Form::hidden('id', $key+1) }}
                                        <input type="button" value="Delete" class="btn red" onclick="deleteRow(this)">
                                    </td>
	            				</tr>
                                @endforeach
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('receipt.index') }}">Cancel</a>
                    <button type="submit" class="btn blue">
                    <i class="fa fa-check"></i> Save</button>
                </div>
            </div>
            {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.scripts')
<script src="{{ asset('public/assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
<script>
function deleteRow(r) {
  var i = r.parentNode.parentNode.rowIndex;
  document.getElementById("sample_2").deleteRow(i);
}
</script>
@endsection