 <%@page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/handbag/editHandbag" var="url"></c:url>
	<form:form  method="post" action="${url}" commandName="editHandbagObj" enctype="multipart/form-data">>
		<table>
		<tr>
			<td><form:label path="id">ID</form:label></td>
			<td><form:input path="id" disabled="true"/>
			<form:hidden path="id"/></td>
</tr>
<tr>
<td><form:label path="title">TITLE</form:label></td>
<td><form:input path="title"></form:input></td>
	</tr>
	<tr>
<td><form:label path="supplier">SUPPLIER</form:label></td>
<td><form:input path="supplier"></form:input></td>
	</tr>
	<tr>
<td><form:label path="price">PRICE</form:label></td>
<td><form:input path="price"></form:input></td>
	</tr>
	<%-- <tr>
<td><form:label path="author">AUTHOR</form:label></td>
<td><form:input path="author"></form:input></td>
	</tr> --%>
	
	<tr>
	<td><form:label path="category">CATEGORY</form:label></td>
	<td>
	<form:radiobutton path="category.cid" value="1"/>Athletic Bag
	<form:radiobutton path="category.cid" value="2"/>Back Pack
	<form:radiobutton path="category.cid" value="3"/>Baguette Bag
	<form:radiobutton path="category.cid" value="4"/>Bowling Bag
	<form:radiobutton path="category.cid" value="5"/>Clutch Bag
	<form:radiobutton path="category.cid" value="6"/>Sling Bag
	</td>
	</tr>
	<tr><td>
	    <form:input path="handbagImage" type="file" />
	    </td></tr>
	
	<tr>
	<td colspan="2"><input type="submit" value="EditHandbag"></td>
	</tr>
		</table>
	</form:form>
<%@ include file="footer.jsp" %>
</body>
</html>
