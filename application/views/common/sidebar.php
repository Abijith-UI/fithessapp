<!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="http://localhost/fitness/public/images/face4.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">Abijith</span>
                  <span class="text-secondary text-small"></span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url('index.php/dashboard')?>">
			   <i class="fa fa-home me-2" aria-hidden="true"></i>
                  <span class="menu-title" id="dsb">Dashboard</span>
               
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url('index.php/manageusers')?>">
			  <i class="fa fa-users me-2" aria-hidden="true"></i>
                <span id="use" class="menu-title">Users</span> 
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url('index.php/manageworkout')?>">
			  <i class="fa fa-heartbeat me-2" aria-hidden="true"></i>
                <span class="menu-title">Excercises</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url('index.php/schedules')?>">
			  <i class="fa fa-calendar-check-o me-2" aria-hidden="true"></i>
                <span class="menu-title ">Schedules</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url('index.php/managediet')?>">
			  <i class="fa fa-cutlery me-2" aria-hidden="true"></i>
                <span class="menu-title">Diet</span>
              </a>
            </li>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item sidebar-actions">
              <span class="nav-link">
              </span>
            </li>
          </ul>
        </nav>