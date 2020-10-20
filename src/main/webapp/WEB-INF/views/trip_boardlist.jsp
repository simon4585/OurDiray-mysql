<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="org.edu.vo.BoardVO" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/boardlist.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>::list</title>
    <style>
        .board_list{
            min-width: 1280px;
            margin: 0 auto;
            background-color: #ebeef1;
            margin-top: 100px;
        }
        .main_content{
            width: 1280px;
            background-color: #fff;
            margin: 0 auto;
            min-height: 2100px;
        }
        .top_content_img{
            float: left;
            margin-top: 20px;
            margin-left: 20px;
            background-color: #fd87004d;
            width: 230px;
            height: 80px;
        }
        .top_content_img img{
            width: 230px;
            height: 80px;
        }
        .top_content{
            width: 980px;
            height: 50px;
            border-bottom: 1px solid gray;
            padding-top: 50px;
            margin-top: 20px;
            margin-left: 280px;
            margin-top: 100px;
            padding-bottom: 10px;
        }
        .top_content>div{
            float: left;
            width: 70px;
            height: 30px;
            padding-top: 10px;
            padding-left: 10px;
        }
        .top_content select{
            width: 100px;
            height: 30px;
        }
        .search{
            width: 250px !important;
            float: right !important;
        }
        .search input{
            float: right;
            width: 200px;
            height: 30px;
        }
        .search img{
            padding-left: 10px;
            float: right;
            cursor: pointer;
        }

        .board_nav{
            width: 230px;
            margin:30px 20px;
            float: left;
        }
        .small_login{
            text-align: center;
            width: 100%;
            height: 120px;
            margin: 0 auto;
            padding-top: 10px;
            color: #000;
            border:1px solid gray;
            border-radius: 10px;
        }
        .login_bg{
            margin: 10px auto 0;
            width: 100px;
            color: #fff !important;
            background-color: #fd8700;
            border-radius: 5px;
        }
        .small_login a{
            color: black;
        }
        .login_bg2{
            margin-top: 10px;
        }
        .left_nav{
            margin-top: 20px;
            width: 100%;
            border-radius: 10px;
            border: 1px solid gray;
            padding: 10px 0;
        }
        .left_nav div{
            margin:10px
        }
        .left_nav a,.left_nav a:link,.left_nav a:visited{
            color: black;
        }
        /*국내 먹거리 네비 시작*/
        .korea_foodnav h2{
            float: left;
            cursor: pointer;
        }
        .korea_foodnav h2>img{
            padding-left: 70px;
        }
        .korea_foodnav hr{
            clear: both;
        }
        .ko_fdnav_1{
            margin-top: 5px;
            display: none;
        }
        .ko_fdnav_1 ul{
            list-style: none;
        }
        .ko_fdnav_1 li{
            margin-top: 5px;
        }
        /*국내 먹거리 네비 끝*/

        /*해외 먹거리 네비 시작*/
        .overseas_foodnav>h2{
            float: left;
            cursor: pointer;
        }
        .overseas_foodnav>h2>img{
            padding-left: 70px;
        }
        .overseas_foodnav hr{
            clear: both;
        }
        .se_fdnav_1{
            margin-top: 5px;
            display: none;
        }
        .se_fdnav_1 ul{
            list-style: none;
        }
        .se_fdnav_1 li{
            margin-top: 5px;
        }
        /*해외 먹거리 네비 끝*/

        /*국내 여행지 네비 시작*/
        .korea_tripnav>h2{
            float: left;
            cursor: pointer;
        }
        .korea_tripnav>h2>img{
            padding-left: 70px;
        }
        .korea_tripnav hr{
            clear: both;
        }
        .ko_trnav_1{
            margin-top: 5px;
            display: none;
        }
        .ko_trnav_1 ul{
            list-style: none;
        }
        .ko_trnav_1 li{
            margin-top: 5px;
        }
        /*국내 먹거리 네비 끝*/

        /*해외 여행지 네비 시작*/
        .overseas_tripnav>h2{
            float: left;
            cursor: pointer;
        }
        .overseas_tripnav>h2>img{
            padding-left: 70px;
        }
        .overseas_tripnav hr{
            clear: both;
        }
        .se_trnav_1{
            margin-top: 5px;
            display: none;
        }
        .se_trnav_1 ul{
            list-style: none;
        }
        .se_trnav_1 li{
            margin-top: 5px;
        }
        /*해외 여행지 네비 끝*/

        /*숙소 구경하기 네비 시작*/
        .accommodation_view>h2{
            float: left;
            cursor: pointer;
        }
        .accommodation_view>h2>img{
            padding-left: 98.34px;
        }
        .accommodation_view hr{
            clear: both;
        }
        .ac_viewnav_1{
            margin-top: 5px;
            display: none;
        }
        .ac_viewnav_1 ul{
            list-style: none;
        }
        .ac_viewnav_1 li{
            margin-top: 5px;
        }
        /*국내 먹거리 네비 끝*/

        /*해외 여행지 네비 시작*/
        .accommodation_comment>h2{
            float: left;
            cursor: pointer;
        }
        .accommodation_comment>h2>img{
            padding-left: 98.34px;
        }
        .accommodation_comment hr{
            clear: both;
        }
        .ac_commentnav_1{
            margin-top: 5px;
            display: none;
        }
        .ac_commentnav_1 ul{
            list-style: none;
        }
        .ac_commentnav_1 li{
            margin-top: 5px;
        }
        /*해외 여행지 네비 끝*/

        .board_content{
            width: 980px;
            float: left;
            margin: 30px 10px;
            position: relative;
        }
        .board_content a,.board_content a:link, .board_content:visited{
            color: rgb(0, 0, 0);
            text-decoration: underline;
        }
        .board_content::after{
            clear: both;
            content: "";
            display: block;
        }

        .board_table{
            width: 980px;
            border: 1px solid gray;
            border-left: none;
            border-right: none;
            border-collapse: collapse;
            border-spacing: 0;
            table-layout: fixed;
        }

        thead>tr{
            width: 980px;
            height: 50px;
            position: relative;
            border: 1px solid gray;
        }
        thead>tr>th{
            height: 50px;
        }
        
        .th1{
            width: 50px;
        }
        .th2{
            width: 100px;
        }
        .th3{
            width: 300px;
        }
        .th4{
            width: 60px;
        }
        .th5{
            width: 60px;
        }
        .th6{
            width: 50px;
        }
        .th7{
            width: 40px;
        }
        tbody{
            width: 980px;
            position: relative;
            text-align: center;
            margin-top: 30px;
        }
        tbody>tr{
            height: 100px;
            border-bottom: 1px solid gray;
        }
        tbody>tr:hover{
            background-color: rgba(128, 128, 128, 0.301);
        }
        tbody img{
            width: 150px;
            height: 80px;
            padding-top: 5px;
        }

        .td1{
            width: 50px;
        }
        .td2{
            width: 100px;
        }
        .td3{
            overflow: hidden;
            white-space:nowrap;
            text-overflow: ellipsis;
            padding: 0 50px;
        }
        .td4{
            width: 100px;
        }
        .td5{
            width: 100px;
        }
        .td6{
            width: 50px;
        }
        .td7{
            width: 50px;
        }
        .bot_content{
            width: 900px;
            height: 50px;
            text-align: center;
            margin:20px auto 0px;
        }
        .table_btn{
            background-color: #fff;
            border: 1px solid #ff9253b9;
            color: #ff9253b9;
            font-size: larger;
            padding: 5px 10px;
            cursor: pointer;
        }
        
        .bot_content a{
            color: #ff9253b9;
            text-decoration: none!important;
            text-align: center;
            margin-top: 5px;
        }
        .table_btn:hover{
            animation-name: text-tr;
            animation-duration: 2s;
            background-color: #ff9253b9;
            color: rgb(255, 255, 255);
        }
        .bot_content>button{
            margin-right: 70px;
            padding: 5px 20px;
            float: left;
        }
        
        @keyframes text-tr {
            from{
                background-color: #ffd0b5b9;
                color: rgb(253, 221, 162);
            }
            50%{
                background-color: #ffb489b9;
                color: rgb(255, 255, 255);
            }
            to{
                background-color: #ff9253b9;
                color: rgb(255, 255, 255);
            }
        }
        .btn_bno_content{
            float: center;
            height: 80px;
            padding-top: 7px;
            width: 700px;
        }
    </style>
</head>
<script>
if('${msg}' != ""){
	alert("${msg} 에 성공하였습니다");
}
</script>
<body>
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
    <!-- 화면 작아졌을때 header 끝 -->


    <!-- 보드 리스트 시작-->
    <div class="board_list">
        <div class="main_content">
            <!--top 컨텐츠 네비 시작-->
            <div class="top_content_img" style="float: left;">
                <img src="/resources/img/logo2.png" alt="로고">
            </div>
            
            <form action="trip_boardlist">
            <div class="top_content">
                <div>
                    <h3>${session_bod_type} &#60;</h3>
                </div>
                <div>
                    <select name="searchBoard_type">
                        <c:choose>
	                   <c:when test="${session_bod_type eq '먹거리' }">
	                        <option value="국내먹거리">국내먹거리</option>
	                        <option value="해외먹거리">해외먹거리</option>
	                   </c:when>
	                   <c:when test="${session_bod_type eq '여행지' }">
	                        <option value="국내여행지">국내여행지</option>
	                        <option value="해외여행지">해외여행지</option>
	                   </c:when>
	                   <c:otherwise>
	                        <option value="구경하기">구경하기</option>
	                        <option value="숙소후기">숙소후기</option>
	                   </c:otherwise>
	                </c:choose>
                    </select>
                </div>
                <div class="search">
                    <img src="/resources/img/search.png" width="30" height="30">
                    <input type ="hidden" name="searchType">
                    <input type="search" name="searchKeyword" placeholder="　검색어를 입력해주세요">
                    
                 </div>
            </div>
            </form>
            <!--top 컨텐츠 네비 끝-->

            <!--왼쪽 네비게이션 시작-->
            <div class="board_nav">
            <c:choose>
            <c:when test="${session_enabled eq 'true'}">
            <div class="small_login">
                    <p>아이디 : ${session_userid}</p>
                    <p>닉네임 : ${session_username}</p>
                    <p>포인트 : ${session_point}</p>
                    <a href="login.html"><p class="login_bg">마이페이지</p></a>
            </div>
            </c:when>
            <c:otherwise>
            
                <div class="small_login">
                    <p>더 많은 활동을 하시려면<br>로그인을 해주세요</p>
                    <a href="login"><p class="login_bg">로그인</p></a>
                    <p class="login_bg2"><a href="#">회원가입</a>　/　<a href="#">ID/PW 찾기</a></p>
                </div>
             </c:otherwise>
             </c:choose>
                
                <div class="left_nav">
                    <a href="trip_boardlist?searchBoard=먹거리">
                    <div class="nav_title1">
                        <h1>먹거리
                            <img src="/resources/img/food.png" alt="음식" width="30" height="20">
                        </h1>
                    </div>
                    </a>
                    <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="0" end="1">
                    <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                    <div class="korea_foodnav">
                        <h2 >${boardTypeMenu.bod_name}
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                       </div>
                       </a>
                    </c:forEach>

                     
                    <a href="trip_boardlist?searchBoard=여행지">
                    <div class="nav_title2">
                        <h1>여행지
                            <img src="/resources/img/trip.png" alt="여행" width="30" height="20">
                        </h1>
                    </div>
                    </a>
                    
                    <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="2" end="3">
                    <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                    <div class="korea_tripnav">
                        <h2 >${boardTypeMenu.bod_name}
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                    </div>
                    </a>
                    </c:forEach>
                    
      
                    
                    <a href="trip_boardlist?searchBoard=숙소">
                    <div class="nav_title3">
                        <h1>숙소
                            <img src="/resources/img/accommondation.png" alt="숙소" width="30" height="20">
                        </h1>
                    </div>
                    </a>
                    
                    <c:forEach items="${boardTypeMenu}" var="boardTypeMenu" begin="4" end="5">
                    <a href="/trip_boardlist?searchBoard=${boardTypeMenu.bod_type}&searchBoard_type=${boardTypeMenu.bod_name}">
                    <div class="accommodation_view">
                        <h2>${boardTypeMenu.bod_name}
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                     </div>
                     </a>
                     </c:forEach>
                    <br>
                    <br>
                    <hr>
                    <div class="nav_title5">
                        <a href="#">
                            <h3>문의하기</h3>
                        </a>
                    </div>
                    <hr>
                    <div class="nav_title6">
                        <a href="#">
                            <h3>공지사항</h3>
                        </a>
                    </div>
                </div>
            </div>

            <div class="board_content">
                <div class="table_section">
                        <table class="board_table">
                            <thead>
                                <tr>
                                    <th class="th1">번호</th>
                                    <th class="th2">이미지</th>
                                    <th class="th3">제목</th>
                                    <th class="th4">글쓴이</th>
                                    <th class="th5">등록일</th>
                                    <th class="th6">조회수</th>
                                    <th class="th7">추천</th>
                                </tr>
                            </thead>
                            <tbody>
                                   <c:forEach items="${boardList}" var="boardVO" >
                                  
                                   
                                   <%-- <%
                                   // 추출할 내용.
                                   //System.out.println("여기까지"  + pageContext.getAttribute("boardVO") );
                                   BoardVO contents = (BoardVO)pageContext.getAttribute("boardVO") ;
                                   //System.out.println("여기까지"  + contents.getContent() );
                                   
                                   Pattern pattern  =  Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
                                 
                                    // 내용 중에서 이미지 태그를 찾아라!
                                   Matcher match = pattern.matcher(contents.getContent());
                                 
                                   String imgTag = null;
                                 
                                   if(match.find()){ // 이미지 태그를 찾았다면,,
                                   imgTag = match.group(0); // 글 내용 중에 첫번째 이미지 태그를 뽑아옴.
                                }
                                 
                                // 결과값은 name1.jpg
                                System.out.println("여기까지 : " + imgTag);
                                if(imgTag == null) {
                                	imgTag = "";
                                } --%>
                                
                                   
                                   
                                    <tr>
                                        <td class="td1">${boardVO.bno}</td>
                                        <td class="td2">
                                        <!-- 첨부파일이 있을때 if -->
										<c:if test="${boardVO.files[0] != null }">
											<c:set var="extName" value="${fn:split(boardVO.files[0],'.')}" />
											<c:set var="ext" value="${extName[fn:length(extName)-1]}" />
											<!-- 첨부파일이 있는데 이미지일때와 이미지가 아닐때 choose -->
											<c:choose>
												<c:when test="${fn:containsIgnoreCase(extNameArray, ext)}">
													<img src="/download?filename=${boardVO.files[0]}" title="첨부파일 이미지" style="width:100%;">
												</c:when>
											</c:choose>
										</c:if>
										<%-- <!-- 첨부파일이 없을때 if -->
										<c:if test="${boardVO.files[0] == null }">
											<img src="/resources/img/f_list8.jpg" alt="이미지 없음" />
										</c:if> --%>
                                        
                                       </td>
                                        <td class="td3"><a href="/trip_view?bno=${boardVO.bno}&page=${pageVO.page}">${boardVO.title}</a></td>
                                        <td class="td4">${boardVO.writer}</td>
                                        <td class="td5"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></td>
                                        <td class="td6">${boardVO.view_count}</td>
                                        <td class="td7">준비중입니다.</td>
                                         </tr>
                                    </c:forEach>
                              </tbody>
                        </table>
                </div>



                <div class="bot_content">
                    <button type="button" class="table_btn" onclick="window.open('trip_boardwrite','_self')">글쓰기</button>
                    
                    <div class="btn_bno_content">
                    <c:if test="${pageVO.prev}">
                        <a href="/trip_boardlist?page=${pageVO.startPage-1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="table_btn prev">이전</a>
                    </c:if>    
                    <c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
                        <a href="/trip_boardlist?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class='table_btn <c:out value="${idx==pageList.page?'active':''}"/>'>${idx}</a>
                    </c:forEach>
                    <c:if test="${pageVO.next}">
                        <a href="/trip_boardlist?page=${pageVO.endPage+1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="table_btn next">다음</a>
                    </c:if>
                    </div>
                    
                </div>

            </div>
        </div>
    </div>
    <!-- 보드 리스트 끝-->
    <!-- footer 시작-->
    <footer>
        <div class="footer_Area">
            <ul>
                <li>
                    <a href="#">이용약관</a>
                </li>
                <li>
                    <a href="#">개인정보처리방침</a>
                </li>
                <li>
                    <a href="#">공지사항</a>
                </li>
            </ul>
            <p>Copyright © TripDiary Corp. All rights reserved. | TEL. 02-1234-5678 | 경기 성남시 분당구 판교역로 | 공동대표:우정호 , 백시몬</p>
        </div>
    </footer>
    <!-- footer 끝-->
</body>
</html>