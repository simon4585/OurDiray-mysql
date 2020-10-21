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
            <h1 class="m-0 text-dark">상세 보기</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin">Home</a></li>
              <li class="breadcrumb-item active">게시판 상세보기</li>
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
            <form role="form" action="/admin/board_delete" method="POST">
              <div class="row">
                <div class="col-sm">
                  <!-- 아이디 input -->
                  <div class="form-group">
                    <label>제목</label>
                    <div>
                      <h3>${boardVO.title}</h3>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 본문내용 div -->
                  <div class="form-group">
                    <label>내용</label>
                    <div>
                      <p>${boardVO.content}</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 파일 input -->
                  <div class="form-group">
                    <label>첨부파일</label>
                    <div>
                    <a href="#">123.jpg</a>
                  </div>
                  </div>
                  </div>
                </div>
              <!--버튼-->
              <a href="/admin/admin_BoardUpdate?bno=${boardVO.bno}&page=${pageVO.page}" class="btn btn-outline-primary">수정하기</a>
              <button type="submit" class="btn btn-outline-danger">삭제</button>
              <a href="/admin/admin_Board" class="btn btn-outline-warning">목록</a>
              <input type="hidden" name="bno" value="${boardVO.bno}">
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