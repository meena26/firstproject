 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
</script>
<script src="<c:url value="/resources/js/Controller.js"/>"></script>

<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div ng-app="myapp">
<c:url var="url" value="${contextPath}/resources/images/${handbagObj.id}.jpg"></c:url>
		<img src="${url }"/><br>
ISBN : ${handbagObj.id} <br>
TITLE : ${handbagObj.title } <br>
Price : ${handbagObj.price } <br>
<c:url value="/cart/add/${handbagObj.id }" var="url"></c:url>
<div ng-controller="handbagController">
<security:authorize access="hasRole('ROLE_USER')">
<a href="#" ng-click="addToCart(${handbagObj.id})" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span></a>
</security:authorize>
<a href="<c:url value="/getAllHandbags"></c:url>">Back</a>
</div>
</div>
<script src="<c:url value="/resources/js/Controller.js"/>"></script>
<%@ include file="footer.jsp" %>
</body>
</html>



