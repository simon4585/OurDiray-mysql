<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/css/common.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="resources/js/common.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>::로그인</title>
    <style>
        .login_container1{
            min-width: 1280px;
            height: 759px;
            margin-top: 100px;
            text-align: center;
        }
        .login_container1::after{
            background-image: url("/resources/img/background1.jpg");
            background-size: 100%;
            opacity: 0.2;
            position: absolute;
            z-index: -3;
            left: 0;
            content: "";
            min-width: 1280px;
            width: 100%;
            height: 759px;
            background-repeat: no-repeat;
            background: cover;
        }
        .login_content{
            width: 1280px;
            margin: 40px auto;
        }
        .login_box{
            border-radius: 10px;
            width: 500px;
            height: 500px;
            float: left;
            margin-left: 100px;
            margin-top: 125px;
            background: rgba(255, 255, 255, 0.514);
        }
        .login_box a{
            text-shadow: none;
        }
        .login_box ul{
            width: 100%;
            margin: 60px auto;
            list-style: none;
        }
        .login_box li{
            margin: 0 auto;
            width: 300px;
            padding: 15px 0;
        }
        .id{
            width: 300px;
            height: 50px;
            border-radius: 10px;
            border: 0.1px solid gray;
        }
        .password{
            width: 300px;
            height: 50px;
            border-radius: 10px;
            border: 0.1px solid gray;
        }
        .button{
            width: 300px;
            height: 50px;
            border-radius: 10px;
            border: 0.1px solid gray;
        }
        .login_api{
            width: 500px;
            height: 500px;
            float: right;
            margin-right: 100px;
            margin-top: 125px;
        }
        .login_text{
            font-size: 30px;
            color: #000;
            text-shadow:2px 2px 1px #fff;
        }
        .login_info{
            padding-top:10px !important;
        }
        .login_info a{
            color: black;
            text-decoration: none;
        }
        .login_api img{
            width: 300px;
            height: 50px;
        }
        .login_api fieldset{
            border: none;
            border-top: 1px solid gray;
        }
        .login_api legend{
            font-size: 30px;
        }
        .login_api ul{
            list-style: none;
            margin-top: 70px;
        }
        .login_api li{
            margin-top: 20px;
        }
    </style>
    
</head>
<script>
if('${param.msg}' == "fail"){
	alert('로그인에 실패했습니다');
}
</script>
<body>
     <!-- header 시작 -->
     <div class="header">
        <div class="container1">
            <div class="logo">
                <a href="/"><img src="/resources/img/logo.png" alt="로고디자인" width="150" height="100"></a>
            </div>
            <div class="nav">
                <ul class="nav_t1">
                    <a href="trip_boardlist?searchBoard=먹거리"><li>먹거리</li></a>
                    <a href="trip_boardlist?searchBoard=여행지"><li>여행지</li></a>
                    <a href="trip_boardlist?searchBoard=숙소"><li>숙소</li></a>
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
                    <li><a href="login">로그인</a></li>
                    <li><a href="login">마이페이지</a></li>
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
                    <li><a href="login">로그인</a></li>
                    <li><a href="login">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 화면 작아졌을때 header 끝 -->

    <!-- 로그인 컨테이너 시작-->
    <div class="login_container1">
        <div class="login_content">
            <div class="login_box">
                <form action="login" method=POST>
                    <ul>
                        <li class="login_text">
                            <img src="/resources/img/logo2.png" alt="아이디 로고">
                        </li>
                        <li>
                            <input name="user_id" class="id" type="text" placeholder="　아이디를 입력해주세요">
                        </li>
                        <li>
                            <input name="user_pw" class="password" type="password" placeholder="　비밀번호를 입력해주세요">
                        </li>
                        <li>
                            <!-- <input class="button" type="submit" value="로그인"> -->
                            <button type="submit" class="button">로그인</button>
                        </li>
                        </form>
                        <li class="login_info">
                            <a href="#">회원가입</a>
                            <br>
                            <br>
                            <a href="#">아이디</a>
                            / <a href="#">비밀번호</a>
                             찾기</li>
                  
                    </ul>
                
            </div>
            <div class="login_api">
                <fieldset>
                    <legend>　다른 로그인　</legend>
                <ul>
     
                    <li>
                        
                    </li>
                    
                    <li>
                        <a href="${url}">
                            <img src="/resources/img/5.png" alt="네이버 로그인">
                        </a>
                    </li>
                </ul>
            </fieldset>
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
            <p>Copyright © TripDiary Corp. All rights reserved. | TEL. 02-1234-5678 | 경기 성남시 분당구 판교역로 | 대표:우정호</p>
        </div>
    </footer>
    <!-- footer 끝-->
</body>
</html>
