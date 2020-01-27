@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Purchase Payment 
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Form Pembayaran Barang/Jasa
            </div>
        </div>
        <div class="portlet-body form">
            <div class="m-heading-1 border-red m-bordered">
                <h3>Petunjuk Pengisian</h3>
                <p> Pilih <strong>Nomor PR</strong> Jika Ada. Biarkan Kosong Jika Tidak Ada</p>
            </div>
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
            {!! Form::open(array('route' => 'receiptManual.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Nomor Penerimaan Barang</label>
                            {!! Form::select('order_ref', [null=>'Please Select'] + $refs,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="control-label">Nama Supplier</label>
                            {!! Form::select('supplier_code', [null=>'Please Select'] + $suppliers,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            	<div class="row">
            		<div class="col-md-2">
            			<div class="form-group">
            				<label class="control-label">Metode Pembayaran</label>
            				{!! Form::select('pay_method', [null=>'Please Select'] + $methods,[], array('class' => 'form-control')) !!}
            			</div>
            		</div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Termin Pembayaran</label>
                            {!! Form::select('pay_term', [null=>'Please Select'] + $terms,[], array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Pajak</label>
                            <select class="form-control" name="tax">
                                <option>Please Select</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">NPWP</label>
                            {!! Form::text('tax_id', null, array('placeholder' => 'NPWP','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Pembayaran Ke</label>
                            {!! Form::number('terms_no', null, array('placeholder' => 'Pembayaran Ke','class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="control-label">Total Pembayaran</label>
                            {!! Form::number('amount', null, array('placeholder' => 'Total Bayar','class' => 'form-control')) !!}
                        </div>
                    </div>
            		<!--/span-->
            	</div>        		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah Pesanan</th>
                                    <th>Jumlah Dikirim</th>
	            					<th>Satuan</th>
	            					<th></th>
	            				</tr>
	            			</thead>
	            			<tbody>
                                <tr>
	            					<td>{!! Form::text('product[]', null, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::number('pesanan[]', null, array('placeholder' => 'Quantity Order','class' => 'form-control','required')) !!}</td>
                                    <td>{!! Form::number('dikirim[]', null, array('placeholder' => 'Quantity Receive','class' => 'form-control','required')) !!}
                                    </td>    
                                    <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}</td>
                    				<td><button type="button" name="add" id="add" class="btn btn-success">Tambah</button></td>
	            				</tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('purchaseReceipt.index') }}">Cancel</a>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.1/bootstrap3-typeahead.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){ 
    var route = "{{ route('sales.product') }}";
    $("input[name^='product']").typeahead({
        source:  function (product, process) {
            return $.get(route, { product: product }, function (data) {
                    return process(data);
                });
            }
      });     
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#sample_2').append('<tr id="row'+i+'" class="dynamic-added"><td>{!! Form::text('product[]', null, array('placeholder' => 'Produk','id' => 'product','class' => 'form-control','required')) !!}</td><td>{!! Form::number('pesanan[]', null, array('placeholder' => 'Quantity Order','class' => 'form-control','required')) !!}</td><td>{!! Form::number('dikirim[]', null, array('placeholder' => 'Quantity Receive','class' => 'form-control','required')) !!}</td><td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}</td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>').find('input[type=text]').typeahead({
                source:  function (product, process) {
                return $.get(route, { product: product }, function (data) {
                    return process(data);
                });
            }
           });  
      });
      
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      }); 
    });  
</script>
@endsection