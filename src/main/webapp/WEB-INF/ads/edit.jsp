<%--
  Created by IntelliJ IDEA.
  User: justinconger
  Date: 4/10/22
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit an ad" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Welcome, ${user.username}! Edit your ad below: </h1>
  <form method="POST" action="/editAd">
    <div>
      <label  for="newTitle">Title</label>
      <input type="text" id="newTitle" name="title" value="${myAd.title}" required>
    </div>
    <div>
      <label for="newDescription">Description</label>
      <input type="text" id="newDescription" name="description" value="${myAd.description}" required>
      <input type="hidden" name="adId" value="${myAd.id}">
    </div>
    <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>

</html>