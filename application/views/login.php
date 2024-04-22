<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fitness app</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<?php echo base_url('public/css/materialdesignicons.min.css')?>"/>
    <link rel="stylesheet" href="<?php echo base_url('public/vendors/css/vendor.bundle.base.css')?>"/>
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<?php echo base_url('public/css/style.css')?>"/>
	<link rel="stylesheet" href="<?php echo base_url('public/css/custom.css')?>"/>
    <!-- End layout styles -->
    <link rel="shortcut icon" href="<?php echo base_url('public/images/ftlogo')?>"/>
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo" style="text-align: center;">
                  <img src="<?php echo base_url('public/images/ftlogo')?>" style="display: block; margin: 0 auto;">
				  <h3 style="color:black;,font-family:verdana; margin-top: 10px; margin-bottom: 0;">FITNESS APP</h3>
                </div>
					 <div style="text-align: center;">
						<h4 style="color: purple; margin-top: 5px;">Work hard</h4>
					</div>
                <h6 class="font-weight-light" style="margin-top: 5px;">Sign in to continue.</h6>
				<div class="alert alert-danger msg-box"></div>
                <form class="pt-3">
                  <div class="form-group">
                    <input type="email" name="email" class="form-control form-control-lg" id="email" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <input type="password" name="passsword" class="form-control form-control-lg" id="password" placeholder="Password">
                  </div>
                  <div class="mt-3">
                    <button type="button" id="btne" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</button>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                 
                  <div class="text-center mt-4 font-weight-light"> Don't have an account? <a href="register.html" class="text-primary">Create</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<?php echo base_url('public/vendors/js/vendor.bundle.base.js')?>"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<?php echo base_url('public/js/off-canvas.js')?>"></script>
    <script src="<?php echo base_url('public/js/hoverable-collapse.js')?>"></script>
    <script src="<?php echo base_url('public/js/misc.js')?>"></script>
    <!-- endinject -->
  </body>
  <script>
$(document).ready(function(){
	
	$('#btne').click(function(){
	var url='<?php echo base_url('index.php/login/authenticate'); ?>';
	var email = $('#email').val();
	var password = $('#password').val();
	$.post(url,{email,password},function(response){
		if(response.status==1){
			window.location.href='<?php echo base_url('index.php/Dashboard');?>';
			
		}
		else{
			$('.msg-box').html(response.message);
			$('.alert').show();
			setTimeout(function(){
				$('.alert').hide();
			},3000);
		}
	},'json');	
	});	

});
	</script>
</html>