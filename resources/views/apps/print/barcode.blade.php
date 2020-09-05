<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-body">
					<div class="tiles"> 
					    @foreach($data as $key=>$val)
					   	<div class="tile double bg-white-madison">
					        <div class="tile-body">
					            <h4 style="color:#000000;">{{ $val->name }}</h4>
					            <p> <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($val->barcode, 'C128')}}" alt="barcode" /> </p>    
					        </div>
					    </div>
					    @endforeach
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>