<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
  AOS.init({easing:'ease-in-out-sine'});
</script>
<style type="text/css">
	nav
	{
		background-color: #3277C3;
	}
</style>
</head>
<body>
  <div>
  	<nav class="navbar navbar-expand-lg navbar-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/movies/">Movie</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <sec:authorize access="!isAuthenticated()">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/user/register">Register</a>
      </li>
      </sec:authorize>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}">About Us</a>
      </li>
       <sec:authorize access="hasAuthority('admin')">
        <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/movies/addmovies">Add Movies</a>
       </li>
       </sec:authorize>
       <sec:authorize access="isAuthenticated()">
      	<li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
    	  </li>
      </sec:authorize>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success rounded my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
  </div>
</body>
</html>