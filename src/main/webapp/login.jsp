<%--
  Created by IntelliJ IDEA.
  User: justinconger
  Date: 3/30/22
  Time: 12:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="partials/navbar.jsp" %>
<style>
    body {
        margin:0;
        color:#edf3ff;
        font:600 16px/18px 'Open Sans',sans-serif;
    }
    :after,:before{box-sizing:border-box}
    .clearfix:after,.clearfix:before{content:'';display:table}
    .clearfix:after{clear:both;display:block}
    a{color:inherit;text-decoration:none}
    .login-wrap{
        background-color: rgb(2, 245, 195);
        width: 100%;
        margin:auto;
        /*max-width:510px;*/
        min-height:510px;
        position:relative;
        /*box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);*/
    }
    .login-html{
        width:100%;
        height:100%;
        position:absolute;
        padding:90px 70px 50px 70px;
        background:rgba(0,0,0,0.5);
    }
    .login-html .sign-in-htm,
    .login-html .for-pwd-htm{
        top:0;
        left:0;
        right:0;
        bottom:0;
        position:absolute;
        -webkit-transform:rotateY(180deg);
        transform:rotateY(180deg);
        -webkit-backface-visibility:hidden;
        backface-visibility:hidden;
        -webkit-transition:all .4s linear;
        transition:all .4s linear;
    }
    .login-html .sign-in,
    .login-html .for-pwd,
    .login-form .group .check{
        display:none;
    }
    .login-html .tab,
    .login-form .group .label,
    .login-form .group .button{
        text-transform:uppercase;
    }
    .login-html .tab{
        font-size:22px;
        margin-right:15px;
        margin:0 15px 10px 0;
        display:inline-block;
        border-bottom:2px solid transparent;
    }
    .login-html .sign-in:checked + .tab,
    .login-html .for-pwd:checked + .tab{
        color:#fff;
        border-color:#1161ee;
    }
    .login-form{
        min-height:200px;
        position:relative;
        -webkit-perspective:100px;
        perspective:100px;
        -webkit-transform-style:preserve-3d;
        transform-style:preserve-3d;
    }
    .login-form .group{
        margin-bottom:15px;
    }
    .login-form .group .label,
    .login-form .group .input,
    .login-form .group .button{
        width:100%;
        color:#fff;
        display:block;
    }
    .login-form .group .input,
    .login-form .group .button{
        border:none;
        padding:15px 20px;
        border-radius:25px;
        color: #020202;
        background: rgb(255, 255, 255);
    }

    .login-form .group input[data-type="password"]{
        text-security:circle;
        -webkit-text-security:circle;
    }
    .login-form .group .label{
        color: #020202;
        font-size:12px;
    }
    .login-form .group .button{
        background:#1161ee;
    }
    .login-form .group label .icon{
        width:15px;
        height:15px;
        border-radius:2px;
        position:relative;
        display:inline-block;
        background: rgba(255, 255, 255, 0.98);
    }
    .login-form .group label .icon:before,
    .login-form .group label .icon:after{
        content:'';
        width:10px;
        height:2px;
        background:#fff;
        position:absolute;
        -webkit-transition:all .2s ease-in-out 0s;
        transition:all .2s ease-in-out 0s;
    }
    .login-form .group label .icon:before{
        left:3px;
        width:5px;
        bottom:6px;
        -webkit-transform:scale(0) rotate(0);
        transform:scale(0) rotate(0);
    }
    .login-form .group label .icon:after{
        top:6px;
        right:0;
        -webkit-transform:scale(0) rotate(0);
        transform:scale(0) rotate(0);
    }
    .login-form .group .check:checked + label{
        color: #020202;
    }
    .login-form .group .check:checked + label .icon{
        background:#1161ee;
    }
    .login-form .group .check:checked + label .icon:before{
        -webkit-transform:scale(1) rotate(45deg);
        transform:scale(1) rotate(45deg);
    }
    .login-form .group .check:checked + label .icon:after{
        -webkit-transform:scale(1) rotate(-45deg);
        transform:scale(1) rotate(-45deg);
    }
    .login-html .sign-in:checked + .tab + .for-pwd + .tab + .login-form .sign-in-htm{
        -webkit-transform:rotate(0);
        transform:rotate(0);
    }
    .login-html .for-pwd:checked + .tab + .login-form .for-pwd-htm{
        -webkit-transform:rotate(0);
        transform:rotate(0);
    }
    .hr{
        height:2px;
        margin:60px 0 50px 0;
        color: #007b5e;
    }
    .foot-lnk{
        text-align:center;
    }
</style>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="login-wrap">
    <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
        <input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Forgot Password</label>
        <div class="login-form">
            <div class="sign-in-htm">
                <form action="login" method="post">
                <div class="group">
                    <label for="user" class="label">Username or Email</label>
                    <input type="text" name="username" id="user"  class="input">
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input id="pass" type="password" class="input" name="password" data-type="password">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign In">
                </div>
                <div class="hr"></div>
                </form>
            </div>
            <div class="for-pwd-htm">
                <div class="group">
                    <label for="user" class="label">Username or Email</label>
                    <input id="user" type="text" class="input">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Reset Password">
                </div>
                <div class="hr"></div>
            </div>
        </div>
    </div>
</div>

<%--    <meta charset="ISO-8859-1">--%>
<%--    <title>Please Log In</title>--%>
<%--</head>--%>
<%--<div>--%>
<%--<%@ include file="partials/navbar.jsp" %>--%>
<%--</div>--%>
<%--<body>--%>
<%--<div class="login-wrap">--%>
<%--    <div class="login-html">--%>
<%--        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>--%>
<%--        <input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Forgot Password</label>--%>
<%--        <div class="login-form">--%>
<%--            <div class="sign-in-htm">--%>

<%--        Sample login Example (try with username as "admin" and password as "admin" without quart ) <br> <br>--%>
<%--                <form action="login" method="post">--%>
<%--                    <div class="group">--%>
<%--                    Enter username :<input type="text" name="username">--%>
<%--                    </div>--%>
<%--                    <div class="group">--%>
<%--                    Enter password :<input type="password" name="password">--%>
<%--                    </div>--%>
<%--                    <div class="group">--%>
<%--                        <input type="submit" class="button" value="Log In">--%>
<%--                    </div>--%>

<%--                    <div class="hr"></div>--%>
<%--                    <div class="for-pwd-htm">&ndash;%&gt;--%>
<%--                        <div class="group">--%>
<%--                            <label for="user" class="label">Username or Email</label>--%>
<%--                            <input id="user" type="text" class="input" name="username">--%>
<%--                        </div>--%>
<%--                        <div class="group">--%>
<%--                            <input type="submit" class="button" value="Reset Password">--%>
<%--                        </div>--%>
<%--                        <div class="hr"></div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
                <%@ include file="partials/footer.jsp" %>

