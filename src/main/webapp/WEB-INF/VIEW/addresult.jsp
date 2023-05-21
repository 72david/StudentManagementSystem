<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.regex.*,java.sql.*" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/addresult.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
	<title>Add result</title>
</head>
<body style="margin:0;positon:relative;">
<div class="navigation-container" >
        <ul class="navigation">
                <li class="first-child" >Education</li>
                <li class="home"><a  href="home">HOME</a></li>
         
                <li class="classes">Adminstration
                <ul class="sub-navigation" >
            <li><a href="addstudent">Add Student</a></li>
            <li><a href="addresult">Add MarkSheet</a></li>
            <li><a href="addfees">Pay Fees</a></li>
            </ul></li>
                <li >Detials
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
	<h1 class="heading" align="center">Add MarkSheet</h1>
	
      	<div class="message"><c:out value="${datas.getWmessage()}"></c:out></div>
	<div class="container">
	<form action="studentresult" >
		<div class="sub-form1">
		<div class="label" style="padding-left:8mm;">Name:<input type="text" name="name" /></div>
		<div class="label" >Roll NO:<input type="text" name="rollno"/></div></div>
		<div class="sub-form2">
		<div class="label" style="padding-left:9mm;">Tamil:<input type="text" name="tamil"/></div>
		<div class="label" style="padding-left:3mm;">English:<input type="text" name="english"/></div>
		<div class="label" style="padding-left:13mm;">Java:<input type="text" name="java"/></div>
		<div class="label" style="padding-left:5mm;">Python:<input type="text" name="python"/></div>
		<div class="label" style="margin-left:-19mm;">HTML & CSS:<input type="text" name="htmlCss"/></div>
		<input type="submit" value="Submit" class="submit" name="submit"/>
		</div>	
	</form>
	</div>
</body>
</html>