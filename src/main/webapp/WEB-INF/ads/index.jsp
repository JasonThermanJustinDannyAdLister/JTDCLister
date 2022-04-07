
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Here Are all the ads!</h1>
    <jsp:useBean id="ads" scope="request" type="java.util.List"/>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><c:out value="${ad.title}"></c:out></h2>
            <p><c:out value="${ad.description}"></c:out></p>
            <p>ID#: <c:out value="${ad.id}"></c:out></p>
            <h5>Posted by: <c:out value="${ad.username}"></c:out></h5>
        </div>
    </c:forEach>
</div>
</body>
</html>
