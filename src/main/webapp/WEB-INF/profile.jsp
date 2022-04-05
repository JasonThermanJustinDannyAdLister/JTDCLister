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
    <h1>Welcome, ${sessionScope.user}!</h1>
    <br>
<%--    <h3>Here is some of your most recent ad activity</h3>--%>
</div>

<%--<c:if test="${not empty userAds} ">--%>
<%--<c:forEach var="ad" items="${sessionScope.userAds}">--%>

    <%--USER DISPLAY--%>
<%--    <div class="card">--%>
<%--        <h2>Seller Information</h2>--%>
<%--        <div class="card-body">--%>
<%--&lt;%&ndash;            <p>Date Posted: ${ad.date}</p>&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    &lt;%&ndash;AD DISPLAY&ndash;%&gt;--%>
<%--    <div class="card">--%>
<%--        <h4>Title: </h4>--%>
<%--        <div class="card-body">--%>

<%--                ${ad.title}--%>
<%--        </div>--%>
<%--        <div class="card-body">--%>
<%--            <h4>Description: </h4>--%>
<%--                ${ad.description}--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</c:forEach>--%>
<%--</c:if>--%>

</body>
</html>