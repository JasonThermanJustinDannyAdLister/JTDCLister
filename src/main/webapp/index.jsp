

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
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</html>