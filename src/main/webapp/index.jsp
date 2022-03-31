<%--
  Created by IntelliJ IDEA.
  User: justinconger
  Date: 3/30/22
  Time: 7:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Insert title here</title>
</head>
<body>

<jsp:include page="partials/navbar.jsp"/>
<div style="min-height: 50%">

    <c:if test="${home1}">
        <jsp:include page ="home.jsp"/>
    </c:if>
    <c:if test="${login1}">
        <jsp:include page ="login.jsp"/>
    </c:if>
    <c:if test="${Register1}">
        <jsp:include page ="register.jsp"/>
    </c:if>
    <jsp:include page="partials/footer.jsp"/>

</div>
</body>
</html>