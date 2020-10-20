<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!--웹 에디터 사용(summernote)-->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <!--웹 에디터 사용(summernote)끝-->
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/boardlist.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>::write</title>
    <style>
        .board_write{
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
        .w_title{
            margin: 30px 21px 30px 0;
            padding: 20px 69px 20px 0;
            width: 100%;
            border: none;
            font-size: 32px;
            border-bottom: 1px solid gray; 
        }
        .ck-editor__editable{ /* ck 에디터 높이 조절*/
            min-height: 500px;
        }
        .filebox{
            margin-top: 30px ;
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
         #content{
            width:100%;
            min-height:300px;
            margin:20px 0;
            resize:none;
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
         }
         .table_btn{
            background-color: #fff;
            border: 1px solid #ff9253b9;
            color: #ff9253b9;
            font-size: larger;
            padding: 5px 10px;
            cursor: pointer;
        }
        .table_btn:hover{
            animation-name: text-tr;
            animation-duration: 2s;
            background-color: #ff9253b9;
            color: rgb(255, 255, 255);
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
                    <li><a href="login">로그인</a></li>
                    <li><a href="login">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 화면 작아졌을때 header 끝 -->


    <!-- 보드 리스트 시작-->
    <div class="board_write">
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
                        <h2 >국내 여행지
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
                <form action="trip_boardwrite" method="post" encType="multipart/form-data">
                  <input type="text" class="w_title" name="title" placeholder="제목을 입력해주세요" required>
                  
                  
                    <select name="bod_type">
                      <option value="${session_bod_type}">${session_bod_type}</option>
                   </select>
                    
                 <select name="bod_name">
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
                
                    <input type="hidden" class="w_title" name="writer" value="${session_username}" required>
                    
                    <textarea name="content" id="content" placeholder="　글을 적어주세요" required></textarea>
                    
                    <div class="filebox">
                        <input class="upload-name" value="파일선택">
                        <label for="ex_filename">업로드</label>
                        <input type="file" name="file" id="ex_filename" class="upload-hidden">
                    </div>
                
                    <!-- <div class="custom-file">
                  <tr>
                     <td>아래 기존 파일 업로드 창 사용가능</td>
                     <br>
                     <td><input type="file" value="파일 선택" name="file" /></td>
                  </tr>
               </div> -->
                    
                    <div class="bot_content">
                        <button type="submit" class="table_btn">등록</button>
                        <button type="button" onclick="window.open('trip_boardlist')" class="table_btn">목록</button>
                    </div>
                </form>
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
    <script>
    
      /* $(document).ready(function(){ */
        
    var fileTarget = $('.filebox .upload-hidden');
    fileTarget.on('change', function(){ // 값이 변경되면
        if(window.FileReader){ // modern browser 
            var filename = $(this)[0].files[0].name;
        }else { // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
        } // 추출한 파일명 삽입
        $(this).siblings('.upload-name').val(filename);
     });

    </script>
</body>
</html>