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
			{!! Form::model($data, ['method' => 'POST','route' => ['delivery.done', $data->id]]) !!}
            @csrf
            <div class="row">
            	<div class="col-md-12">
                	<div class="form-group">
                		<label class="control-label">No Resi Pengiriman</label>
                		{!! Form::text('receipt', null, array('placeholder' => 'Resi','class' => 'form-control')) !!}
                	</div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Tipe Pengiriman</label>
                        <select name="delivery_type" class="form-control">
                            <option value="">Please Select</option>
                            <option value="1">Full Delivery</option>
                            <option value="2">Partial Delivery</option>
                        </select>
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
