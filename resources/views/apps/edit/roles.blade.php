@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Edit Role
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
    <div class="row">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Form Hak Akses</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="row">
                    <div class="col-md-12">
                        {!! Form::model($data, ['method' => 'POST','route' => ['role.update', $data->id]]) !!}
                        @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label"><strong>Role Name</strong></label>
                                        {!! Form::text('name', null, array('placeholder' => 'Role Name','class' => 'form-control')) !!}
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <table class="table table-striped table-bordered table-hover order-column" id="role">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Modul</th>
                                            <th>Akses Data</th>
                                            <th>Buat Data</th>
                                            <th>Edit Data</th>
                                            <th>Hapus Data</th>
                                            <th>Accept/Reject Data</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Konfigurasi Umum</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="1" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '1')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="17" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '17')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="18" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '18')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="19" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '19')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Manajemen User</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="2" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '2')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="20" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '20')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="21" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '21')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="22" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '22')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Produk</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="5" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '5')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="31" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '31')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="32" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '32')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="33" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '33')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Kontak</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="15" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '15')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="45" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '45')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="46" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '46')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="47" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '47')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Penjualan</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="3" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '3')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="23" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '23')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="24" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '24')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="25" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '25')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="26" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '26')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Permintaan</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="4" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '4')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="27" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '27')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="28" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '28')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="29" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '29')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="30" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '30')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Persediaan</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="6" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '6')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="34" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '34')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="35" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '35')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="36" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '36')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="37" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '37')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Manufaktur</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="7" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '7')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="38" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '38')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="39" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '39')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="40" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '40')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="41" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '41')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>Keuangan</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="8" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '8')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="42" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '42')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="43" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '43')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="44" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '44')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>Laporan</td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="48" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '48')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-outline">
                                                    <input type="checkbox" value="49" name="permission[]" 
                                                    @foreach($roles as $rolePermissions)
                                                        @if($rolePermissions->permission_id == '49')checked
                                                        @endif
                                                    @endforeach
                                                    />
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                
                                            </td>
                                            <td>
                                                
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="form-actions right">
                                <a button type="button" class="btn default" href="{{ route('role.index') }}">Cancel</a>
                                <button type="submit" class="btn blue">
                                    <i class="fa fa-check"></i> Save</button>
                            </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/scripts/datatable.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/table-datatables-scroller.min.js') }}" type="text/javascript"></script>
@endsection