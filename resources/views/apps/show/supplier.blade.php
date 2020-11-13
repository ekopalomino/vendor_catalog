@extends('apps.layouts.main')
@section('header.title')
FiberTekno | Supplier Detail
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
				           			<h1 class="font-green sbold uppercase">{{ $data->name }}</h1>
				           			<p>Company Name : {{ $data->company }}</p>
				           			<p>Billing Address : {{ $data->billing_address }}</p>
				          			<p>Shipping Address : {{ $data->shipping_address }}</p>
				          			<p>Tax No</p>
				           			<p>Payment Method : {{ $data->Methods->name }}</p>
				          			<p>Payment Terms : {{ $data->Terms->name }}</p>
				           		</div>
				           		<div class="col-md-4">
				           		</div>
				           	</div>
				            <div class="tabbable-line tabbable-custom-profile">
				               	<ul class="nav nav-tabs">
				               		<li class="active">
				                        <a href="#tab_1_11" data-toggle="tab"> Latest Purchase </a>
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
				                   					<tr>
				                   						<td></td>
				                   						<td></td>
				                   						<td></td>			
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



