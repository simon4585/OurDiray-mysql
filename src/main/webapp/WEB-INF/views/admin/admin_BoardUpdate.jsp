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
            <h1 class="m-0 text-dark">게시글 수정</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin">Home</a></li>
              <li class="breadcrumb-item active">게시글 수정</li>
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
          
            <form role="form" action="/admin/admin_BoardUpdate" method="POST" encType="multipart/form-data">
              <div class="row">
                <div class="col-sm">
                  <!-- 아이디 input -->
                  <div class="form-group">
                    <label>제목</label>
                    <select name="bod_type">
	                   <c:forEach items="${boardTypeMenu}" var="boardTypeMenu">
	                   <option value="${boardTypeMenu.bod_type}">${boardTypeMenu.bod_type}</option>
	                   </c:forEach>
	                </select>
	                <select name="bod_name">
	                   <c:forEach items="${boardTypeMenu}" var="boardTypeMenu">
	                   <option value="${boardTypeMenu.bod_name}">${boardTypeMenu.bod_name}</option>
	                   </c:forEach>
	                </select>
                    <input type="text" name="title" class="form-control" value="${boardVO.title}">
                  </div>
                  <div class="form-group">
                  <label>작성자</label>
                  <input type="text" value="${boardVO.writer}" name="writer" readonly="readonly">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm">
                  <!-- 본문내용 div -->
                  <div class="form-group">
                  <textarea name="content" id="content">${boardVO.content}</textarea>
                   <div class="filebox">
                        <input class="upload-name" value="파일선택">
                        <label for="ex_filename">업로드</label>
                        <input type="file" name="file" id="ex_filename" class="upload-hidden">
                    </div>
                  </div>
                </div>
              </div>
   
              <input type="hidden" name="bno" value="${boardVO.bno}">
              <input type="hidden" name="page" value="${pageVO.page}">
              <!--버튼-->
                <button type="submit" class="btn btn-outline-primary">등록</button>
                <a href="admin_Board" class="btn btn-outline-danger">목록</a>
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