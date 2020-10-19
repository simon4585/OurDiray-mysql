<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>Trip Diary</title>
    
    <style>
        *{
            padding: 0;
            margin: 0;
            font-family: 'Jua', sans-serif;
            cursor: pointer;
        }
        body{
            max-width: 1920px;
            min-width: 1280px;
            height: 100%;
            background-image: url('/resources/img/cloud.jpg');
            background-color: rgba(0, 0, 0, 0.473);
        }
        .main{
            width: 1280px;
            height: 100%;
            margin: 0 auto;
        }
        .main::after{
            width: 100%;
            height: 100%;
        }
        .main_text{
            width: 800px;
            height: 500px;
            margin-top: 400px;
            margin-left: 270px;
            position: relative;
        }
        .common_text{
            font-size: 36px;
            color: white;
            font-weight: 600;
        }
        .logo_text{
            font-size: 52px;
            color: #fff;
            font-weight: 600;
            
            width: 250px;
            position: absolute;
            top: 0;
            right: 0;
            margin: 27px 0px 0px 400px;
            display: none;
        }
        .t1{
            display: none;
        }
        .t2{
            display: none;
        }
        .t3{
            display: none;
        }
    </style>
</head>
<body>
    <div class="main">
        <div class="main_text">
            <p class="common_text t1">힘들때</p>
            <p class="common_text t2">쉬고 싶은 곳이 필요할때</p>
            <p class="common_text t3">언제든지 놀러와!</p>
            <p class="logo_text">Trip Diary</p>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            var $go = false;
            $(document).mouseenter(function(){
                $(".t1").fadeIn(1000);
                $(".t1").addClass("on");
                setTimeout(function(){
                    if($(".t1").is(".on")==true){
                        $(".t2").fadeIn(1000)
                        $(".t2").addClass("on");
                    }
                    setTimeout(function(){
                    if($(".t2").is(".on")==true){
                        $(".t3").fadeIn(1000)
                        $(".t3").addClass("on");
                    }
                    setTimeout(function(){
                    if($(".t3").is(".on")==true){
                        $go = true;
                        $(".logo_text").fadeIn(1000)
                        $(".logo_text").addClass("on");
                    }
                    if($go == true){
                    $("html").click(function(){
                        window.open("main.html","_self");
                    });
                }
                },1000);
                },1000);
                },1000);
                
            });
        });
    </script>
</body>
</html>