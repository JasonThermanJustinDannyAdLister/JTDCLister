
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@ include file="/WEB-INF/partials/head.jsp" %>
  <title>Home</title>
</head>
<body>
<%@ include file="/WEB-INF/partials/navbar.jsp" %>
<div class="w-100">

</div>
<div>
  <c:forEach var="ad" items="${ads}">
    <div class="col-md-6">
      <h2>${ad.title}</h2>
      <p>${ad.description}</p>
    </div>
  </c:forEach>
</div>

<form class="form-inline d-flex mx-auto">
  <input class="form-control mx-auto" type="search" placeholder="Search" aria-label="Search">
  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
</form>

</body>
<%@ include file="/WEB-INF/partials/footer.jsp" %>
</html>