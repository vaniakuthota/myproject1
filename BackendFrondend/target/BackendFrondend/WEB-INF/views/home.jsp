<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img  src="resources/images/49.jpg" alt="first slide" height="200px">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>welcome to online shopping</h1>
                            <p>Here You Can Browse And Buy any type of bags.Order Now For Your Amazing New Arrivals</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="resources/images/hjg.jpg" alt="Second slide" height="40%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>your brand shoes</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img  src="resources/images/ujgh.jpg" alt="Third slide" height="40%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>different mobiles you wnat</h1>
                            <p>live Freely,take happily which you want</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img-responsive" src="resources/images/96.jpg" alt="forth slide" height="60%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Any bag can show your passion</h1>
                            <p>different bags for different passions</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->
        <br><br>
        <div class="bg-info">
<c:forEach var="p" items="${productsList }">
<center>
<div class="col-lg-6">
					<img src="<c:url value='/resources/images/${p.id }.png'></c:url>" height="300px" width="500px" alt="Responsive image">
						
						<p align="center"> price : ${p.price }</p>
					<p align="center"> categoryname : ${p.category.categoryname }</p>
					</div>
					</center>
					<div class=col-lg-2"></div>
				</c:forEach>




</div>
        


</div>

</body>
</html>
