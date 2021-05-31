<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="row">
		<c:forEach items="${movies}" var="movie">
			<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12 text-center border">
				<a href="${pageContext.request.contextPath}/movies/movieid/${movie.movieID}"><img src="${movie.movieimageurl}" class="col-lg-8 col-8 col-sm-8" style="height:250px"/></a>
				<h2>${movie.moviename}</h2>
				<p>${movie.movieCategory}</p>
				<h2>${movie.movieDesc}</h2>
			</div>
		</c:forEach>
	</div>
</body>
</html>
