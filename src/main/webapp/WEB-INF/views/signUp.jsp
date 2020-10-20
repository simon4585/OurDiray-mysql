<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/resources/js/common.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>::로그인</title>
    <style>
        .background_sign{
            background-image: url('/resources/img/background2.jpg');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            min-width:1280px;
            width: 100%;
            height: 759px;
            margin-top: 100px;
        }
        .signup1{
            width: 640px;
            margin: 0px auto;
            padding-top: 80px;
        }
        .signup2>h1{
            margin-left: 30px;
            margin-top: 20px;
        }
        .signup2{
            width: 640px;
            height: 600px;
            padding: 10px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 1px 1px 2px gray;
        }
        .signup2 ul{
            width: 600px;
            padding: 20px;
            list-style: none;
        }
        .signup2 li{
            margin-top: 20px;
        }
        .signup2 label{
            font-size: 25px;
        }
        .signup2 input{
            width: 600px;
            height: 35px;
            border: none;
            font-size: 18px;
            border-bottom: 1px solid gray;
        }
        .signup2 input:focus{
            outline: none;
        }
        .signup2 button{
            margin: 20px 20px;
            width: 600px;
            height: 60px;
            font-size: 25px;
            background-color: #fff;
            cursor: pointer;
            text-shadow: none;
            border: none;
            border: 2px solid #ff925388;
            color: black;
        }
        .signup2 button:hover{
            animation-name: showme;
            animation-duration: 1s;
            border: none;
            background-color: #ff925388;
            color: #fff;
        }
        @keyframes showme {
            form{
                color: rgb(78, 78, 78);
                background-color: #ffc6a688;
                border: none;
            }
            15%{
                color: rgb(202, 202, 202);
                background-color: #ffb28588;
                border: none;
            }
            to{
                color: rgb(255, 255, 255);
                background-color: #ff925388;
                border: none;
            }
        }
    </style>
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
                    <li><a href="trip_boardlist">국내 먹거리</a></li>
                    <li><a href="trip_boardlist">해외 먹거리</a></li>
                </ul>
                <ul class="fade_nav2 fade_common">
                    <li><a href="trip_boardlist">국내 여행지</a></li>
                    <li><a href="trip_boardlist">해외 여행지</a></li>
                </ul>
                <ul class="fade_nav3 fade_common">
                    <li><a href="trip_boardlist">구경하기</a></li>
                    <li><a href="trip_boardlist">숙소후기</a></li>
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
                    <li><a href="/login">로그인</a></li>
                    <li><a href="/login">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 화면 작아졌을때 header 끝 -->
    <div class="background_sign">
        <div class="signup1">
            <div class="signup2">
            <h1 style="text-align: center;">회원가입</h1>
            
                <form action="/signUp" method="POST">
                    <ul>
                        <li>
                            <label>아이디<br>
                                <input type="text"  name="user_id">
                            </label>
                        </li>
                        <li>
                            <label>닉네임<br>
                                <input type="text"  name="user_name">
                            </label>
                        </li>
                        <li>
                            <label>비밀번호<br>
                                <input type="password" name="user_pw">
                            </label>
                        </li>
                        
                        <li>
                            <label>이메일<br>
                                <input type="email" name="email">
                                <input type="hidden" name="point" value="0">
                                <input type="hidden" name="enabled" value="1">
                                <input type="hidden" name="levels" value="ROLE_USER">
                            </label>
                        </li>
                    </ul>
                    <button type="submit">회원가입</button>
                </form>
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
</body>
</html>