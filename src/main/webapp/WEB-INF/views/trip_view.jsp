<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/boardlist.js"></script>
    <script src="/resources/js/share.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>::write</title>
    <style>
         .board_view{
            min-width: 1280px;
            margin: 0 auto;
            background-color: #ebeef1;
            margin-top: 100px;
        }
        .main_content{
            width: 1280px;
            background-color: #fff;
            margin: 0 auto;
            min-height: 2500px;
        }
        .top_content_img{
            float: left;
            margin-top: 20px;
            margin-left: 20px;
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
            width: 200px;
            height: 30px;
            padding-top: 10px;
            padding-left: 10px;
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
        .left_nav>div{
            margin:10px
        }
        .left_nav a,.left_nav a:link,.left_nav a:visited{
            color: black;
        }
        /*국내 먹거리 네비 시작*/
        .korea_foodnav>h2{
            float: left;
            cursor: pointer;
        }
        .korea_foodnav>h2>img{
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
            width: 940px;
            float: left;
            margin: 30px 10px;
            position: relative;
            border: 1px solid gray;
            padding: 20px;
        }
        .board_content input:focus{
            outline:none;
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
        .c1{
            margin: 30px 21px 30px 0;
            padding: 20px 69px 20px 0;
            width: 870px;
            height: 40px;
            border: none;
            font-size: 28px;
            border-bottom: 1px solid gray; 
        }
        .c1_1{
            width: 700px;
            float: left;
        }
        .c1_2{
            width: 150px;
            padding-top: 10px;
            font-size: 16px;
            float: left;
        }
        .c1_2 a{
            color: rgb(97, 78, 94)!important;
            text-decoration: none!important;
        }
        .c1_2::after{
            clear: both;
        }
        .c2{ 
            min-height: 500px;
        }
        .filebox{
            margin-top: 30px ;
            width: 900px;
            height: 80px;
            background-color: rgb(253, 242, 242);
            border-radius: 5px;
            padding: 10px;
        }
        .filebox input[type="file"] {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip:rect(0,0,0,0);
            border: 0;
        }
        .filebox label {
            text-align: center;
            width: 100px;
            display: inline-block;
            padding: .5em .75em;
            color: #fff;
            font-size: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #ff925388;
            cursor: pointer;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
        }
         /* named upload */ 
         .filebox .upload-name{
            width: 782px;
            display: inline-block;
            padding: .5em .75em; /* label의 패딩값과 일치 */
            font-size: inherit;
            font-family: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #f5f5f5;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
            -webkit-appearance: none;/* 네이티브 외형 감추기 */
            -moz-appearance: none;
             appearance: none;
         }
         .bot_content{
             margin-top: 60px;
             position: relative;

         }
         .table_btn{
            background-color: #fff;
            border: 1px solid #ff9253b9;
            color: #ff9253b9;
            font-size: larger;
            padding: 5px 10px;
            cursor: pointer;
        }
        
        .bot_content a, .bot_content a:link, .bot_content a:visited{
            color: #ff9253b9;
            text-decoration: none!important;
        }
        .table_btn:hover{
            animation-name: text-tr;
            animation-duration: 2s;
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
        .recommend{
            width: 30px;
            height: 30px;
            position: relative;
            top: 8px;
            margin-left: 10px;
            margin-right: 10px;
            cursor: pointer;
        }
        .share{
            width: 30px;
            height: 30px;
            position: relative;
            top: 8px;
            margin-left: 20px;
            cursor: pointer;
        }
        .share_box{
            width: 150px;
            height: 190px;
            text-align: center;
            position: absolute;
            left: 295px;
            top: 10px;
            display: none;
        }
        .share_box>h3{
            padding: 10px 0;
            width: 100%;
            height: 20px;
            color: #fff;
            background-color: rgb(90, 90, 90);
        }
        .share_box p{
            text-align: left;
            padding-bottom: 2px;
            align-content: center;
        }
        .share_box a{
            color: #000!important;
        }
        .share_box ul{
            list-style: none;
        }
        .share_box li{
            width: 100%;
            height: 50px;
        }
        .kakao{
            background: #ffe800;
        }
        .facebook{
            background: #435e99;
        }
        .naver{
            background: #31b349;
        }
        .share_box img{
            position: relative;
            top: 8px;
            width: 30px;
            height: 30px;
            margin-right: 10px;
            margin-left: 3px;
        }
        .Rpycontent {
            margin-top: 50px;
            border: 1px solid gray;
            width: 900px;
            min-height: 300px;
            padding: 20px;
            clear:both;
        }
        .t_rpy{
            margin-top: 10px;
            margin-bottom: 20px;
        }
        .t_rpy textarea{
            resize: none;
            width: 800px;
            height: 100px;
        }
        .Rplybtn{
            background-color: #ff9253b9;
            border: 1px solid #ff9253b9;
            color: #fff!important;
            text-decoration: none!important;
            font-size: larger;
            padding: 41px 30px;
            cursor: pointer;
            position: relative;
            top: -45px;
        }
        .r_rpy{
            border-bottom: 1px solid gray;
            width: 880px;
            min-height:100px;
            padding: 10px;
        }
        .r_rpy img{
            width: 20px;
            height: 15px;
            position: relative;
            top: 2px;
        }
        .r_rpy a{
            text-decoration: none !important;
        }
        .u_id{
            width: 150px;
        }
        .u_id2{
            width: 150px;
        }
        .r_rpytime{
            font-size: 14px;
        }
        .r_rpytime a{
            margin-left: 10px;
        }
        .r_rpymain {
            margin-top: 20px;
        }
        .rr1 textarea{
            resize: none;
            width: 800px;
            height: 100px;
            margin-top: 10px;
        }
        .rr1{
            border-bottom: 1px solid gray;
            width: 900px;
            min-height:100px;
            padding: 10px 0;
            margin-bottom: 10px;
            display: none;
        }
        .rr1 a{
            text-decoration: none !important;
        }
        .rr2{
            border-bottom: 1px solid gray;
            width: 900px;
            min-height:100px;
            padding: 10px 0;
            margin-bottom: 10px;
            display: none;
        }
        .rr2 a{
            text-decoration: none !important;
        }
        .rr2 textarea{
            resize: none;
            width: 800px;
            height: 100px;
            margin-top: 10px;
        }
        .Reply{
            background-color: rgba(100, 100, 100, 0.1);
        }
        .btn_bno_content{
        	text-align : center;
        	margin-top:15px;
        }
        .table_btn{
        margin:0 3px;
        }
        
    </style>
</head>
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
    <div class="board_view">
        <div class="main_content">
            <!--top 컨텐츠 네비 시작-->
            <div class="top_content_img" style="float: left;">
                <img src="/resources/img/logo2.png" alt="로고">
            </div>
            <div class="top_content">
                <div>
                    <h1>게시글 작성</h1>
                </div>
                
            </div>
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
                    <div class="nav_title1">
                        <h1>먹거리
                            <img src="/resources/img/food.png" alt="음식" width="30" height="20">
                        </h1>
                    </div>
                    <div class="korea_foodnav">
                        <h2 >국내 먹거리
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="ko_fdnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">서울</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경기도</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">강원도</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">충남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">충북</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경북</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전북</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="overseas_foodnav">
                        <h2>해외 먹거리
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="se_fdnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">아시아</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">유럽</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">북미</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">남태평양</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">중동</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">아프리카</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="nav_title2">
                        <h1>여행지
                            <img src="/resources/img/trip.png" alt="여행" width="30" height="20">
                        </h1>
                    </div>
                    <div class="korea_tripnav">
                        <h2>국내 여행지
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="ko_trnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">서울</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경기도</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">강원도</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">충남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">충북</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">경북</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전남</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전북</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="overseas_tripnav">
                        <h2>해외 여행지
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="se_trnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">아시아</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">유럽</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">북미</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">남태평양</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">중동</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">아프리카</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="nav_title3">
                        <h1>숙소
                            <img src="/resources/img/accommondation.png" alt="숙소" width="30" height="20">
                        </h1>
                    </div>
                    <div class="accommodation_view">
                        <h2>구경하기
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="ac_viewnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">국내</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">해외</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="accommodation_comment">
                        <h2>숙소후기
                            <img src="/resources/img/hamburger.png" alt="햄버거" width="20" height="20">
                        </h2>
                        <hr>
                        <div class="ac_commentnav_1">
                            <ul>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">전체</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">국내</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h3><img src="/resources/img/text.png" width="20" height="10">해외</h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

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
                    <div class="c1">
                        <div class="c1_1">${boardVO.title}</div>
                        <div class="c1_2">작성자 : <a href="#">${boardVO.writer}<img src="/resources/img/icon.png" width="20" height="10"><br></a><span><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></span></div>
                    </div>
                    <div class="c2">
                    <c:if test="${boardVO.files[0] != null}">
					<li class="bbs_content">
					
					<c:set var="extName" value="${fn:split(boardVO.files[0],'.')}" />
					<c:set var="ext" value="${extName[fn:length(extName)-1]}" />
					
					<c:if test="${fn:containsIgnoreCase(extNameArray, ext)}">
						<img src="/download?filename=${boardVO.files[0]}" title="첨부파일 이미지" style="width:100%;">
					</c:if>
					</li>
				</c:if>
                     ${boardVO.content}
                    </div>
                    <div class="filebox">
                        <p>첨부파일</p>
                        <a href="/download?filename=${boardVO.files[0]}">${boardVO.files[0]} 다운로드</a>
                    </div>
                  <div class="bot_content">
                  
                  
                  <c:choose>
                  <c:when test ="${session_username == boardVO.writer}">
                    <a href="#" class="table_btn">수정</a>
                    <a href="javascript:;" id="deleteBno" class="table_btn">삭제</a>
                    <a href="trip_boardlist" class="table_btn">목록</a>
                  </c:when>
                  <c:when test="${session_levels eq 'ROLE_ADMIN'}">
                    <a href="#" class="table_btn">수정</a>
                    <a href="javascript:;" id="deleteBno" class="table_btn">삭제</a>
                    <a href="trip_boardlist" class="table_btn">목록</a>      
                  </c:when>
                  <c:otherwise>
                     <a href="trip_boardlist" class="table_btn">목록</a>   
                  </c:otherwise>
                  </c:choose>
                        
                        
                       <form role="form">
                       <input type="hidden" id="rec_bno" value="${boardVO.bno}">
                       <input type="hidden" id="rec_id" value="${session_user_id}">
                       <a href="javascript:;" id="recommendBno">
                       <img src="/resources/img/recommend.png" alt="추천" class="recommend" >
                       <span class="bot_num">진행중</span></a>
                       </form>
                       
                    </div>
                    <form id="deleteForm">
	                <input name="bno" id="bno" type="hidden" value="${boardVO.bno}">
                    </form>	
                    
                     <div class="Rpycontent">
                        <h2>댓글[<span id="countRno"></span>]</h2>
                        <div class="t_rpy" id="t_rpy">
                        <form role="form">
                        <input type="hidden" id="replyerInput" value="${session_username}">
                        <textarea id="replytextInput" placeholder="댓글을 입력해주세요"></textarea>   
                        <a href="javascript:;" class="Rplybtn" id="insertApplyBtn">등록</a>
                        </form>
                        </div>
                        
                        <!-- <div class="r_rpy">
                            <a href="#" class="u_id">
                            <span>작성자1</span><img src="/resources/img/icon.png" width="20px" height="15px">
                            </a><br>
                            <p class="r_rpymain"> 너무너무 이쁜 야경입니다.^^</p><br>
                            <p class="r_rpytime">2019-09-18 9:41
                             <a href="javascript:void(0);" onclick="recomment()" class="r_rplyrply1 re">답글쓰기</a>
                            </p>
                        </div> -->
                        
                        <div class="btn_bno_content">
                        <a href="#" class="table_btn">1</a>
                        </div>
                        
                        </div>
                  </div>
            </div>
        </div>

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
   <!-- 댓글 관련 자바스크립트 시작 -->

<!-- 댓글 리스트 반복문용 JQuery라이브러리 == jstl의 forEach같은 역할 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- 댓글 템플릿(빵틀) 만들기(아래) -->
<script id="template" type="text/x-handlebars-template">
{{#each .}}
<div class="r_rpy" data-rno={{rno}}>
  <a href="#" class="u_id">
  <span>{{replyer}}</span><img src="/resources/img/icon.png" width="20px" height="15px">
  </a><br>
  <p class="r_rpymain">{{replytext}}</p><br>
  <p class="r_rpytime">{{regdate}}
  <a href="javascript:test({{rno}});" data-rno={{rno}} class="replyDelBtn" >삭제</a>
  </p>
  </div>
{{/each}}
</script> 

<script>
	//댓글 변수+함수 초기화
	var bno = ${boardVO.bno};
	var page = 1;//페이징변수 초기값
	//replyArr=Json배열데이터 파싱, target=출력위치, template~=반복구문
	var printReplyList = function(replyArr, target, templateObject){
		var template = Handlebars.compile(templateObject.html());
		var html = template(replyArr);
		$(".r_rpy").remove();
		target.after(html);
	}
	//pageVO를 파싱하는 함수(아래)
	var printPageVO = function(pageVO, target) {
		var paging = "";
		console.log(pageVO);//디버그
		if(pageVO.prev){
			paging = paging + '<a class="table_btn prev" href="'+(pageVO.startPage-1)+'">이전</a>';
		}
		for(var cnt=pageVO.startPage;cnt<=pageVO.endPage;cnt++){
			var active = (cnt==pageVO.page)?"active":"";
			paging = paging + '<a class="table_btn" href="'+cnt+'">'+cnt+'</a></li>';
		}
		if(pageVO.next) {
			paging = paging + '<a class="table_btn next" href="'+(pageVO.endPage+1)+'">다음</a></li>';
		}
		target.html(paging);
	}
	function getPage(pageInfo) {
		$.getJSON(pageInfo, function(data){
			//alert(pageInfo);//디버그
			printReplyList(data.replyList, $("#t_rpy"), $("#template"));
			printPageVO(data.pageVO, $(".btn_bno_content"));
			//pageVO.totalCount 변수 출력(아래)
			$("#countRno").text(data.pageVO.totalCount);
			
		});
	}
	//여기까지는 변수+함수 정의하고, 실제 사용은 아래부터 실행
	//댓글 리스트 출력실행
	$(document).ready(function(){
		//최초 페이지 로딩시 아래 명령 실행(아래)
		getPage("/reply/select/" + bno + "/" + page);
		//페이징번호 클릭시 페이지이동이 아니고, getPage함수 싷행이 되면 OK.
		$(".btn_bno_content").on("click", "a", function(event){
			event.preventDefault();//기본 a href 이동 이벤트를 금지
			page = $(this).attr("href");//페이지번호 1, 2, 3,...
			getPage("/reply/select/"+bno+"/"+page);
		});
	});
</script>
<script>
<%
if(true) {
%>
function test(rno){
$.ajax({
	type:'delete',
	url:'/reply/delete/'+rno,
	headers: {
		"Content-Type":"application/json",
		"X-HTTP-Method-Override":"DELETE"
	},
	success:function(result){
		if(result=='SUCCESS'){
			alert("삭제 되었습니다.");
			getPage("/reply/select/"+bno+"/"+page);
		}
	}
});
}
<% } %>

</script>
<script>
//댓글 입력/수정/삭제 버튼 이벤트 처리(Ajax이용 URL호출=JSON데이터 Get,Set)
$(document).ready(function() {
	$("#replyDelBtn").on("click",function(){
		alert();
		alert($(this).attr("data-rno"));
		var rno = $("#rno").val();
		$.ajax({
			type:'delete',
			url:'/reply/delete/'+rno,
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"DELETE"
			},
			success:function(result){
				if(result=='SUCCESS'){
					alert("삭제 되었습니다.");
					getPage("/reply/select/"+bno+"/"+page);
				}
			}
		});
	});
	
	$("#replyModBtn").on("click",function(){
		var replytext = $("#replytext").val();
		var rno = $("#rno").val();
		//alert(replytext + rno);//디버그: 입력값 확인용
		//return false;//디버그: 여기까지 실행 끝내는 명령
		$.ajax({
			type:'put',
			url:'/reply/update/'+rno,
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"PUT"
			},
			dataType:'text',
			data: JSON.stringify({
				replytext:replytext
			}),
			success:function(result){
				if(result=='SUCCESS'){
					alert("수정 되었습니다.");
					getPage("/reply/select/"+bno+"/"+page);
				}
			}
		});
	});
	
	$("#insertApplyBtn").on("click",function(){
		var replyer = $("#replyerInput").val();
		var replytext = $("#replytextInput").val();
		//입력값 유효성 검사=validation 처리(아래)
		if(replyer=="" || replytext==""){
			alert("작성자와 댓글내용은 필수 입력 값 입니다.");
			return false;
		}
		$.ajax({
			type:'post',
			url:'/reply/insert',
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			dataType:'text',
			data: JSON.stringify({
				bno:bno,
				replyer:replyer,
				replytext:replytext
			}),
			success:function(result){
				if(result=='SUCCESS'){
					alert("등록 되었습니다.");
					getPage("/reply/select/"+bno+"/"+page);
					$("#replyerInput").val("");
					$("#replytextInput").val("");
				}
			}
		});
	});
});
</script>

<script>
//댓글 리스트에서 댓글 수정버튼 클릭시 모달창 내용에 바인딩 시키는 코딩(아래)
$(document).ready(function(){
	//선택한 댓글(template:빵틀)의 데이터를 모달창의 id,클래스에 데이터 바인딩
	$(".timeline").on("click", ".r_rpy", function(event) {
		var reply = $(this);
		$("#rno").val(reply.attr("data-rno"));
		$(".modal-title").html(reply.find("u_id").text());
		$("#replytext").val(reply.find(".r_rpymain").text());
	});
});
</script>
    
<script>
 
 $(document).ready(function(){
 	$("#deleteBno").bind("click",function(){
 		if(confirm("정말 삭제 하시겠습니까?")) {
 			var formObj = $("#deleteForm");
 			formObj.attr("action", "/board_delete");
 			formObj.attr("method", "post");
 			//alert($("#bno").val());//디버그용
 			formObj.submit();
 		}else{
 			return false;
 		}
 		
 	})
 });
 
       
	    /*  $(document).ready(function(){
            var recommendicon = false;
            var $num = $('.bot_num');
            var $numnumber = 0
            $('.recommend').click(function(){
                if(recommendicon == false){
                    $('.recommend').attr('src','/resources/img/recommend(on).png');
                    alert("추천하셨습니다.");
                    recommendicon = true;
                    $numnumber++;
                    $num.text($numnumber);
                }else{
                    $('.recommend').attr('src','/resources/img/recommend.png');
                    alert("추천을 취소하셨습니다.");
                    recommendicon = false;
                    $numnumber--;
                    $num.text($numnumber);
                }
            });
        });
        var sun = false;
        var sun2 = false;

        function recomment(){
            if(sun == false){
                $('.rr1').css('display','block');
                sun = true;
            }else{
                $('.rr1').css('display','none');
                sun = false;
            }
        }
        function recomment2(){
            if(sun2 == false){
                $('.rr2').css('display','block');
                sun2 = true;
            }else{
                $('.rr2').css('display','none');
                sun2 = false;
            }
        } */

        
        
         
    </script>
    <script>
    $("#recommendBno").on("click",function(){
		var bno = $("#rec_bno").val();
		var user_id = $("#rec_id").val();
		//입력값 유효성 검사=validation 처리(아래)
		$.ajax({
			type:'post',
			url:'/recommend/insert',
			headers: {
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
			},
			data: {
				bno : bno,
			    user_id : user_id
			},
			success:function(result){
				if(result=='SUCCESS'){
					alert("추천 되었습니다.");

				}
			}
		});
	});
    </script>
</body>
</html>