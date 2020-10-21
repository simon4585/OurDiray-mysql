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
            <h1 class="m-0 text-dark">회원관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">게시판관리</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Latest Orders</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>번호</th>
                      <th>이미지</th>
                      <th>제목</th>
                      <th>글쓴이</th>
                      <th>등록일</th>
                      <th>조회수</th>
                      <th>추천</th>
                    </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${boardList}" var="boardVO" varStatus="status">
                    <tr>
                      <td>${boardVO.bno}</td>
                      <td><a href="admin_BoardView?bno=${boardVO.bno}&page=${pageVO.page}">${boardVO.title}</a></td>
                      <td>${boardVO.writer}</td>
                      <td><span class="tag tag-success">
                      <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" />
                      </span></td>
                      <td><span class="badge badge-danger right">${boardVO.view_count}</span></td>
                      <td>준비중입니다</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
              <nav aria-label="Contacts Page Navigation">
             <ul class="pagination" style="position:relative;left:40%;">
             <c:if test="${pageVO.prev}">
             <li class="page-item">
                <a class="page-link" href="_Board?page=${pageVO.startPage-1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
             </li>
             </c:if>
             <c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
                <li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="_Board?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
             </c:forEach>
             <c:if test="${pageVO.next}">
             <li class="page-item">
                <a class="page-link" href="_Board?page=${pageVO.endPage+1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
             </li>
             </c:if>
            </ul>  
          </nav>
          </div>
              <!-- /.card-footer -->
            </div>
      </div>
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%@ include file="include/footer.jsp" %>