<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet"
	href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
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
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="/admin" class="nav-link">관리자 홈페이지</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="/" class="nav-link">사용자 홈페이지</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="/admin" class="brand-link"> <img src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Trip Diary</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="/resources/admin/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">관리자 아이디 <span
							class="badge badge-success">online</span></a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="/admin" class="nav-link">
								<i class="nav-icon fas fa-th"></i>
								<p>홈</p>
						</a></li>
						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									목록열기 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="admin_Member"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>회원관리</p>
								</a></li>
								<li class="nav-item"><a href="admin_Board"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>게시판 관리</p>
								</a></li>
							</ul></li>
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
							<h1 class="m-0 text-dark">상세 보기</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="/admin">Home</a></li>
								<li class="breadcrumb-item active">회원 상세보기</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="card card-warning">
						<div class="card-header">
							<h3 class="card-title">테스트 단계입니다.</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<form role="form" action="/admin/admin_MemberUpdate" method="POST">
								<div class="row">
									<div class="col-sm">
										<!-- 아이디 input -->
										<div class="form-group">
											<label>아이디</label> <input type="text" name="user_id"
												class="form-control" value="${memberVO.user_id}"
												readonly="readonly">
										</div>
									</div>
								</div>
								<div class="row">
                              <!-- text input -->
                              <div class="col-sm">
                                 <label>패스워드</label> 
                                 <input value="" name="user_pw" type="text" class="form-control"
                                    placeholder="${memberVO.user_pw}">
                              </div>
                           </div>
								<div class="row">
									<div class="col-sm">
										<!-- 이름 input -->
										<div class="form-group">
											<label>이름</label> <input type="text" name="user_name"
												class="form-control" value="${memberVO.user_name}">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm">
										<!-- 이메일 input -->
										<div class="form-group">
											<label>이메일</label> <input type="text" name="email"
												class="form-control" value="${memberVO.email}">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm">
										<!-- regdate input -->
										<div class="form-group">
											<label>point</label> <input type="text" name="point" class="form-control"
												value="${memberVO.point}" >
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<!-- select -->
										<div class="form-group">
											<label>enabled</label> <select name="enabled"
												class="form-control">
												<option value="0"
													<c:out value="${(memberVO.enabled eq 'false')?('selected'):''}" />>
													false</option>
												<option value="1"
													<c:out value="${(memberVO.enabled eq 'true')?('selected'):''}" />>
													true</option>
											</select> <label>level</label> <select name="levels"
												class="form-control">
												<option value="ROLE_USER"
													<c:out value="${memberVO.levels eq 'ROLE_USER'?'selected':''}" />>ROLE_USER</option>
												<option value="ROLE_ADMIN"
													<c:out value="${memberVO.levels eq 'ROLE_ADMIN'?'selected':''}" />>ROLE_ADMIN</option>
											</select> <br>
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-outline-primary">등록</button>
								<a href="admin_Member?page=${pageVO.page}"
									class="btn btn-outline-warning">목록</a> <input type="hidden"
									name="page" value="${pageVO.page}">
							</form>
						</div>
						<!-- /.card-body -->
					</div>
				</div>
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

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
			<div class="float-right d-none d-sm-inline">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2014-2019 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->


</body>
</html>


