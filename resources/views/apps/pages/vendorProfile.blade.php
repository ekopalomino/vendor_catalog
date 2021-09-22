@extends('apps.layouts.main')
@section('header.title')
Agrinesia Vendor Catalog | Profil
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/bootstrap-editable/inputs-ext/address/address.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/select2/css/select2-bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="portlet light portlet-fit bordered">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-settings font-dark"></i>
                <span class="caption-subject font-dark sbold uppercase">Data Perusahaan</span>
            </div>
        </div>
        <div class="portlet-body">
            <div class="row">
                <div class="col-md-12">
                    <table id="user" class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <td style="width:15%"> Nama Perusahaan </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="company_name" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td> Alamat Perusahaan </td>
                                <td>
                                    <a href="javascript:;" id="company_address" data-type="textarea" data-pk="1" data-placeholder="Your address here..." data-original-title="Enter Company Address">{{$data->billing_address}}
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Kode POS </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="postal" data-type="text" data-pk="1" data-original-title="Enter Postal Code"> {{$data->postal}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Kota </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="city" data-type="text" data-pk="1" data-original-title="Enter City Name"> {{$data->city}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Telepon Kantor </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="phone" data-type="text" data-pk="1" data-original-title="Enter Company Phone"> {{$data->phone}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Email PIC PO </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="email" data-type="text" data-pk="1" data-original-title="Enter Email"> {{$data->email}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Nama Sales </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="sales_name" data-type="text" data-pk="1" data-original-title="Enter Sales Name"> {{$data->name}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Telepon Sales</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="sales_phone" data-type="text" data-pk="1" data-original-title="Enter Sales Phone"> {{$data->sales_phone}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> No NPWP</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="tax_no" data-type="text" data-pk="1" data-original-title="Enter Tax No"> {{$data->tax_no}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> No TDP</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="tdp_no" data-type="text" data-pk="1" data-original-title="Enter TDP No"> {{$data->tdp_no}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Mata Uang</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="currency" data-type="text" data-pk="1" data-original-title="Enter Currency"> {{$data->currency}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Nama Bank</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="bank" data-type="text" data-pk="1" data-original-title="Enter Bank Name"> {{$data->bank}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Pemegang Rekening</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="acc_name" data-type="text" data-pk="1" data-original-title="Enter Account Name"> {{$data->acc_name}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> No Rekening</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="acc_no" data-type="text" data-pk="1" data-original-title="Enter Account No"> {{$data->acc_no}} </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/moment.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/jquery.mockjax.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-editable/inputs-ext/address/address.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/bootstrap-typeahead/bootstrap3-typeahead.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/select2/js/select2.full.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/form-editable.min.js') }}" type="text/javascript"></script>
@endsection