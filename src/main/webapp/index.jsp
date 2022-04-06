<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <style>
        #body{
            background-color: lightgray;
        }
        #main_header{
            text-align: center;
            color: blue;
        }
    </style>
</head>
<body id="body">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div id="main_header" class="container-fluid ">
    <h1>Welcome to the Adlister!</h1>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="ISO-8859-1">--%>

<%--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>--%>

<%--    <title>Ad Lister Project</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<jsp:include page="partials/navbar.jsp"/>--%>
<%--<div style="min-height: 50%">--%>

<%--    <c:if test="${home1}">--%>
<%--        <jsp:include page ="home.jsp"/>--%>
<%--    </c:if>--%>
<%--    <c:if test="${login1}">--%>
<%--        <jsp:include page ="login.jsp"/>--%>
<%--    </c:if>--%>
<%--    <c:if test="${Register1}">--%>
<%--        <jsp:include page ="register.jsp"/>--%>
<%--    </c:if>--%>
<%--&lt;%&ndash;    <jsp:include page="partials/footer.jsp"/>&ndash;%&gt;--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%@ include file="partials/navbar.jsp"%>
<br>
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="ParticleAnimation.gif" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="HART_LOGO.png" class="d-block w-100" alt="...">
        </div>
<%--        <div class="carousel-item">--%>
<%--            <img src="../Naturally.gif" class="d-block w-100" alt="...">--%>
<%--        </div>--%>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<br>
<%@ include file="partials/footer.jsp"%>

