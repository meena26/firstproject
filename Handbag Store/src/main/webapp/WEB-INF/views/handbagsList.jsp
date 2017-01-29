 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/Controller.js"></c:url>">
</script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<div ng-app="myapp">
<!-- <div ng-controller="bookController"  ng-init="getBooksList()">
 -->
<div ng-controller="handbagController"  ng-init="getHandbags()">

Search: <input type="text" ng-model="searchCondition" placeholder="Search Handbags">
Search on Category: <input type="text"  ng-model="searchCondition.title"  placeholder="search title"/>

<H1> List of Handbags</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">
	
	<thead>
		<tr>
		<th>Image</th>
			<th>ID</th>
			<th>TITLE</th>
			<th>CATEGORY NAME</th>
			<th>View</th>
		</tr>
		</thead>
		<!--  for Each book b in books -->
		<tbody>
<tr ng-repeat="h in handbags | filter:searchCondition">
<c:url value="${contextPath}/resources/images/{{h.id}}.jpg" var="src" />
<%-- <c:url  value="${contextPath}E:/workspacenew/Handbag Store/src/main/resources/images/{{h.id}}.jpg"></c:url>" var="src"/> --%>
		<td><img src="${src}" style="width: 30%" align="middle"/></td>
		<td>{{h.id}}</td>
		<td>{{h.title}}</td>
		<td>{{h.category.categoryName}}</td>
		<td><a href="getHandbagById/{{h.id}}"><span class="glyphicon glyphicon-info-sign"></span></a>
		<security:authorize access="hasRole('ROLE_ADMIN')">
		<a href="admin/delete/{{h.id}}"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/handbag/editHandbag/{{h.id}}"><span class="glyphicon glyphicon-edit"></span></a>
		</security:authorize>
</tr>
</tbody>
</table>
		</div>
		</div>
	<!-- </table> -->
	<%@include file="footer.jsp"%>
</body>
</html>