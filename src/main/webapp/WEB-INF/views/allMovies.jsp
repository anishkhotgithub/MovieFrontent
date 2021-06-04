<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid" data-aos="fade-down-left">
		<h1>ALl Movies</h1>
		<div class="row">
			<c:forEach items="${movies}" var="row">
				<div class="m-0">	
					<div class="" style="width: 10rem; margin-top:10px">
						<a href="${pageContext.request.contextPath}/movies/movieid/${row.movieID}"><img src="${row.movieimageurl}" style="height:250px; width: 158px;"/></a>
							<div class="card-body">
								<%-- <h5 class="card-title">${row.moviename}</h5> --%>
								<%-- <p class="card-text">${row.movieCategory}</p>
								<p class="card-text">${row.movieDesc }</p> --%>
							</div>
							<%-- <ul class="list-group list-group-flush">
								<center><li class="list-group-item"><h4>RS.${row.price}  <strike>${row.pricestrike}</strike></h4></li></center>
							</ul> --%>
							<!-- <div class="card-body">
								<a href="" class="btn btn-danger btn-block">Delete</a>
								<a href="" class="btn btn-warning btn-block">Edit</a>
							</div> -->
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
