 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		<div class="navbar-header">
      <a class="navbar-brand" href="#">Elligent HandBag Store</a>
    </div>
			<ul class="nav navbar-nav ">
				<li><a href="<c:url value="/home" />">Home</a></li>
				<li> <a href="<c:url value="/aboutus" />">About us</a></li>
				<%-- <ul class="nav navbar-nav navbar-right">
				<li> <a href="<c:url value="/getCustomerByUsername/${pageContext.request.userPrincipal.name}" />">profile</a></li>
				</ul> --%>
				
				<!--  only when the user logs in these two links will be visible -->
			
			<!--  Principal - object which contains details about the users -->
			
			
			<!--  pageContext - implicit object -->
			<!--  request - HttpServletRequest -->
			<!--  userPrincipal - Principal -->
<!--  name - property username -->			
		
		<c:if test="${pageContext.request.userPrincipal.name!=null}">
		<security:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="<c:url value="/admin/handbag/addHandbag" />">Add New Handbags</a></li>
				</security:authorize>
				
				<li><a href= "<c:url value="/getAllHandbags"/>">Browse All Handbags</a></li>
				<li><a> Welcome ${pageContext.request.userPrincipal.name }</a></li>
				<%-- <li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li> --%>
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId"/>">Cart</a></li>
			</security:authorize>
		
			<c:url value="/j_spring_security_logout" var="url"></c:url>
			<li><a href="${url}">logout</a>
			</c:if>
			
		
					
			<c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
			<c:url value="/customer/registration" var="url"></c:url>
			<li><a href= "${url }">Register</a></li>
			</c:if>
			
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
				<li> <a href="<c:url value="/getCustomerByUsername/${pageContext.request.userPrincipal.name}" />"><span class="glyphicon glyphicon-user"></span> profile</a></li>
				</ul>
				
		<!-- <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul> -->
	</div>
	
         
	</nav>

</body>
</html>
			

