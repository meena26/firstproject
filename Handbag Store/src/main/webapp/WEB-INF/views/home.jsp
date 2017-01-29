<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Insert the content of header.jsp page -->
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<div class="carousel slide" id="myCarousel">
           <ol class="carousel-indicators">
             <li class="active" data-slide-to="0" data-target="myCarousel"></li>
             <li data-slide-to="1" data-target="mycarousel"></li>
              <li data-slide-to="1" data-target="mycarousel"></li>
           </ol>
        <div class="carousel-inner">
          <div class="item active" id="slide1">
            <img src="<c:url value="${contextPath}/resources/ca/max11.jpg"></c:url>" width="100%" height="60" > 
            <div class="carousel-caption">
               <h4></h4>
               <p></p>
            </div>
          </div>
        <div class="item" id="slide2">
           <img src="<c:url value="${contextPath}/resources/ca/max.jpg"></c:url>"  width="100%" height="60" >
           <div class="carousel-caption">
              <h4></h4>
              <p></p>
       </div>
       </div>
        <div class="item " id="slide3">
            <img src="<c:url value="${contextPath}/resources/ca/max15.jpg"></c:url>" width="100%" height="60" >
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide4">
            <img src="<c:url value="${contextPath}/resources/ca/max3.jpg"></c:url>" width="100%" height="60" > 
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide5">
            <img src="<c:url value="${contextPath}/resources/ca/max16.jpg"></c:url>" width="100%" height="60">
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide6">
            <img src="<c:url value="${contextPath}/resources/ca/max5.jpg"></c:url>"width="100%" height="60">
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide7">
            <img src="<c:url value="${contextPath}/resources/ca/max17.jpg"></c:url>" width="100%" height="60"> 
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide8">
            <img src="<c:url value="${contextPath}/resources/ca/max4.jpg"></c:url>" width="100%" height="60"> 
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
          <div class="item " id="slide9">
       
            <img src="<c:url value="${contextPath}/resources/ca/max18.jpg"></c:url>" width="100%" height="60"> 
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
         </div> 
         </div>
           <a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
           <a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>
         </div>
         
<!--  
<h3> Your Home Page. [include carousel and other details]</h3>
Select New Arrivals
<a href="<c:url value="book/getBooksByCategory?cid=1"/>">New Arrivals</a>
<a href="<c:url value="book/getBooksByCategory?cid=2"/>">Special Edition</a>
<a href="<c:url value="book/getBooksByCategory?cid=3"/>">Discount Sale</a>
<a href="<c:url value="book/getBooksByCategory?cid=4"/>">General</a>
-->
<!-- insert the content of footer.jsp -->
<%@ include file="footer.jsp" %>
</body>
</html>