@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Create Role
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
            			{!! Form::open(array('route' => 'role.store','method'=>'POST', 'class' => 'horizontal-form')) !!}
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
											<th>Input Resi Pengiriman</th>
											<th>Dashboard User</th>
											<th>Dashboard Manajemen</th>
											<th>Dashboard Finance</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Konfigurasi Umum</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="1" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="17" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="18" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="19" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Manajemen User</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="2" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="20" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="21" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="22" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Produk</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="5" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="31" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="32" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="33" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td>Kontak</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="15" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="45" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="46" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>5</td>
											<td>Sales</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="3" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="23" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="24" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="25" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="26" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>6</td>
											<td>Purchasing</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="4" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="27" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="28" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="29" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="30" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>7</td>
											<td>Gudang</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="6" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="34" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="35" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="36" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="37" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="50" name="permission[]" />
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
										<tr>
											<td>8</td>
											<td>Produksi</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="7" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="38" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="39" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="40" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="41" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>9</td>
											<td>Finance</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="8" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="42" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="43" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="44" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>10</td>
											<td>Laporan</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="48" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												<label class="mt-checkbox mt-checkbox-outline">
													<input type="checkbox" value="49" name="permission[]" />
													<span></span>
												</label>
											</td>
											<td>
												
											</td>
											<td>
												
											</td>
											<td>
											</td>
											<td>
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