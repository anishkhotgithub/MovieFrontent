<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	<div class="row">
		<div class="col-lg-6">
			<img src="${movie.movieimageurl}" class="col-lg-12"/>
		</div>
		<div class="col-lg-6">
			<h2>${movie.moviename}</h2>
			<p>${movie.movieCategory}</p>
			<p>${movie.movieDesc}</p>
			<a href="${pageContext.request.contextPath}/movies/delete/${movie.movieID}" class="btn btn-danger ">Delete</a>
			<a href="${pageContext.request.contextPath}/movies/edit/${movie.movieID}" class="btn btn-secondary ">Edit</a>
		</div>
	</div>
	</div>
</body>
</html>