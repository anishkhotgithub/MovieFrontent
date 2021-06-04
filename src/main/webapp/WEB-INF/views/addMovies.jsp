<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
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
	<c:if test="${m==null}">
		<sp:form action="${pageContext.request.contextPath}/movies/addmovies" modelAttribute="movie" method="post">
			<div class="form-group">
				<label>Movie Name</label>
				<sp:input path="moviename" placeholder="Enter movie name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Movie Category</label>
				<sp:input path="movieCategory" placeholder="Enter movie category" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Movie Description</label>
				<sp:textarea path="movieDesc" placeholder="Enter Movie Description" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Image Url</label>
				<sp:textarea path="movieimageurl" placeholder="Enter Image Url" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Trailer Url</label>
				<sp:textarea path="trailer" placeholder="Enter trailer Url" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Movie" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</sp:form>
		</c:if>
	</div>
	<div class="container">
	<c:if test="${m!=null}">
		<sp:form action="${pageContext.request.contextPath}/movies/update" modelAttribute="m" method="post">
			<div class="form-group">
				<sp:hidden path="movieID" placeholder="Id" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Movie Name</label>
				<sp:input path="moviename" placeholder="Enter movie name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Movie Category</label>
				<sp:input path="movieCategory" placeholder="Enter movie category" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Movie Description</label>
				<sp:textarea path="movieDesc" placeholder="Movie Description" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Image Url</label>
				<sp:input path="movieimageurl" placeholder="Enter Image Url" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Trailer Url</label>
				<sp:input path="trailer" placeholder="Enter trailer Url" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Update Movie" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</sp:form>
		</c:if>
	</div>
</body>
</html>