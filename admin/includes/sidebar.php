<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="index3.html" class="brand-link">
    <img src="assets/dist/img/napd.svg" alt="NAPD Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">NAPD OLMS</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">

    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="assets/dist/img/Hasan.jpg" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">Md. Nasarul Hasan</a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">

      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
        <li class="nav-item menu-open">
          <a href="#" class="nav-link active">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
              <i class="fa-solid fa-gauge-circle-bolt"></i>
            </p>
          </a>
        </li>

        <li class="nav-header">Master List</li>
        <li class="nav-item dropdown">
          <a href="teacher/index.php" class="nav-link nav-faculty">
            <i class="nav-icon fas fa-user-tie"></i>
            <p>
              Teacher
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="student/index.php" class="nav-link nav-faculty">
            <i class="nav-icon fas fa-users"></i>
            <p>
              Students
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="course/index.php" class="nav-link nav-course">
            <i class="nav-icon fas fa-list"></i>
            <p>
              Course
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="subject/index.php" class="nav-link nav-subject">
            <i class="nav-icon fas fa-tasks"></i>
            <p>
              Subjects
            </p>
          </a>
        </li>
        <li class="nav-header">Maintenance</li>

        <li class="nav-item dropdown">
          <a href="download/index.php" class="nav-link nav-course">
            <i class="fa-solid fa-file-circle-plus"></i>
            <p>
              Upload lectur file
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="video/video_insert.php" class="nav-link nav-course">
            <i class="fa-solid fa-file-video"></i>
            <p>
              Upload class vedio
            </p>
          </a>
        </li>

        <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
            <i class="fa-solid fa-person-arrow-down-to-line"></i>
              <p>
                Add Users
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="fa-solid fa-user-shield"></i>
                  <p>Add admin user</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="fa-solid fa-user-tie"></i>
                  <p>Add Teacher user</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="fa-solid fa-user-plus"></i>
                  <p>Add Student user</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
          <a href="#" class="nav-link nav-course">
          <i class="fa-solid fa-right-from-bracket"></i>
            <p>
              Log out
            </p>
          </a>
        </li>

      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>


<script>
  $(document).ready(function() {
    var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
    var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
    page = page.split('/');
    page = page[0];
    if (s != '')
      page = page + '_' + s;

    if ($('.nav-link.nav-' + page).length > 0) {
      $('.nav-link.nav-' + page).addClass('active')
      if ($('.nav-link.nav-' + page).hasClass('tree-item') == true) {
        $('.nav-link.nav-' + page).closest('.nav-treeview').siblings('a').addClass('active')
        $('.nav-link.nav-' + page).closest('.nav-treeview').parent().addClass('menu-open')
      }
      if ($('.nav-link.nav-' + page).hasClass('nav-is-tree') == true) {
        $('.nav-link.nav-' + page).parent().addClass('menu-open')
      }
    }
  })
</script>