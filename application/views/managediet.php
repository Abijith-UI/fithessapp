<div class="main-panel">
	<div class="content-wrapper">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<h3 class="page-title"> Diet Table </h3>
				</div>
				<div class="col-md-6 text-end">
					<button class="btn btn-primary" id="nwadd">Add Diet</button>
				</div>
			</div>
			<div class="clearfix">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-lg-12 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						
						<div class="responseive-table">
							<table class="table" id="adb4">
								<thead>
									<tr>
									  <th>Id</th>
									  <th>Name</th>
									  <th>Breakfast</th>
									  <th>Lunch</th>
									  <th>Dinner</th>
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
<div class="modal fade" tabindex="-1" role="dialog" id="adForm4" method="post">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="alert alert-danger msg-box"></div>
			<div class="modal-header">
				<h5 class="modal-title">Add Diet</h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="form-group">
						<label for="users" >Id</label>
						<input type="text" id="usee4" name="id" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Name</label>
						<input type="text" id="namee4" name="Name" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Breakfast</label>
						<textarea rows="4" cols="50" id="bkf" name="Breakfast" class="form-control" required></textarea>
						<label for="users">Lunch</label>
						<textarea rows="4" cols="50" id="lun" name="Lunch" class="form-control" required></textarea>
						<label for="users">Dinner</label>
						<textarea rows="4" cols="50" id="din" name="Dinner" class="form-control" required></textarea>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success" id="chsvt">Save changes</button>
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script>
	function clearModal(){
		$('#adForm4').find('input,textarea').val('');	
	}
	function listdiets(){
		var url='<?php echo base_url('index.php/Managediet/getAllDiets')?>';
		$.post(url,function(response){
			if(response){
				var slno=1;
				for(var i=0;i<response.length;i++){
					$('#adb4').find('tbody').append('<tr>\
												<td scope="col">'+slno+'</td>\
												<td scope="col">'+response[i].Fd_Name+'</td>\
												<td scope="col">'+response[i].Fd_breakfast+'</td>\
												<td scope="col">'+response[i].Fd_lunch+'</td>\
												<td scope="col">'+response[i].Fd_dinner+'</td>\
												</tr>');
					slno++;							

				}
			
			}
		},'json');
	}

</script>

<script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
<script>
$(document).ready(function(){
	$('#nwadd').click(function(){
		$('#adForm4').modal('show');
	});
	$('#chsvt').click(function(){
		
	var url='<?php echo base_url('index.php/Managediet/managedt');?>';
	var Name = $('#namee4').val();
	var Breakfast = $('#bkf').val();
	var Lunch = $('#lun').val();
	var Dinner = $('#din').val();
	$.post(url,{Name,Breakfast,Lunch,Dinner},function(response){	
	if(response){
		{
			$('.msg-box').html(response.message);
			$('.alert').show();
			setTimeout(function(){
				$('.alert').hide();
			},3000);
			clearModal();
		}
	}
	},'json');
	});	
	$(".clear").click(function(){
		clearModal();
	});
	listdiets();
});

</script>