<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="include/header.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">회원 생성</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin">Home</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
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
            <form role="form" action="/admin/admin_MemberWrite" method="post">
              <div class="row">
                <div class="col-sm">
                  <!-- 아이디 input -->
                  <div class="form-group">
                    <label>아이디</label>
                    <input type="text" name="user_id" class="form-control" placeholder="아이디를 입력해주세요">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 비밀번호 input -->
                  <div class="form-group">
                    <label>비밀번호</label>
                    <input type="text" name="user_pw" class="form-control" placeholder="비밀번호를 입력해주세요">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 이름 input -->
                  <div class="form-group">
                    <label>닉네임</label>
                    <input type="text" name="user_name" class="form-control" placeholder="이름을 입력해주세요">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 이메일 input -->
                  <div class="form-group">
                    <label>이메일</label>
                    <input type="email" name="email" class="form-control" placeholder="이메일을 입력해주세요">
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col">
                  <!-- select -->
                  <div class="form-group">
                    <label>활성화</label>
                    <select class="form-control" name="enabled">
                      <option selected value="1">활성화</option>
                      <option value="0">비활성화</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <!-- select -->
                  <div class="form-group">
                    <label>계정권한</label>
                    <select class="form-control" name="levels">
                      <option value="ROLE_ADMIN">ADMIN</option>
                      <option value="ROLE_USER">USER</option>
                    </select>
                  </div>
                </div>
                <div class="col">
                  <!-- select -->
                  <div class="form-group">
                    <label>포인트</label>
                    <input type="text" name="point" class="form-control" placeholder="포인트를 입력해주세요">
                  </div>
                </div>
              </div>
                <button type="submit" class="btn btn-outline-primary">생성하기</button>
                <a href="admin" class="btn btn-outline-danger">목록가기</a>
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