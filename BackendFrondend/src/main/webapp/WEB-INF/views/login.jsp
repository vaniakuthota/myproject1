<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<span style="color:red">${error }</span><br>
${msg }<br>
<div></div>
<div class="row">
<div class="col-lg-4"></div>
<div class="col-lg-1" >
<div class="bg-info text-white">
<b>Login Page</b>
</div>
</div>
<div class="col-lg-4"></div>
</div>
<c:url value="/j_spring_security_check" var="url"></c:url>
<form method="post" action="${url }">
<div class="container">
<div class="row">
<div class="col-lg-2"><p align="center">Enter Email</p></div><div class="col-lg-3"><input type="text" name="j_username"><br></div></div>
<div clas="row">
<div class="col-lg-2"><p align="center">Enter password</p></div></div><div class="col-lg-3"> <input type="password" name="j_password"></div></div>
<div class="row"><div class="col-lg-12"> </div></div>
<div class="row"><div class="col-lg-3"></div>
<div class="col-lg-2"><input type="submit" value="Login"></div>
</div>
</div>
</form>
</body>
</html>