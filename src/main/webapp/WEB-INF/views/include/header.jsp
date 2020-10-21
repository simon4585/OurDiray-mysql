<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="/resources/js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>Trip Diary</title>
<title>Insert title here</title>

</head>
<body>
<!-- header 시작 -->
    <div class="header">
        <div class="container1">
            <div class="logo">
                <a href="/"><img src="/resources/img/logo.png" alt="로고디자인" width="150" height="100"></a>
            </div>
            <div class="nav">
                <ul class="nav_t1">
                    <li>먹거리</li>
                    <li>여행지</li>
                    <li>숙소</li>
                </ul>
                <ul class="fade_nav1 fade_common">
                <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="0" end="1">
                <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                <li>${boardTypeMenu.bod_name}</li></a>
                </c:forEach>
                    <!-- <li><a href="trip_boardlist">국내 먹거리</a></li>
                    <li><a href="trip_boardlist">해외 먹거리</a></li> -->
                </ul>
                <ul class="fade_nav2 fade_common">
                 <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="2" end="3">
                 <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                 <li>${boardTypeMenu.bod_name}</li></a>
                 </c:forEach>
                </ul>
                <ul class="fade_nav3 fade_common">
                 <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="4" end="5">
                 <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                 <li>${boardTypeMenu.bod_name}</li></a>
                 </c:forEach>
                </ul>
                <ul class="nav_t2">
                    <c:choose>
					<c:when test="${session_enabled eq 'true' }">
						<li>${session_username}님[${session_userid}]</li>
						<li><a href="/logout">로그아웃</a>
						</li>
						<li><a href="#">마이페이지</a>
						</li>
						<c:if test="${session_levels eq 'ROLE_ADMIN'}">
							<li><a href="/admin">관리자</a>
							</li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li><a href="/login">로그인</a>
						</li>
						<li><a href="/signUp">회원가입</a>
						</li>
					</c:otherwise>
					</c:choose>
                </ul>
            </div>
        </div>
    </div>
    <!-- header 끝 -->

    <!-- 화면 작아졌을때 header 시작 -->
    <div class="header2">
        <div class="container1-2">
            <div class="logo2">
                <a href="/"><img src="/resources/img/logo2.png" alt="로고디자인" width="150" height="50"></a>
            </div>
            <div class="nav2">
                <ul class="nav2_t1">
                    <li>먹거리</li>
                    <li>여행지</li>
                    <li>숙소</li>
                </ul>
                <ul class="fade_nav21 fade_common2">
                    <li><a href="trip_boardlist">국내 먹거리</a></li>
                    <li><a href="trip_boardlist">해외 먹거리</a></li>
                </ul>
                <ul class="fade_nav22 fade_common2">
                    <li><a href="trip_boardlist">국내 여행지</a></li>
                    <li><a href="trip_boardlist">해외 여행지</a></li>
                </ul>
                <ul class="fade_nav23 fade_common2">
                    <li><a href="trip_boardlist">구경하기</a></li>
                    <li><a href="trip_boardlist">숙소후기</a></li>
                </ul>
                <ul class="nav2_t2">
                    <c:choose>
					<c:when test="${session_enabled eq 'true'}">
						<li>${session_username}님[${session_userid}]</li>
						<li><a href="/logout">로그아웃</a>
						</li>
						<li><a href="#">마이페이지</a>
						</li>
						<c:if test="${session_levels eq 'ROLE_ADMIN'}">
							<li><a href="/admin">관리자</a>
							</li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li><a href="/login">로그인</a>
						</li>
						<li><a href="/signUp">회원가입</a>
						</li>
					</c:otherwise>
					</c:choose>
                </ul>
            </div>
        </div>
    </div>
