@extends('apps.layouts.main')
@section('content') 
<div class="page-content">
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
	<div class="row">
		<div class="col-md-12">
			{!! Form::model($items, ['method' => 'POST','route' => ['salesItem.store', $items->id]]) !!}
            @csrf
            <div class="row">
            	<div class="col-md-12">
                	<div class="form-group">
                		<label class="control-label">Nama Produk</label>
                		{!! Form::text('product_name',null, array('placeholder' => 'Produk','class' => 'form-control')) !!}
                	</div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Jumlah</label>
                        {!! Form::number('quantity', null, array('placeholder' => 'Quantity','class' => 'form-control','required')) !!}
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Satuan</label>
                        {!! Form::select('uom_id', [null=>'Please Select'] + $uoms,[], array('class' => 'form-control','required')) !!}
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Harga Satuan</label>
                        {!! Form::number('sale_price', null, array('placeholder' => 'Sale Price','class' => 'form-control','required')) !!}
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Diskon Satuan</label>
                        {!! Form::number('discount', null, array('placeholder' => 'Diskon','class' => 'form-control','required')) !!}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="close" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                <button id="register" type="submit" class="btn green">Save changes</button>
            </div>
            {!! Form::close() !!}
		</div>
	</div>
</div>       
@endsection
@section('footer.scripts')
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
            
    });  
</script>
@endsection
