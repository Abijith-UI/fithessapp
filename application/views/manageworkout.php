<div class="main-panel">
	<div class="content-wrapper">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<h3 class="page-title"> Excersice Table </h3>
				</div>
				<div class="col-md-6 text-end">
					<button class="btn btn-primary" id="stv">Add Workout</button>
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
									  <th>Workouts</th>
									  <th>Sets</th>
									  <th>Reps</th>
									  
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
<div class="modal fade" tabindex="-1" role="dialog" id="adForm" method="post">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="alert alert-danger msg-box"></div>
			<div class="modal-header">
				<h5 class="modal-title">Add Workouts</h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="form-group">
						<label for="users" >Id</label>
						<input type="text" id="usee2" name="id" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Excersice</label>
						<input type="text" id="namee2" name="excersice" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">set</label>
						<input type="number" id="agee2" name="set" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">reps</label>
						<input type="number" id="weit2" name="rep" class="form-control" required>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success" id="sectw">Save changes</button>
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
 <script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
<script>
	function clearModal(){
		$('#adForm').find('input,textarea').val('');	
	}
	function deleteitem(fwid){
		if(fwid){
			var cnf = confirm("Are you sure you want to delete the item?");
			if(cnf)
			{
				var url = '<?php echo base_url('index.php/Manageworkout/deleteworkouts');?>';
				$.post(url,{fwid},function(response){
					if(response.status==1){
						alert(response.msg);
						listwrokouts();
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
	
	function listwrokouts(){
		var url='<?php echo base_url('index.php/Manageworkout/getAllWorkouts')?>';
		$.post(url,function(response){
			if(response){
				var slno=1;
				$('#adb').find('tbody').empty();
				for(var i=0;i<response.length;i++){
					$('#adb').find('tbody').append('<tr>\
												<td scope="col">'+slno+'</td>\
												<td scope="col">'+response[i].fw_workout+'</td>\
												<td scope="col">'+response[i].fw_sets+'</td>\
												<td scope="col">'+response[i].fw_reps+'</td>\
												<td><a href="javascript:void(0);" onclick="deleteitem('+response[i].fw_id+')" class="btn btn-sm badge-danger">delete</a></td>\
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
	$('#stv').click(function(){
		$('#adForm').modal('show');
	});
	$('#sectw').click(function(){
		
	var url='<?php echo base_url('index.php/Manageworkout/managess');?>';
	var excersice = $('#namee2').val();
	var set = $('#agee2').val();
	var rep=$('#weit2').val();
	$.post(url,{excersice,set,rep},function(response){	
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
	listwrokouts();
});

</script>