	<!-- partial -->
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="page-header">
			  <h3 class="page-title">
				<span class="page-title-icon bg-gradient-primary text-white me-2">
				  <i class="mdi mdi-home"></i>
				</span> Dashboard
			  </h3> 
			  
			  <!-- partial -->
			</div>
			<div class="content-area dashboard-block">
				<div class="row">
					<div class="col-md-4">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-4">
										<i class="fa fa-id-card-o" aria-hidden="true"></i>
									</div>
									<div class="col-md-8">
										<h3>Total Registers</h3>
										<h3><?php echo $registers; ?></h3>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					<div class="col-md-4">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-4">
										<i class="fa fa-calendar" aria-hidden="true"></i>
									</div>
									<div class="col-md-8">
										<h3>Total Schedules</h3>
										<h3><?php echo $schedules; ?></h3>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-4">
										<i class="fa fa-hourglass-o" aria-hidden="true"></i>
									</div>
									<div class="col-md-8">
										<h3>Total Workouts</h3>
										<h3><?php echo $workouts; ?></h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="clearfix">&nbsp;</div>
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<h3>New Users</h3>
									</div>
									<div class="col-md-12">
										<div class="responseive-table">
											<table class="table" id="aduse">
												<thead>
													<tr>
													  <th>Slno</th>
													  <th>Name</th>
													  <th>Gmail</th>
													   <th>Password</th>
													  <th>Age</th>
													  <th>Weight</th>
													  <th>Height</th>
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
			<!-- main-panel ends -->
		</div>
	<!-- page-body-wrapper ends -->
	</div>  

<script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
<script>
function listusers(){
	var url='<?php echo base_url('index.php/Dashboard/getAllUsers')?>';
	$.post(url,function(response){
		if(response){
			var slno=1;
			$('#aduse').find('tbody').empty();
			for(var i=0;i<response.length;i++){
				$('#aduse').find('tbody').append('<tr>\
											<td scope="col">'+slno+'</td>\
											<td scope="col">'+response[i].FT_UdName+'</td>\
											<td scope="col">'+response[i].FT_Udgmail+'</td>\
											<td scope="col">'+response[i].FT_UdPassword+'</td>\
											<td scope="col">'+response[i].FT_UdAge+'</td>\
											<td scope="col">'+response[i].FT_UdWeight+'</td>\
											<td scope="col">'+response[i].FT_UdHeight+'</td>\
											</tr>');
				slno++;							

			}
		
		}
	},'json');
}
$(document).ready(function(){
	listusers();
});
</script>