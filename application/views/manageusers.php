<div class="main-panel">
	<div class="content-wrapper">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<h3 class="page-title"> Users Tables </h3>
				</div>
				<div class="col-md-6 text-end">
					<button class="btn btn-primary" id="addNewbtn">Add New</button>
				</div>
			</div>
			<div class="clearfix">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-lg-12 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						
						<div class="responseive-table">
							<table class="table" id="aduse">
								<thead>
									<tr>
									  <th>Id</th>
									  <th>Name</th>
									  <th>Gmail</th>
									   <th>Password</th>
									  <th>Age</th>
									  <th>Weight</th>
									  <th>Height</th>
								
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
<div class="modal fade" tabindex="-1" role="dialog" id="addNewForm" method="post">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="alert alert-danger msg-box"></div>
			<div class="modal-header">
				<h5 class="modal-title">Add Users</h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="form-group">
						<label for="users" >Id</label>
						<input type="text" id="usee" name="id" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Name</label>
						<input type="text" id="namee" name="name" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Gmail</label>
						<input type="text" id="gmailee" name="gmail" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Password</label>
						<input type="text" id="passee" name="password" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Age</label>
						<input type="number" id="agee" name="age" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Weight in Kg</label>
						<input type="number" id="weit" name="weight" class="form-control" required>
					</div>
					<div class="col-lg-12 mb-2">
						<label for="users">Height in cm</label>
						<input type="number" id="heit" name="height" class="form-control" required>						
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success" id="svebtn">Save changes</button>
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>



<script>
	function clearModal(){
		$('#addNewForm').find('input,textarea').val('');	
	}
	function deleteItem(UdId) {
	
		if(UdId) {
			var cnf = confirm("Are you sure you want to delete the item?");
			if(cnf) {
				var url = '<?php echo base_url('index.php/Manageusers/deleteUser'); ?>';
				$.post(url, {UdId}, function(response){
					if(response.status==1) {
						alert(response.msg);
						listusers();
					}
					else {
						alert(response.msg);
						return false;
					}
				},'json');
			}
			else {
				return false;
			}
		}
		
	}
	function listusers(){
		var url='<?php echo base_url('index.php/Manageusers/getAllUsers')?>';
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
												<td><a href="javascript:void(0);" onclick="deleteItem('+response[i].FT_UdId+')" class="btn btn-sm badge-danger">delete</a></td>\
												</tr>');
					slno++;							

				}
			
			}
		},'json');
	}

</script>
<script>
/*var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}*/
</script>
 <script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
<script>
$(document).ready(function(){
	$('#addNewbtn').click(function(){
		$('#addNewForm').modal('show');
	});
	$('#svebtn').click(function(){
		
	var url='<?php echo base_url('index.php/Manageusers/manages');?>';
	var name = $('#namee').val();
	var gmail=$('#gmailee').val();
	var password=$('#passee').val();
	var age = $('#agee').val();
	var weight=$('#weit').val();
	var height=$('#heit').val();
	$.post(url,{name,gmail,password,age,weight,height},function(response){	
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
	listusers();
});

</script>
</html>

	


	
	
