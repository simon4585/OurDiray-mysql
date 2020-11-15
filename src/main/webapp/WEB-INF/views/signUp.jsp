<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="include/header.jsp" %>
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


    <div class="background_sign">
        <div class="signup1">
            <div class="signup2">
            <h1 style="text-align: center;">회원가입</h1>
            
                <form action="/signUp" method="POST">
                    <ul>
                        <li>
                            <label>아이디<br>
                                <input type="text"  name="user_id" required>
                            </label>
                        </li>
                        <li>
                            <label>닉네임<br>
                                <input type="text"  name="user_name" required>
                            </label>
                        </li>
                        <li>
                            <label>비밀번호<br>
                                <input type="password" name="user_pw" required>
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

<%@ include file="include/footer.jsp" %>