<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>관리자::멤버/생성</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/admin" class="nav-link">관리자 홈페이지</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/" class="nav-link">사용자 홈페이지</a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin" class="brand-link">
      <img src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Trip Diary</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/resources/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">관리자 아이디 <span class="badge badge-success">online</span></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item">
                <a href="/admin" class="nav-link">
                  <i class="nav-icon fas fa-th"></i>
                  <p>
                    홈
                  </p>
                </a>
              </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                목록열기
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="admin_Member" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>회원관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin_Board" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시판 관리</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   <!-- Content Header (Page header) -->
   <div class="content-header">
      <div class="container-fluid">
         <div class="row mb-2">
            <div class="col-sm-6">
               <h1 class="m-0 text-dark">DashBoard Management</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Starter Page</li>
               </ol>
            </div>
            <!-- /.col -->
         </div>
         <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
      <div class="col-md-12">
         <!-- general form elements disabled -->
         <div class="card card-warning">
            <div class="card-header">
               <h3 class="card-title">READ Member</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
               <form role="form" action="/admin/member_delete" method="post">
                  <div class="row">
                     <div class="col-sm-12">
                        <!-- text input -->
                        <div class="form-group">
                           <label>user_id</label> <br> ${memberVO.user_id}
                           

                        </div>
                     </div>

                     <div class="col-sm-12">
                        <!-- text input -->
                        <div class="form-group">
                           <label>user_name</label> <br> ${memberVO.user_name}
                        </div>
                     </div>
                     
                     <div class="col-sm-12">
                              <!-- text input -->
                              <div class="form-group">
                                 <label>user_pw</label> 
                                 <input value="" name="user_pw" type="text" class="form-control"
                                    placeholder="${memberVO.user_pw}" readonly="readonly">
                              </div>
                           </div>

                     <div class="col-sm-12">
                        <!-- text input -->
                        <div class="form-group">
                           <label>email</label> <br> ${memberVO.email}
                        </div>
                     </div>

                     <div class="col-sm-12">
                        <!-- text input -->
                        <div class="form-group">
                           <label>point</label> <br>
                           ${memberVO.point}
                        </div>
                     </div>
                        <div class="col-sm-12">
                        <div class="form-group">
                           <label>enabled</label> <br> ${memberVO.enabled}
                        </div>
                     </div>
                     <div class="col-sm-12">
                        <!-- text input -->
                        <div class="form-group">
                           <label>level</label> <br> ${memberVO.levels}
                        </div>
                     </div>

                  </div>
                  <div class="buttons">
                     <a
                        href="/admin/admin_MemberUpdate?user_id=${memberVO.user_id}&page=${pageVO.page}"
                        class="btn btn-warning">수정</a>
                     <button type="submit" class="btn btn-danger">삭제</button>
                     <a href="/admin/admin_Member?page=${pageVO.page}"
                        class="btn btn-primary">목록</a>
                  </div>

                  <input type="hidden" name="user_id" value="${memberVO.user_id}">
               </form>
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content"></div>
            <!-- .content  -->
         </div>
         <!-- Control Sidebar -->
         <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
               <h5>Title</h5>
               <p>Sidebar content</p>
               <button type="button" class="btn btn-primary btn-lg btn-block">로그아웃</button>
            </div>
         </aside>
         <!-- /.control-sidebar -->
      </div>
   </div>
</div>
<!-- ./Contents Wrap -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->


</body>
</html>
