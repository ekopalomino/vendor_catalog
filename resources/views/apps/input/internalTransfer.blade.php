@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Tambah Mutasi Barang
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
                <i class="fa fa-database"></i> Form Mutasi Barang 
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
            {!! Form::open(array('route' => 'store.transfer','method'=>'POST', 'class' => 'horizontal-form')) !!}
            @csrf
            <div class="form-body">
            	<div class="row">
            		{{ Form::hidden('from_wh', $userLocation) }}
                <div class="col-md-5">
                  <div class="form-group">
                    <label class="control-label">Gudang Penerima</label>
                    {!! Form::select('to_wh', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
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
	            					<th>Jumlah</th>
	            					<th>Satuan</th>
	            					<th></th>
	            				</tr>
	            			</thead>
	            			<tbody>
	            				<tr>
	            					<td>{!! Form::select('product_name[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control','required')) !!}</td>
                    		        <td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control','required')) !!}</td>
                    		        <td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}</td>
                    		        <td><button type="button" name="add" id="add" class="btn btn-success">Tambah</button></td>
	            				</tr>
	            			</tbody>
	            		</table>
	            	</div>
            	</div>
            	<div class="form-actions right">
                    <a button type="button" class="btn default" href="{{ route('transfer.index') }}">Cancel</a>
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
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#sample_2').append('<tr id="row'+i+'" class="dynamic-added"><td>{!! Form::select('product_name[]', [null=>'Please Select'] + $products,[], array('class' => 'form-control')) !!}</td><td>{!! Form::text('quantity[]', null, array('placeholder' => 'Quantity','class' => 'form-control')) !!}</td><td>{!! Form::select('uom_id[]', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control')) !!}</td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });   
    });  
</script>
@endsection