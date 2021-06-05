<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
 <%@taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid my-2">
	<div class="row">
		<div class="col-lg-4">
			<img src="${movie.movieimageurl}" class="img" style="height:445px;width:auto;"/>
		</div>
		<div class="col-lg-2">
			<h3>${movie.moviename}</h3>
			<h2><i><b>${movie.movieCategory}</b></i></h2>
			<p><b>${movie.movieDesc}</b></p>
			<sec:authorize access="hasAuthority('admin')">
				<a href="${pageContext.request.contextPath}/movies/delete/${movie.movieID}" class="btn btn-block btn-danger ">Delete</a>
				<a href="${pageContext.request.contextPath}/movies/edit/${movie.movieID}" class="btn btn-block btn-secondary ">Edit</a>
  				<button class="btn btn-block btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  					Add Season
  				</button>
			</sec:authorize>
  		</div>
  		<div class="col-lg-6">
  				<div class="embed-responsive embed-responsive-16by9">
  					<iframe class="embed-responsive-item" src="${movie.trailer}"></iframe>
				</div>
  		</div>
  	 </div>
  		<div class="collapse my-3" id="collapseExample">
		  <div class="card card-body">
		    <sp:form action="${pageContext.request.contextPath}/movies/addseason/${movie.movieID}" modelAttribute="season" method="post">
					<div class="form-group">
						<label>Season No</label>
						<sp:input path="seasonNo" placeholder="Enter movie name" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Season Desc</label>
						<sp:input path="seasonDesc" placeholder="Enter movie category" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Season Img Url</label>
						<sp:textarea path="seasonimgurl" placeholder="Enter Movie Description" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Season Video Url</label>
						<sp:textarea path="videoimgurl" placeholder="Season Video Url" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="submit" value="Add Season" class="btn btn-primary btn-block"/>
						<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
					</div>
				</sp:form>
		  </div>
</div>
		</div>
	<div>
	</div>
	<div class="container-fluid" data-aos="fade-down-left">
		<h1>ALl Series</h1>
		<div class="row">
			<c:forEach items="${seas}" var="row">
				<div class="m-0">	
					<div class="card " style="width: 10rem; margin-top:10px">
						<center><a href="${row.videoimgurl}"><img src="${row.seasonimgurl}" style="width: 155px;height: 200px;" class="card-img-top" alt="..."></a></center>
							<div class="card-body">
								<h5 class="card-title">${row.seasonNo}</h5>
							</div>
							<%-- <ul class="list-group list-group-flush">
								<center><li class="list-group-item"><h4>RS.${row.price}  <strike>${row.pricestrike}</strike></h4></li></center>
							</ul> --%>
							<div class="card-body">
							<sec:authorize access="hasAuthority('admin')">
								<a href="${pageContext.request.contextPath}/seasons/delete/${row.sid}" class="btn btn-danger btn-block">Delete</a>
								<a href="${pageContext.request.contextPath}/seasons/edit/${row.sid}" class="btn btn-warning btn-block">Edit</a>
							</sec:authorize>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>