<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Ad"/>
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="ad-page">
  <div class="container my-5 col-lg-8 col-md-10 col-12">
    <div class="card p-5 mx-auto col-10 bg-dark text-white">
<%--      <img class="card-img-top" src="<c:out value="${ad.pic}"/>" alt="Card image">--%>
      <div class="card-body">
        <h5 class="card-title">
          <c:out value="${ad.title}"/>
        </h5>
        <p class="card-text">
          <c:out value="${ad.description}"/>
        </p>
        <c:if test="${sessionScope.user.username eq 'admin'}">
          <a href="${pageContext.request.contextPath}/ads/edit?id=${ad.id}"
             class="btn btn-info btn-lg my-3" role="button" aria-pressed="true">Edit</a>
          <a href="${pageContext.request.contextPath}/ads/delete?id=${ad.id}"
             class="btn btn-danger btn-lg my-3" role="button" aria-pressed="true">Delete</a>
        </c:if>



      </div>
    </div>
  </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
