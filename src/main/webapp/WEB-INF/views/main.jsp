<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/slide.js"></script>
    <script src="/resources/js/slide2.js"></script>
    <script src="/resources/js/slide3.js"></script>
    <script src="/resources/js/board.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>Trip Diary</title>
    <style>
    
        /*슬라이드 시작*/
        .slide{
            min-width: 1280px;
            height: 500px;
            background-color: antiquewhite;
            padding-top: 100px;
            overflow: hidden;
            text-align: center;
            position: relative;
        }
        .slide img{
            border-radius: 50px;
            width: 1100px;
            height: 500px;
        }
        .panel{
            width: 400%;
            list-style: none;
        }
        .panel>li{
            width: 25%;
            height: 100%;
            float: left;
            position: relative;
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        .panel::after{
            content: "";
            display: block;
            clear: both;
        }
        .dot{
            position: absolute;
            bottom: 10%;
            left: 50%;
            transform: translateX(-50%);
        }
        .dot>li{
            display: inline-block;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            text-indent: -99999px;
            background-color: #fff;
            cursor: pointer;
            margin-left: 10px;
            margin-right: 10px;
        }
        .dot>li.on{
            background-color: #fcd48c;
        }
        .dot::after{
            content: "";
            display: none;
            clear: both;
            position: relative;
        }
        .prev{
            position: absolute;
            top: 335px;
            left: 50%;
            transform: translateX(-550px);
            font-size: 40px;
            color: #fff;
            cursor: pointer;
            height: 50px;
            background-color: #c4c6cf5b;
        }
        .next{
            position: absolute;
            top: 335px;
            right: 50%;
            transform: translateX(550px);
            font-size: 40px;
            color: #fff;
            cursor: pointer;
            height: 50px;
            background-color: #c4c6cf5b;
        }
        /*슬라이드 끝*/

        /*container2 시작*/
        .container2{
            min-width: 1280px;
            height: 700px;
            background-color: rgba(255, 255, 255, 0.726);
            margin: 0 auto;
        }
        .c2_h1{
            text-align: center;
            padding: 50px 0px 30px 0px;
            color: rgb(0, 0, 0);
        }

        /*container2 슬라이드 시작*/
        .c2_content{
            width: 1280px;
            margin: 0 auto;
        }
        .c2_slide{
            width: 600px;
            height: 500px;
            margin: 60px 0px 60px 20px;
            position: relative;
            float: left;
        }
        .c2_slide img{
            width: 100%;
            height: 100%;
            border-radius: 10px;
        }
        .c2_panel{
            position: relative;
            list-style: none;
            width: 600px;
            height: 500px;
        }
        .c2_panel>li{
            position: absolute;
            float: left;
            width: 600px;
            height: 500px;
        }
        .c2_panel::after{
            clear: both;
            content: "";
            display: block;
        }
        .c2_dot{
            list-style: none;
            position: absolute;
            z-index: 10;
            bottom: 5%;
            left: 50%;
            transform: translateX(-50%);
        }
        .c2_dot>li{
            position: relative;
            display: inline-block;
            width: 15px;
            height: 15px;
            background-color: rgba(129, 129, 129, 0.600);
            color: rgba(255, 255, 255, 0.6);
            border-radius: 5px;
            margin-left: 10px;
            margin-right: 10px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
            border: 1px solid rgba(0, 0, 0, 0.600);
        }
        .c2_dot>li.c2_on{
            background-color: rgb(255, 255, 255);
            color: #000;
        }
        .c2_dot::after{
            clear: both;
            content: "";
            display: block;
        }
        .c2_prev{
            position: absolute;
            width: 20px;
            height: 500px;
            background-color: rgba(255, 255, 255, 0.2);
            top: 0px;
            left: 0px;
            color: white;
            font-size: 30px;
            cursor: pointer;
        }
        .c2_prev:hover{
         color: rgba(0,0,0,0.2);
         animation: c2_prev 0.5s;
         color: #000;
         background-color: rgba(255, 255, 255, 0.8);   
        }
        @keyframes c2_prev{
            from{
                opacity: 0.2;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.200);
            }
            10%{
                opacity: 0.4;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.600);
            }
            30%{
                opacity: 0.6;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.600);
            }
            to{
                opacity:0.8;
                background-color: #fff;
                color: #000;
            }
        }
        .c2_prev_t p{
            padding-top: 230px;
        }
        .c2_next{
            position: absolute;
            width: 20px;
            height: 500px;
            background-color: rgba(255, 255, 255, 0.2);
            top: 0px;
            right: 0px;
            color: white;
            font-size: 30px;
            cursor: pointer;
        }
        .c2_next:hover{
         color: rgba(0,0,0,0.2);
         animation: c2_next 0.5s;
         color: #000;
         background-color: rgba(255, 255, 255, 0.8);   
        }
        @keyframes c2_next{
            from{
                opacity: 0.2;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.200);
            }
            10%{
                opacity: 0.4;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.600);
            }
            30%{
                opacity: 0.6;
                background-color: #fff;
                color: rgba(0, 0, 0, 0.600);
            }
            to{
                opacity:0.8;
                background-color: #fff;
                color: #000;
            }
        }
        .c2_next_t p{
            padding-top: 230px;
        }
        /*container2 슬라이드 끝*/

        /*container2 게시글 시작*/
        .c2_board{
            float: right;
            width: 600px;
            height: 400px;

            border-radius: 10px;
            margin: 90px 20px 0px 0px;
            text-align: center;
        }
        
        .c2_title{
            font-size: 30px;
        }
        .c2_domestic{
            width: 300px;
            height: 34px;
            padding-top: 16px;
            float: left;
            cursor: pointer;
        }
        .c2_overseas{
            width: 300px;
            height: 34px;
            padding-top: 16px;
            float: left;
            cursor: pointer;
            color: #8b8989;
        }
        .c2_overseas img{
            display: none;
        }
        .c2_brdct{
            position: absolute;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            margin-top: 50px;
            width: 500px;
            height: 320px;
            text-align: left;
            padding:15px 50px
        }
        .c2_brdct a {
            color: #000;
        }
        .c2_brdct::after{
            position: relative;

        }
        .c2_brdct ul{
            list-style: none;
            width: 500px;
            height: 72.5px;
            padding:5px 0px;
        }
        .c2_brdct li{
            display: inline-block;
            float: left;
            width: 100px;
            height: 72.5px;
            text-align: center;
        }
        .c2_brdct ul:hover{
            background-color: rgba(128, 128, 128, 0.301);
        }
        .c2_brdct li:nth-child(2){
            width:240px !important;
            height: 47.5px !important;
            padding:25px 30px 0px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .c2_brdct li:nth-child(3){
            padding-top: 25px;
            height: 47.5px;
        }
        .c2_brdct img{
            width: 100px;
            height: 72.5px;
        }
        .b2{
            display: none;
        }
        /* container2 게시글 끝*/

        /* container2 끝*/

        /* container3 시작*/
        .container3{
            min-width: 1280px;
            height: 700px;
            background-color: rgba(255, 255, 255, 1);
            margin: 0 auto;
        }
        .c3_h1{
            text-align: center;
            padding: 50px 0px 30px 0px;
            color: rgb(0, 0, 0);
        }
        .c3_content{
            width: 1280px;
            margin: 0 auto;
        }
        .youtube{
            margin:60px 0 60px 20px;
            float: left;
        }
         /*container3 게시글 시작*/
        .c3_board{
            float: right;
            width: 600px;
            height: 400px;
            border-radius: 10px;
            margin: 90px 20px 0px 0px;
            text-align: center;
        }
        .c3_title{
            font-size: 30px;
        }
        .c3_domestic{
            width: 300px;
            height: 34px;
            padding-top: 16px;
            float: left;
            cursor: pointer;
        }
        .c3_overseas{
            width: 300px;
            height: 34px;
            padding-top: 16px;
            float: left;
            cursor: pointer;
            color: #8b8989;
        }
        .c3_overseas img{
            display: none;
        }
        .c3_brdct{
            position: absolute;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            margin-top: 50px;
            width: 500px;
            height: 320px;
            text-align: left;
            padding:15px 50px
        }
        .c3_brdct a {
            color: #000;
        }
        .c3_brdct::after{
            position: relative;

        }
        .c3_brdct ul{
            list-style: none;
            width: 500px;
            height: 72.5px;
            padding:5px 0px;
        }
        .c3_brdct li{
            display: inline-block;
            float: left;
            width: 100px;
            height: 72.5px;
            text-align: center;
        }
        .c3_brdct ul:hover{
            background-color: rgba(128, 128, 128, 0.301);
        }
        .c3_brdct li:nth-child(2){
            width:240px !important;
            height: 47.5px !important;
            padding:25px 30px 0px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .c3_brdct li:nth-child(3){
            padding-top: 25px;
            height: 47.5px;
        }
        .c3_brdct img{
            width: 100px;
            height: 72.5px;
        }
        .c3_b2{
            display: none;
        }
         /*container3 끝*/

         /*container4 시작*/
         .container4{
            min-width: 1280px;
            height: 1100px;
            background-color: rgba(255, 255, 255, 0.726);
            margin: 0 auto;
        }
        .c4_h1{
            text-align: center;
            padding: 50px 0px 30px 0px;
            color: rgb(0, 0, 0);
        }
        .c4_content{
            width: 1280px;
            margin: 0 auto;
            text-align: center;
            overflow: hidden;
        }
        .c4_content ul{
            list-style: none;
        }
        .c4_title{
            width: 200px;
            height: 50px;
            margin: 0 auto;
            text-align: center;
            font-size: 30px;
        }
        .c4_title>div{
            width: 100px;
            height: 50px;
            padding-top: 20px;
        }
        .c4_title1{
            float: left;
            cursor: pointer;
        }
        .c4_title2{
            float: left;
            color: #8b8989;
            cursor: pointer;
        }
        .c4_slide{
            width: 2560px;
            float: left;
        }
        .c4_slide>li{
            width: 1280px;
            height: 100%;
            float: left;
        }

        .c4_common1>div{
            display: inline-block;
            margin: 5px;
            width: 620px;
            height: 400px;
            position: relative;
            overflow: hidden;
        }
        .c4_slide a{
            text-decoration: none;
        }
        .c4_common1>div:hover .caption{
            transform:translateY(-150px);
        }
        .c4_common1>div img{
            transition: all 0.5s ease-in-out;
        }
        .c4_common1>div:hover img{
            transform: scale(1.2);
        }
        .c4_common2>div{
            display: inline-block;
            margin: 5px;
            width: 620px;
            height: 400px;
            position: relative;
            overflow: hidden;
        }
        .c4_common2>div:hover .caption{
            transform:translateY(-150px);
        }
        .c4_common2>div img{
            transition: all 0.5s ease-in-out;
        }
        .c4_common2>div:hover img{
            transform: scale(1.2);
        }
        .caption{
            position: relative;
            top: 0;
            left: 0;
            width: 620px;
            height: 400px;
            background-color: rgba(0, 0, 0, 0.400);
            color: #fff;
            text-align: center;
            transition: all 0.5s ease-in-out;
        }
        /*container4 끝*/

        /*container5 시작*/
        .container5{
            min-width: 1280px;
            height:500px;
            margin: 0 auto;
        }
        .c5_h1{
            text-align: center;
            padding: 50px 0px 30px 0px;
            color: #000;
        }
        .c5_content{
            width: 1280px;
            margin: 0 auto;
            text-align: center;
        }
        .c5_content h1{
            padding-top: 30px;
        }
        .c5_content ul{
            list-style: none;
            margin-top: 60px;
        }
        .c5_content a{
            text-decoration: none;
        }
        .c5_content li{
            display: inline;
            margin: 20px 50px;
        }
        .c5_content img{
            width: 150px;
            height: 150px;
        }
        /*container5 끝*/
        
    </style>
    <script>
if('${msg}' != ""){
	alert("${msg} 에 성공하였습니다");
}
</script>
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
<!-- aside네비게이션바
    <div class="aside_nav">
        <div>top</div>
        <div>50%</div>
        <div>bottom</div>
    </div>-->
    <!-- 화면 작아졌을때 header 끝 -->

    <!-- 메인 화면 슬라이드 시작-->
    <div class="slide">
        <ul class="panel">
            <li>
                <a href="#1">
                    <img src="/resources/img/background1.jpg" alt="슬라이드1" width="100%" height="500px">
                </a>
            </li>
            <li>
                <a href="#2">
                    <img src="/resources/img/background2.jpg" alt="슬라이드2" width="100%" height="500px">
                </a>
            </li>
            <li>
                <a href="#3">
                    <img src="/resources/img/background3.jpg" alt="슬라이드3" width="100%" height="500px">
                </a>
            </li>
        </ul>
        <ul class="dot">
           <li class="on">li버튼1</li>
           <li>li버튼2</li>
           <li>li버튼3</li>
        </ul>
        <div class="prev">&#60;</div>
        <div class="next">&#62;</div>
    </div>
    <!-- 메인 화면 슬라이드 끝-->

    <!-- 두번째 컨테이너 시작-->
    <div class="container2">
        <h1 class="c2_h1">이달의 여행지</h1>
        <hr>

        <!-- 두번째 컨테이너 컨텐츠 담길 영역-->
        <div class="c2_content">

            <!-- 슬라이드 영역 시작-->
            <div class="c2_slide">
                <ul class="c2_panel">
                    <li><a href="#4"><img src="/resources/img/c2_1.jpg" alt="c2슬라이드1"></a></li>
                    <li style="display: none;"><a href="#5"><img src="/resources/img/c2_2.jpg" alt="c2슬라이드2"></a></li>
                    <li style="display: none;"><a href="#6"><img src="/resources/img/c2_3.jpg" alt="c2슬라이드3"></a></li>
                </ul>
                <ul class="c2_dot">
                    <li class="c2_on">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
                <div class="c2_prev"><span class="c2_prev_t"><p>&#60;</p></span></div>
                <div class="c2_next"><span class="c2_next_t"><p>&#62;</p></span></div>
            </div>
            <!-- 슬라이드 영역 끝-->

                <!-- 콘텐츠 영역 시작-->
                <div class="c2_board">
                    <div class="c2_title">여행 인기글 Top4</div>
                    <div class="c2_domestic">
                        국내 여행
                        <img src="/resources/img/1.png" alt="발바닥" width="10px" height="10px">
                    </div>
                    <div class="c2_overseas">
                        해외 여행
                        <img src="/resources/img/1.png" alt="발바닥" width="10px" height="10px">
                    </div>

                    <!-- 국내 여행 컨텐츠 시작-->
                    <div class="c2_brdct b1">
                        <a href="#7">
                            <ul>
                                <li><img src="/resources/img/content_korea1.jpg" alt=""></li>
                                <li class="title">너무 아름다운 야경</li>
                                <li>작성자1</li>
                            </ul>
                        </a>
                        <a href="#8">
                            <ul>
                                <li><img src="/resources/img/content_korea2.jpg" alt=""></li>
                                <li class="title">도시속에서 멋진 선셋 구경과 야경구경하고 왔습니다.</li>
                                <li>작성자2</li>
                            </ul>
                        </a>
                        <a href="#9">
                            <ul>
                                <li><img src="/resources/img/content_korea3.jpg" alt=""></li>
                                <li class="title">우리에게 흔히 있던 야경이지만, 다른 시선에서 봤을때</li>
                                <li>작성자3</li>
                            </ul>
                        </a>
                        <a href="#10">
                            <ul>
                                <li><img src="/resources/img/content_korea4.jpg" alt=""></li>
                                <li class="title">가을 풍경</li>
                                <li>작성자4</li>
                            </ul>
                        </a>
                    </div>
                    <!-- 국내 여행 컨텐츠 끝-->

                    <!-- 해외 여행 컨텐츠 시작-->
                    <div class="c2_brdct b2">
                        <a href="#11">
                            <ul>
                                <li><img src="/resources/img/content_overseas1.jpg" alt=""></li>
                                <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                                <li>작성자1</li>
                            </ul>
                        </a>
                        <a href="#12">
                            <ul>
                                <li><img src="/resources/img/content_overseas2.jpg" alt=""></li>
                                <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                                <li>작성자2</li>
                            </ul>
                        </a>
                        <a href="#13">
                            <ul>
                                <li><img src="/resources/img/content_overseas3.jpg" alt=""></li>
                                <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                                <li>작성자3</li>
                            </ul>
                        </a>
                        <a href="#14">
                            <ul>
                                <li><img src="/resources/img/content_overseas4.jpg" alt=""></li>
                                <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                                <li>작성자4</li>
                            </ul>
                        </a>
                    </div>
                    <!-- 해외 여행 컨텐츠 끝-->
                    
                </div>
                <!-- 콘텐츠 영역 끝-->
                
        </div>
        <!-- 두번째 컨테이너 컨텐츠 담길 영역 끝-->

    </div>
    <!-- 두번째 컨테이너 끝-->

    <!-- 세번째 컨테이너 시작-->
    <div class="container3">
        <h1 class="c3_h1">이달의 먹거리</h1>
        <hr>
        <!-- 먹거리 컨텐츠 시작-->
        <div class="c3_content">
            <!-- 유튜브 영상 컨텐츠 시작-->
            <iframe class="youtube" width="600" height="500" src="https://www.youtube.com/embed/yeSfv4IMIqc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <!-- 유튜브 영상 컨텐츠 끝-->

            <!-- 콘텐츠 영역 시작-->
            <div class="c3_board">
                <div class="c3_title">먹거리 인기글 Top4</div>
                <div class="c3_domestic">
                    국내 먹거리
                    <img src="/resources/img/1.png" alt="발바닥" width="10px" height="10px">
                </div>
                <div class="c3_overseas">
                    해외 먹거리
                    <img src="/resources/img/1.png" alt="발바닥" width="10px" height="10px">
                </div>

                <!-- 국내 먹거리 컨텐츠 시작-->
                <div class="c3_brdct c3_b1">
                    <a href="#15">
                        <ul>
                            <li><img src="/resources/img/food_korea1.jpg" alt=""></li>
                            <li class="title">너무 아름다운 야경</li>
                            <li>작성자1</li>
                        </ul>
                    </a>
                    <a href="#16">
                        <ul>
                            <li><img src="/resources/img/food_korea2.jpg" alt=""></li>
                            <li class="title">도시속에서 멋진 선셋 구경과 야경구경하고 왔습니다.</li>
                            <li>작성자2</li>
                        </ul>
                    </a>
                    <a href="#17">
                        <ul>
                            <li><img src="/resources/img/food_korea3.jpg" alt=""></li>
                            <li class="title">우리에게 흔히 있던 야경이지만, 다른 시선에서 봤을때</li>
                            <li>작성자3</li>
                        </ul>
                    </a>
                    <a href="#18">
                        <ul>
                            <li><img src="/resources/img/food_korea4.jpg" alt=""></li>
                            <li class="title">가을 풍경</li>
                            <li>작성자4</li>
                        </ul>
                    </a>
                </div>
                <!-- 국내 먹거리 컨텐츠 끝-->

                <!-- 해외 먹거리 컨텐츠 시작-->
                <div class="c3_brdct c3_b2">
                    <a href="#19">
                        <ul>
                            <li><img src="/resources/img/food_overseas1 .jpg" alt=""></li>
                            <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                            <li>작성자1</li>
                        </ul>
                    </a>
                    <a href="#20">
                        <ul>
                            <li><img src="/resources/img/food_overseas2 .jpg" alt=""></li>
                            <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                            <li>작성자2</li>
                        </ul>
                    </a>
                    <a href="#21">
                        <ul>
                            <li><img src="/resources/img/food_overseas3.jpg" alt=""></li>
                            <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                            <li>작성자3</li>
                        </ul>
                    </a>
                    <a href="#22">
                        <ul>
                            <li><img src="/resources/img/food_overseas4.jpg" alt=""></li>
                            <li class="title">다음생에 갈 수 있을까 한 곳1111111111111111111</li>
                            <li>작성자4</li>
                        </ul>
                    </a>
                </div>
                <!-- 해외 먹거리 컨텐츠 끝-->
            </div>
            <!-- 콘텐츠 영역 끝-->
        </div>
        <!-- 먹거리 컨텐츠 끝-->
    </div>

    <div class="container4">
        <h1 class="c4_h1">Top4 국내/해외 숙소</h1>
        <hr>
        <div class="c4_content">
            <div class="c4_title">
                <div class="c4_title1">국내</div>
                <div class="c4_title2">해외</div>
            </div>
            <ul class="c4_slide">
                <li class="c4_slideLi1">
                    <ul>
                        <li class="c4_common1">
                            <div class="c4_t1">
                                <a href="#23">
                                    <img src="/resources/img/korea_accommodations1.jpg" alt="국내숙소1" width="620" height="400">
                                    <div class="caption">
                                        <h1>한국에서 이색장소 데이트!</h1>
                                        <p>마치 외국에 온 것 처럼 분위기를 낼 수 있을때!</p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t2">
                                <a href="#24">
                                    <img src="/resources/img/korea_accommodations2.jpg" alt="국내숙소2" width="620" height="400">
                                    <div class="caption">
                                        <h1>자연속에서 힐링하며~</h1>
                                        <p>도시에서 지친 마음을 달래며 하루 푹쉬어요!</p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t3">
                                <a href="#25">
                                    <img src="/resources/img/korea_accommodations3.jpg" alt="국내숙소3" width="620" height="400">
                                    <div class="caption">
                                        <h1>아늑한 공간에서 호캉스를!</h1>
                                        <p>이보다 더 아늑할 수 있을까요? 몸도 마음도 충전중!</p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t4">
                                <a href="#26">
                                    <img src="/resources/img/korea_accommodations4.jpg" alt="국내숙소4" width="620" height="400">
                                    <div class="caption">
                                        <h1>우리들만의 비밀공간</h1>
                                        <p>우리들만의 아지트 공간이 필요할때 늘 찾아와요!</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="c4_slideLi2">
                    <ul>
                        <li class="c4_common2">
                            <div class="c4_t1">
                                <a href="#23">
                                    <img src="/resources/img/overseas_accommodations1.jpg" alt="국내숙소1" width="620" height="400">
                                    <div class="caption">
                                        <h1>조용한 별장!</h1>
                                        <p>해외여행에 지친 마음을 여기서 달래요!</p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t2">
                                <a href="#24">
                                    <img src="/resources/img/overseas_accommodations2.jpg" alt="국내숙소2" width="620" height="400">
                                    <div class="caption">
                                        <h1>동남아에서 가장 이쁜곳</h1>
                                        <p>여러 과일들을 먹으며 신나게 놀아요!</p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t3">
                                <a href="#25">
                                    <img src="/resources/img/overseas_accommodations3.jpg" alt="국내숙소3" width="620" height="400">
                                    <div class="caption">
                                        <h1>숙소가 세모모양이면 안돼?</h1>
                                        <p>해외에서 색다로운 숙소와 함께 새로움을 즐겨요! </p>
                                    </div>
                                </a>
                            </div>
                            <div class="c4_t4">
                                <a href="#26">
                                    <img src="/resources/img/overseas_accommodations4.jpg" alt="국내숙소4" width="620" height="400">
                                    <div class="caption">
                                        <h1>귀족이 된 것 처럼</h1>
                                        <p>고풍스러운 느낌의 장엄한 숙소를 느껴보세요!</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
            <h3>사진에 마우스를 올리면 자세한 정보가 나와요!</h3>
        </div>
    </div>
    <div class="container5">
        <h1 class="c5_h1">더 많은 소식</h1>
        <hr>
        <div class="c5_content">
            <h1>이제 SNS에서도 함께해요!</h1>
            <ul>
                <a href="#30">
                    <li>
                        <img src="/resources/img/유튜브2.png" alt="유튜브">
                    </li>
                </a>
                <a href="#30">
                    <li>
                        <img src="/resources/img/카카오톡.png" alt="유튜브">
                    </li>
                </a>
                <a href="#30">
                    <li>
                        <img src="/resources/img/인스타그램1.png" alt="유튜브">
                    </li>
                </a>
                <a href="#30">
                    <li>
                        <img src="/resources/img/트위터1.png" alt="유튜브">
                    </li>
                </a>
                <a href="#30">
                    <li>
                        <img src="/resources/img/네이버블로그.png" alt="유튜브">
                    </li>
                </a>
            </ul>
        </div>
    </div>
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
            <p>Copyright © TripDiary Corp. All rights reserved. | TEL. 02-1234-5678 | 경기 성남시 분당구 판교역로 | 대표:우정호</p>
        </div>
    </footer>
    <script>
        //유튜브 자동재생
        $(document).ready(function(){
            var $switch = false;

            $(window).scroll(function(){ //윈도우를 스크롤했을때
            var $youtubeScroll = $(document).scrollTop();//스크롤 했을때의 현재 위치값을 구함
            var $youtube = $('.youtube');

            if(600 < $youtubeScroll && $switch==false){
                $switch = true;
                $youtube.removeAttr("src","https://www.youtube.com/embed/yeSfv4IMIqc");
                $youtube.attr("src","https://www.youtube.com/embed/yeSfv4IMIqc?autoplay=1&mute=1");
            }
            });
        });
    </script>
</body>
</html>