<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="include/header.jsp" %>

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

<%@ include file="include/footer.jsp" %>