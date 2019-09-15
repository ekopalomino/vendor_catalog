@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Sales Order
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="portlet box red ">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-database"></i> Sales Order Form 
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
            {!! Form::open(array('route' => 'sales.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
            	<div class="row">
            		<div class="col-md-5">
            			<div class="form-group">
            				<label class="control-label">Customer</label>
            				{!! Form::select('client_code', [null=>'Please Select'] + $customers,[], array('class' => 'form-control')) !!}
            			</div>
            		</div>
            		<!--/span-->
            	</div>
            	<div class="row">
            		<div class="col-md-3">
	            		<div class="form-group">
	            			<label class="control-label">Discount(Amount)</label>
	            			{!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
	            		</div>
	            	</div>
	            	<div class="col-md-3">
	            		<div class="form-group">
	            			<label class="control-label">Discount(%)</label>
	            			{!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
	            		</div>
	            	</div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label class="control-label">Gudang Penjualan</label>
                    {!! Form::select('warehouse_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                  </div>
                </div>
	            	<div class="col-md-3">
	            		<div class="form-group">
	            			<label class="control-label">Tgl Pengiriman</label>
	            			{!! Form::date('delivery_date', '', array('id' => 'datepicker','class' => 'form-control')) !!}
	            		</div>
	            	</div>
	            </div>            		
            	<div class="row">
            		<div class="col-md-12">
	            		<table class="table table-striped table-bordered table-hover" id="sample_2">
	            			<thead>
	            				<tr>
	            					<th>Produk</th>
	            					<th>Jumlah</th>
	            					<th>Satuan</th>
	            					<th>Harga</th>
	            					<th></th>
	            				</tr>
	            			</thead>
	            			<tbody>
	            				<tr>
	            					<td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}</td>
                    				<td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control','required')) !!}</td>
                    				<td><button type="button" name="add" id="add" class="btn btn-success">Add More</button></td>
	            				</tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('sales.index') }}">Cancel</a>
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
@section('footer.plugins')
<script src="{{ asset('assets//global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/components-date-time-pickers.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function(){      
      var postURL = "<?php echo url('apps/sales/orders/addmore'); ?>";
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#sample_2').append('<tr id="row'+i+'" class="dynamic-added"><td>{!! Form::select('product_id[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td><td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td><td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td><td>{!! Form::text('sale_price[]', null, array('placeholder' => 'Sale Price','class' => 'form-control')) !!}</td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
      $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
      });
      $('#submit').click(function(){            
           $.ajax({  
                url:postURL,  
                method:"POST",  
                data:$('#add_name').serialize(),
                type:'json',
                success:function(data)  
                {
                    if(data.error){
                        printErrorMsg(data.error);
                    }else{
                        i=1;
                        $('.dynamic-added').remove();
                        $('#add_name')[0].reset();
                        $(".print-success-msg").find("ul").html('');
                        $(".print-success-msg").css('display','block');
                        $(".print-error-msg").css('display','none');
                        $(".print-success-msg").find("ul").append('<li>Record Inserted Successfully.</li>');
                    }
                }  
           });  
      });  
      function printErrorMsg (msg) {
         $(".print-error-msg").find("ul").html('');
         $(".print-error-msg").css('display','block');
         $(".print-success-msg").css('display','none');
         $.each( msg, function( key, value ) {
            $(".print-error-msg").find("ul").append('<li>'+value+'</li>');
         });
      }
    });  
</script>
@endsection