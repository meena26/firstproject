<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
</script>
<script src="<c:url value="/resources/js/Controller.js"/>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="description" content="A customized about us page design using bootstrap framework, HTML and CSS. If you need to use this attractive and responsive bootstrap about us page design go back to article and click download button to download it.">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<style>
.jumbotron {
    position: relative;
    background: #000 url("E:/pics/k.jpg") center center;
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
    }
    #one {
    color: #000000;
    /* margin-left: 40px; */
} 
</style>
</head>
<body>
<div class="jumbotron">
    <div class="container">
     <h1 id="one">customer details!</h1>
        <p id="one">
CUSTOMERID: ${customerObj.customerId}<br>
NAME: ${customerObj.customerName} <br>
E-MAIL : ${customerObj.customerEmail} <br>
PHONE : ${customerObj.customerPhone} <br>
<h2>Billing Address</h2><br>
BILLINGADDRESSID: ${customerObj.billingAddress.billingAddressId}<br>
STREETNAME: ${customerObj.billingAddress.streetName}<br>
APARTMENTNUMBER: ${customerObj.billingAddress.apartmentNumber}<br>
CITY: ${customerObj.billingAddress.city}<br>
STSTE: ${customerObj.billingAddress.state}<br>
COUNTRY: ${customerObj.billingAddress.country}<br>
ZIPCODE: ${customerObj.billingAddress.zipcode}<br> 
<h2>Shipping Address</h2><br>
SHIPPINGADDRESSID: ${customerObj.shippingAddress.shippingAddressId}<br>
STREETNAME: ${customerObj.shippingAddress. streetName}<br>
APARTMENTNUMBER: ${customerObj.shippingAddress. apartmentNumber}<br>
CITY: ${customerObj.shippingAddress. city}<br>
STATE: ${customerObj.shippingAddress. state}<br>
COUNTRY: ${customerObj.shippingAddress. country}<br>
ZIPCODE: ${customerObj.shippingAddress. zipcode}<br></p>

</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>