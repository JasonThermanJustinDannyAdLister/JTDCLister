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
        <p hidden name="id">${ad.id}</p>
        <a href="/ads/edit?id=${ad.id}"><input class="btn btn-success" type="submit" value="Edit"/></a>

        <form action="/ads/delete" method="POST">
            <input type="hidden" name="ad_id" value="${ad.id}" />
            <input class="btn btn-danger" value="Delete" type="submit" onclick="return deleteAd()" />
        </form>
    </div>

<%--    USER DISPLAY--%>
    <div class="card">
        <h2>Seller Information</h2>
        <div class="card-body">
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

    <script>

        function deleteAd() {
            var userConfirm = confirm("Do you really want to delete this ad?");
            if (!userConfirm) {
                return false;
            } else {
                this.$('.deleteBtn').submit();
            }
        }

    </script>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
</body>
</html>