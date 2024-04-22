<div class="main-panel">
	<div class="content-wrapper">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<h3 class="page-title"> Schedules Table </h3>
				</div>
				<div class="col-md-6 text-end">
					<button class="btn btn-primary" id="stadd">Add New</button>
				</div>
			</div>
			<div class="clearfix">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-lg-12 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						
						<div class="responseive-table">
							<table class="table" id="adb">
								<thead>
									<tr>
									  <th>Id</th>
									  <th>Wrokout</th>
									  <th>Time</th>
									  <th>Day</th>
									  <th>Remove</th>
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
<div class="modal fade" tabindex="-1" role="dialog" id="adForm2" method="post">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="alert alert-danger msg-box"></div>
			<div class="modal-header">
				<h5 class="modal-title">Add Schedules</h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="form-group">
					  	<div class="col-lg-12 mb-2">
						<label  class="form-label" id="usee3" name="id" >Select Id</label>
						<select class="form-select fs2 text-dark" id="sid">
							<option value=''></option>
						</select>
					   </div>
					<div class="col-lg-12 mb-2">
						<label for="users" >Select Workout</label>
						<select class="form-select fs1 text-dark" id="namee3" name="swork">
							<option value=""></option>	
						</select>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Time</label>
						<input type="time" id="agee3" name="timee" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users" >Day</label>
						<select class="form-select text-dark" id="daye" name="day">
							<option value=''></option>
							<option value='Monday'>Monday</option>
							<option value='Tuesday'>Tuesday</option>
						</select>
					</div>
				</div>
			</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success" id="svtca">Save changes</button>
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<script>
	function clearModal(){
		$('#adForm2').find('input,textarea').val('');	
	}
	function deleteitem(fsid){
		if(fsid){
			var cnf = confirm("Are you sure you want to delete the item?");
			if(cnf)
			{
				var url = '<?php echo base_url('index.php/Schedules/deleteschedules');?>';
				$.post(url,{fsid},function(response){
					if(response.status==1){
						alert(response.msg);
						listdiets();
					}else{
						alert(response.msg);
						return false;
					}
				},'json');
			}
			else{
				return false;
			}
		}
	}
	function listschedules(){
		var url='<?php echo base_url('index.php/Schedules/getAllSchedules')?>';
		$.post(url,function(response){
			if(response){
				var slno=1;
				for(var i=0;i<response.length;i++){
					$('#adb').find('tbody').append('<tr>\
												<td scope="col">'+slno+'</td>\
												<td scope="col">'+response[i].fs_workout+'</td>\
												<td scope="col">'+response[i].fs_time+'</td>\
												<td scope="col">'+response[i].fs_day+'</td>\
												<td><a href="javascript:void(0);" onclick="deleteitem('+response[i].fs_id+')" class="btn btn-sm badge-danger">delete</a></td>\
												</tr>');
					slno++;							

				}
			
			}
		},'json');
	}
</script>

<script>
function listdiets(){
	var url='<?php echo base_url('index.php/Schedules/getAlldets')?>';
	$.post(url,function(res){
		if(res){
			var slno=1;
			for(var i=0;i<res.length;i++){
				$('.fs1').append('\
								<option value='+res[i].fw_workout+'>'+res[i].fw_workout+'</option>');
				$('.fs2').append('\
								<option value='+res[i].fw_id+'>'+res[i].fw_id+'</option>');
				slno++;
			}
		}
	},'json');
	
}
</script>

<script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
<script>
$(document).ready(function(){
	$('#stadd').click(function(){
		$('#adForm2').modal('show');
	});
	$('#svtca').click(function(){
		
	var url='<?php echo base_url('index.php/Schedules/schedulee');?>';
	var swork = $('#namee3').val();
	var timee = $('#agee3').val();
	var day=$('#daye').val();
	$.post(url,{swork,timee,day},function(response){	
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
	listschedules();
	listdiets();
});
</script>
