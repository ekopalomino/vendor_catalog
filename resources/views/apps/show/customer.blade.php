@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Customer Detail
@endsection
@section('header.styles')
<link href="{{ asset('assets/pages/css/profile-2.min.css') }}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="page-content">
	<div class="profile">
		<div class="tabbable-line tabbable-full-width">
			<ul class="nav nav-tabs">
				<li class="active">
	                <a href="#tab_1_1" data-toggle="tab"> Overview </a>
	            </li>
	        </ul>
	        <div class="tab-content">
	        	<div class="tab-pane active" id="tab_1_1">
	        		<div class="row">
	        			<div class="col-md-3">
	        				<ul class="list-unstyled profile-nav">
	                            <li>
	                                <img src="/storage/avatars/user.jpg" class="img-responsive pic-bordered" alt="" />
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="col-md-9">
				          	<div class="row">
				           		<div class="col-md-8 profile-info">
				           			<h1 class="font-green sbold uppercase">John Doe</h1>
				           			<p>Company</p>
				           			<p>Billing Address</p>
				          			<p>Shipping Address</p>
				          			<p>Tax No</p>
				           			<p>Payment Method</p>
				          			<p>Payment Terms</p>
				           		</div>
				           		<div class="col-md-4">
				           		</div>
				           	</div>
				            <div class="tabbable-line tabbable-custom-profile">
				               	<ul class="nav nav-tabs">
				               		<li class="active">
				                        <a href="#tab_1_11" data-toggle="tab"> Latest Customers </a>
				                    </li>
				                </ul>
				                <div class="tab-content">
				                   	<div class="tab-pane active" id="tab_1_11">
				                   		<div class="portlet-body">
				                  			<table class="table table-striped table-bordered table-advance table-hover">
				                   				<thead>
				                   					<tr>
				                   						<th>Date</th>
				                   						<th>Amount</th>
				                   						<th>Total</th>
				                   					</tr>
				                   				</thead>
				                   				<tbody>
						                                					
				                   				</tbody>
			                       			</table>
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



