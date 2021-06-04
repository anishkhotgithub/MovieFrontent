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
		<sp:form action="${pageContext.request.contextPath}/seasons/addseason" modelAttribute="season" method="post">
			<div class="form-group">
				<label>Season No</label>
				<sp:input path="seasonNo" placeholder="Enter movie name" class="form-control"/>
			</div>
			<sp:hidden path="movieID"/>
			<div class="form-group">
				<label>Season Desc</label>
				<sp:input path="seasonDesc" placeholder="Enter movie category" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Season Img Url</label>
				<sp:textarea path="seasonimgurl" placeholder="Enter Movie Description" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Season" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</sp:form>
	</div>
	
</body>
</html>