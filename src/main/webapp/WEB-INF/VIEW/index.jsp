<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/index.css" />
	<meta charset="ISO-8859-1">
<title>Education</title>
	<style >
		<!-- if the Login button got action this if condition will become true--> 
	        <c:if test="${datas.isDisplay()==true}">
	        nav,.img{
	        opacity:0.5;
	        }
	        </c:if>
		
	</style>
</head>
<body style="margin:0;background-image: linear-gradient(25deg,#d64c7f,#ee4758 50%);;border:solid 0.8px ;position:relative;">

	<nav>
	<ul class="unlist">
		<li class=" list first-child">Our School</li>
		<li class="list">Our Adventures</li>
		<li class="list" >Educators Space</li>
		<li class="login list"><a href="logingui" >Log in</a></li>
	</ul>
	</nav>
	<div class="verse" >
		<h1 class="heading" align="center">THIS IS A CLASSROOM </h1>
		<div class="orlist" >In-Depth. Innovative. Interactive. Immersive.</div>
	</div>
	<!-- if the Login button got action this form will display -->
	<c:if test="${datas.isDisplay()==true}">
	
		<form action="login">
			<a class="back" href="index" >&#10005;</a>
			<div class="message"><c:out value="${ datas.getWmessage()}"></c:out></div>
			<div class="email" >Name<input type="text" name="name" ></div>
			<div class="dob" >Date Of Birth<input type="text" name="dateofbirth" ></div>
			<input class="submit" type="submit" name="submit" >
		</form>
	</c:if>
</body>
</html>