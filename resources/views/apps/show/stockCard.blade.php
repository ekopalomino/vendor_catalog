@extends('apps.layouts.main')
@section('content')
<script type="text/javascript">
    $(document).on('ajaxComplete ajaxReady ready', function () {
        $('ul.pagination li a').off('click').on('click', function (e) {
            $("#modalMd").modal('show');
            $('#modalMdContent').load($(this).attr('href'));
            $('#modalMdTitle').html($(this).attr('title'));
            e.preventDefault();
        });
    });
</script>
<div class="page-content">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover" id="sample_2">
				<thead>
                	<tr>
                        <th>No</th>
                		<th>Trans Date</th>
                		<th>Reference ID</th>
                		<th>Income</th>
                		<th>Outcome</th>
                		<th>Remaining</th>
                	</tr>
                </thead>
                <tbody>
                	@foreach($data as $key=>$val)
                	<tr>
	                	<td>{{ $key+1 }}</td>
	                	<td>{{date("d F Y H:i",strtotime($val->created_at)) }}</td>
	                	<td>{{ $val->reference_id}}</td>
	                	<td>{{ $val->in}}</td>
	                	<td>{{ $val->out }}</td>
	                	<td>{{ $val->rem }}</td>
	                </tr>
                	@endforeach
                </tbody>
            </table>
            <div class="row">
				<div class="col-md-12 text-center">
					<nav aria-label="Page navigation">				
						{{ $data->links() }}
					</nav>
				</div>
			</div>          
		</div>
	</div>
</div>       
@endsection