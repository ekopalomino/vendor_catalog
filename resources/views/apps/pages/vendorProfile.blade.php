@extends('apps.layouts.main')
@section('header.title')
Agrinesia Vendor Catalog | Profil Vendor
@endsection
@section('content')
<div class="page-content">
    <div class="row">
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-database"></i>Profil Vendor
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
                {!! Form::model($data, ['method' => 'POST','route' => ['vendor.update', $data->id], 'class' => 'form-horizontal']) !!}
                    @csrf
                    <div class="form-body">
                        <h3 class="form-section">Vendor Info</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Vendor ID</label>
                            <div class="col-md-4">
                                {!! Form::text('ref_id', null, array('placeholder' => 'Supplier ID','class' => 'form-control','disabled')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Vendor Name</label>
                            <div class="col-md-4">
                                {!! Form::text('name', null, array('placeholder' => 'Supplier Name','class' => 'form-control')) !!} 
                            </div>
                        </div> 
                        <div class="form-group">
                            <label class="col-md-3 control-label">Company Name</label>
                            <div class="col-md-4">
                                {!! Form::text('company', null, array('placeholder' => 'Company Name','class' => 'form-control','disabled')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Phone</label>
                            <div class="col-md-4">
                                {!! Form::text('phone', null, array('placeholder' => 'Supplier Phone','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Mobile</label>
                            <div class="col-md-4">
                                {!! Form::text('mobile', null, array('placeholder' => 'Supplier Mobile','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Email</label>
                            <div class="col-md-4">
                                {!! Form::text('email', null, array('placeholder' => 'Supplier Email','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <h3 class="form-section">Vendor Address</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Billing Address</label>
                            <div class="col-md-4">
                                {!! Form::textarea('billing_address', null, array('placeholder' => 'Supplier Billing Address','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Kode POS</label>
                            <div class="col-md-4">
                                {!! Form::text('postal', null, array('placeholder' => 'Kode POS','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Kota</label>
                            <div class="col-md-4">
                                {!! Form::text('city', null, array('placeholder' => 'Kota','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <h3 class="form-section">Payments & Taxes</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Payment Method</label>
                            <div class="col-md-4">
                                {!! Form::select('payment_method', $methods,old('payment_method'), array('class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Payment Terms</label>
                            <div class="col-md-4">
                                {!! Form::select('payment_terms', $terms,old('payment_term'), array('class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Tax Option</label>
                            <div class="col-md-4">
                                {!! Form::select('tax', array(''=>'Please Select','0'=>'No','1'=>'Yes'),old('tax'), array('class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Tax No</label>
                            <div class="col-md-4">
                                {!! Form::text('tax_no', null, array('placeholder' => 'Tax Number','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>
                    <div class="form-actions right">
                        <a button type="button" class="btn default" href="{{ route('vendor.index') }}">Cancel</a>
                        <button type="submit" class="btn blue">
                        <i class="fa fa-check"></i> Save</button>
                    </div>
                    {!! Form::close() !!}                              
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.scripts')
<script src="{{ asset('apps/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection