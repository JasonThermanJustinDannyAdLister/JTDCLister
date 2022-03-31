<%--
  Created by IntelliJ IDEA.
  User: justinconger
  Date: 3/30/22
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>
    @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    #navbar{
        padding:1px;
        text-align: center;
        color: #007b5e;
        margin-bottom: 10px;
        text-transform: uppercase;
        background-color: #007b5e ;
    }
    .navbar-collapse{
        text-align: center;
        text-transform: uppercase;
    }
    .navbar-expand-sm{
        text-align: center;
        text-transform: uppercase;
    }
    #navbar .navbar-nav{
        text-align: center;
    }
    #navbar .dropdown {
        border-radius:0;
        border:0;
    }
    #navbar .nav-item a{
        color:#fff;
    }
    #navbar .dropdown-menu{
        background: #0c73cc;
        border:0;
        top:80%;
        border-radius:0px 0px 5px 5px;
        color:black;
    }
    #navbar .dropdown-item:hover{
        background: #070707;
        color: #de4242;
        color:black;

    }
    #navbar .dropdown-menu a{
        color: #c33131;
        color:black;
    }
    #navbar .nav-item .nav-link{
        -webkit-transition: .5s all ease;
        -moz-transition: .5s all ease;
        transition: .5s all ease;

    }
   #navbar .nav-item .nav-link:hover .navbar .nav-item .nav-link{
        padding: 1px;
        margin-left:5px;
        font-weight:700;
    }

</style>


<section id="navbar">
    <div class="container" >
        <nav class="navbar navbar-expand-sm" >
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" style="color: ghostwhite" href="https://jhconger.github.io/personal_website" target="_blank">JHCode™</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03" style="background: #007b5e; color: black">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.jsp">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>

                    <li class="nav-item dropdown dmenu">
                    </li>
                    <li class="nav-item dropdown dmenu">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Action</a>
                        <div class="dropdown-menu sm-menu">
                            <a class="dropdown-item" href="#">Lorem</a>
                            <a class="dropdown-item" href="#">Lorem ipsum</a>
                            <a class="dropdown-item" href="#">Lorem ipsum dolor</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-default my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>
</section>
