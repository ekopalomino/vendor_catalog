@extends('apps.layouts.main')
@section('header.title')
Fiber Tekno | Add Supplier
@endsection
@section('content')
<div class="page-content">
    <div class="row">
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-database"></i>New Supplier Form 
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
                {!! Form::open(array('route' => 'supplier.store','method'=>'POST', 'class' => 'form-horizontal')) !!}
                    @csrf
                    <div class="form-body">
                        <h3 class="form-section">Supplier Info</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Supplier ID</label>
                            <div class="col-md-4">
                                {!! Form::text('contact_ref', null, array('placeholder' => 'Supplier ID','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Supplier Name</label>
                            <div class="col-md-4">
                                {!! Form::text('name', null, array('placeholder' => 'Supplier Name','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Company Name</label>
                            <div class="col-md-4">
                                {!! Form::text('company', null, array('placeholder' => 'Company Name','class' => 'form-control')) !!}
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
                        <h3 class="form-section">Supplier Address</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Billing Address</label>
                            <div class="col-md-4">
                                {!! Form::textarea('billing_address', null, array('placeholder' => 'Supplier Billing Address','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-4">
                                <input type="checkbox" value="false" name="bill_ship" />
                                <span>Check if Shipping Address same as Billing Address</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Shipping Address</label>
                            <div class="col-md-4">
                                {!! Form::textarea('shipping_address', null, array('placeholder' => 'Supplier Shipping Address','class' => 'form-control')) !!} 
                            </div>
                        </div>
                        <h3 class="form-section">Payments & Taxes</h3>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Payment Method</label>
                            <div class="col-md-4">
                                {!! Form::select('payment_method', [null=>'Please Select'] + $methods,[], array('class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Payment Terms</label> 
                            <div class="col-md-4">
                                {!! Form::select('payment_terms', [null=>'Please Select'] + $terms,[], array('class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Tax Option</label>
                            <div class="col-md-4">
                                <select class="form-control" name="tax">
                                    <option>Select Option</option>
                                    <option value="0">No</option>
                                    <option value="0">Yes</option>
                                </select>  
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Tax No</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" placeholder="Tax No" name="tax_no"> 
                            </div>
                        </div>
                        {{ Form::hidden('type_id', '2') }}
                    </div>
                    <div class="form-actions right">
                        <a button type="button" class="btn default" href="{{ route('supplier.index') }}">Cancel</a>
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
<script src="{{ asset('assets/pages/scripts/form-samples.min.js') }}" type="text/javascript"></script>
@endsection