<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to the Yota-Lister!"/>
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
    <h1 class="">"Welcome to the Yota-Lister!"</h1>
</div>
</body>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</html>