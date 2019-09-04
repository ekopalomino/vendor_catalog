@extends('apps.layouts.main')
@section('content')
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<img class="rounded-circle" src="/storage/avatars/{{ $user->avatar }}" />
			<br>
			<br>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Username</th>
						<td>{{ $user->name}}</td>
					</tr>
					<tr>
						<th>Access Role</th>
						<td>
							@if(!empty($user->getRoleNames()))
			                @foreach($user->getRoleNames() as $v)
			                    {{$v}}
			                @endforeach
			                @endif
			            </td>
					</tr>
					<tr>
						<th>Created Date</th>
						<td>
							{{ date("d F Y",strtotime($user->created_at)) }} jam {{date("g:ha",strtotime($user->created_at)) }}
						</td>
					</tr>
					<tr>
						<th>Last Login</th>
						<td>@if(!empty($user->last_login_at))
							{{ date("d F Y",strtotime($user->last_login_at)) }} jam {{date("g:ha",strtotime($user->last_login_at)) }}
							@endif
						</td>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</div>       
@endsection