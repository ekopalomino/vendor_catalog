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
			{!! Form::model($data, ['method' => 'POST','route' => ['store.adjust', $data->id]]) !!}
            @csrf
            <div class="row">
            	<div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Gudang</label>
                        {!! Form::select('warehouse_id', [null=>'Please Select'] + $locations,[], array('class' => 'form-control')) !!}
                    </div>
                    <div class="form-group">
                        <label class="control-label">Adjustment Amount</label>
                        {!! Form::text('adjust_amount', null, array('placeholder' => 'Closing Amount','class' => 'form-control')) !!}
                    </div>
                    <div class="form-group">
                        <label class="control-label">Notes</label>
                        {!! Form::textarea('notes', null, array('placeholder' => 'Notes','class' => 'form-control')) !!}
                    </div>
                    {{ Form::hidden('product_id', $data->product_id) }}
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
