@extends('apps.layouts.main')
@section('pageTitle', 'User Profile')
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
                <span class="caption-subject font-dark sbold uppercase">Company Profile</span>
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
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td> Alamat Perusahaan </td>
                                <td>
                                    <a href="javascript:;" id="comments" data-type="textarea" data-pk="1" data-placeholder="Your comments here..." data-original-title="Enter Company Address">{{$data->billing_address}}
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Kode POS </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Kota </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Telepon Kantor </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Fax </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Email PIC PO </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Email PIC Konfirmasi </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Nama Sales </td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:15%"> Telepon Sales</td>
                                <td style="width:50%">
                                    <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter Company Name"> {{$data->company}} </a>
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