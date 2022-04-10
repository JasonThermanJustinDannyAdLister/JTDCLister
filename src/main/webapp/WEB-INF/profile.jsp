<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <br>
    <h3>Your posts:</h3>
    <c:forEach var="ad" items="${ads}">
    <div class="col-md-6">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
        <p>${ad.id}</p>
        <a href="/update"><button class="btn btn-success">Update</button></a>
        <a href="/delete"><button class="btn btn-danger">Delete</button></a>
    </div>

<%--    USER DISPLAY--%>
    <div class="card">
        <h2>Seller Information</h2>
        <div class="card-body">
<%--            <p>Date Posted: ${ad.date}</p>--%>
        </div>
    </div>
    <%--AD DISPLAY--%>
    <div class="card">
        <h4>Title: </h4>
        <div class="card-body">

                ${ad.title}
        </div>
        <div class="card-body">
            <h4>Description: </h4>
                ${ad.description}
        </div>
    </div>
</c:forEach>
</body>
</html>