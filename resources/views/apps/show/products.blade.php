@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Lihat Produk
@endsection
@section('header.plugins')
<link href="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('header.styles')
<link href="{{ asset('assets/pages/css/profile.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<div class="profile-sidebar">
				<div class="portlet light profile-sidebar-portlet ">
					<div class="profile-userpic">
						<img src="/public/products/{{$product->image}}" class="img-responsive" alt="">
					</div>
					<div class="profile-usertitle">
						<div class="profile-usertitle-name">{{ $product->name}}</div>
						<div class="profile-usertitle-job">{{ $product->Categories->name}}</div>
					</div>
				</div>
			</div>
			<div class="profile-content">
				<div class="row">
					<div class="col-md-12">
						<div class="portlet light ">
							<div class="portlet-title tabbable-line">
								<div class="caption caption-md">
                                    <i class="icon-globe theme-font hide"></i>
                                    <span class="caption-subject font-blue-madison bold uppercase">Product Details</span>
                                </div>
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        
                                    </li>
                                </ul>
                            </div>
							<div class="portlet-body">
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1_1">
										<div class="col-md-6">
											<div class="form-group">
                                                <label class="control-label">Product SKU :</label>
                                                <p>{{ $product->product_sku }}</p>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Product Barcode :</label>
                                                <p><img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->barcode, 'UPCA')}}" alt="barcode" /></p>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Product Category :</label>
                                                <p>{{ $product->Categories->name }}</p> 
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Product UOM :</label>
                                                <p>{{ $product->Uoms->name }}</p> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
											<div class="form-group">
                                                <label class="control-label">Product Supplier :</label>
                                                <p>{{ $product->Suppliers->name }}</p>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Product Cost Price :</label>
                                                <p>Rp {{ number_format($product->base_price,2,',','.')}}</p>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Product Sale Price :</label>
                                                <p>Rp {{ number_format($product->sale_price,2,',','.')}}</p>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Last Update :</label>
                                                <p>{{date("d F Y H:i",strtotime($product->updated_at)) }}</p> 
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                        	<div class="portlet box red">
                                        		<div class="portlet-title">
                                        			<div class="caption">
                                            			<i class="fa fa-database"></i>Bill of Materials 
                                            		</div>
                                            	</div>
                                            	<div class="portlet-body">
		                                        	<table class="table table-striped table-bordered table-hover" id="sample_1">
		                                        		<thead>
								                			<tr>
								                                <th>No</th>
								                				<th>Material Name</th>
								                				<th>Quantity</th>
								                                <th>Material UOM</th>
								                			</tr>
								                		</thead>
								                		<tbody>
								                			@foreach($boms as $key => $item)
								                			<tr>
								                				<td>{{ $key+1 }}</td>
								                				<td>{{ $item->Materials->name }}</td>
								                				<td>{{ $item->quantity }}</td>
								                				<td>{{ $item->Uoms->name }}</td>
								                			</tr>
								                			@endforeach
								                		</tbody>
								                	</table>
								                </div>
							                </div>
						                </div>
						                <div class="col-md-6">
							                <div class="form-group">
		                            			<tr>
					                                <td>
					                                    <a button type="close" class="btn green btn-outline sbold" href="{{ url()->previous() }}">Close</a>
					                                </td>
					                            </tr>
	                        				</div>
	                        			</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
</div>
@endsection
@section('footer.plugins')
<script src="{{ asset('assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/global/plugins/jquery.sparkline.min.js') }}" type="text/javascript"></script>
@endsection
@section('footer.scripts')
<script src="{{ asset('assets/pages/scripts/profile.min.js') }}" type="text/javascript"></script>
@endsection
