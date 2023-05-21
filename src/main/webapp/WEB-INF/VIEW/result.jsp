<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/result.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
<title>Attanance</title>
</head>
<body style="margin:0;">

<div class="navigation-container" >
       <ul class="navigation">
                <li class="first-child" >Education</li>
                <li class="home"><a  href="home">HOME</a></li>
         
                <li>Adminstration
                <ul class="sub-navigation" >
            <li><a href="addstudent">Add Student</a></li>
            <li><a href="addresult">Add MarkSheet</a></li>
            <li><a href="addfees">Pay Fees</a></li>
            </ul></li>
                <li class="classes">Detials
            <ul class="sub-navigation" >
            <li><a href="studentdetails">Student Details</a></li>
            <li><a href="result">Result Details</a></li>
            <li><a href="subjects">Subject Details</a></li>
            <li><a href="feesdetails">Fees Details</a></li>
            </ul>
            </li>
                <li>My Account
                	<ul class="sub-navigation" >
                	<li><a href="myprofile">My Profile</a></li>
                	<li><a href="logout">Logout</a></li>
                	</ul>
                </li>
            </ul></div>
	<h1 class="heading" align="center">Result Details</h1>
	<div style="height:10mm;"></div>
	<div class="table">
		<table style="width:210mm;">
		
			<tr>
				<th>Sno</th>
				<th>Name</th>
				<th>Roll No</th>
				<th style="width:40mm;">Total(?/500)</th>
				<th>Grade</th>
			</tr>
			<%int i=0; %>
			<c:forEach var="datas" items="${resultlist}">
			<tr>
			
				<td><%=++i %></td>
				<td>
				<c:out value="${datas.getName()}" />
				</td> 
				<td><c:out value="${datas.getRollno()}"/></td>
				<td><c:out value="${datas.getTotal()}"/></td>
				<td><c:out value="${datas.getGrade()}"/></td>
			</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>