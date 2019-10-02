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
            {!! Form::open(array('route' => 'manufacture.complete','method'=>'POST')) !!}
            @csrf
            <table class="table table-striped table-bordered table-hover" id="sample_2">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Material</th>
                        <th>Pemakaian</th>
                        <th>Jumlah Scrap</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $key=>$val)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $val->Products->name }}{{ Form::hidden('material_id[]', $val->product_id) }}</td>
                        <td>{!! Form::text('usage[]', null, array('placeholder' => 'Pemakaian','class' => 'form-control')) !!}</td>
                        <td>{!! Form::text('scrap[]', null, array('placeholder' => 'Scrap','class' => 'form-control')) !!}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <table class="table table-striped table-bordered table-hover" id="sample_2">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Produk</th>
                        <th>Hasil</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($products as $key=>$val)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $val->Items->name }}{{ Form::hidden('product_id', $val->item_id) }}</td>
                        <td>{!! Form::text('result', null, array('placeholder' => 'Hasil Akhir','class' => 'form-control')) !!}</td>
                        {{ Form::hidden('id', $val->id) }}
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="modal-footer">
                <button type="close" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                <button id="register" type="submit" class="btn green">Save changes</button>
            </div>
            {!! Form::close() !!}
		</div>
	</div>
</div>       
@endsection
