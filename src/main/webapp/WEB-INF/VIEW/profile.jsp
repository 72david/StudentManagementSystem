<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/profile.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
<title>My Profile</title>

</head>
<body style="margin:0;position:relative;">
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
                <li >Detials
            <ul class="sub-navigation" >
            <li><a href="studentdetails">Student Details</a></li>
            <li><a href="result">Result Details</a></li>
            <li><a href="subjects">Subject Details</a></li>
            <li><a href="feesdetails">Fees Details</a></li>
            </ul>
            </li>
                <li class="classes">My Account
                	<ul class="sub-navigation" >
                	<li><a href="myprofile">My Profile</a></li>
                	<li><a href="logout">Logout</a></li>
                	</ul>
                </li>
            </ul>
   </div>
	<h1 class="heading" align="center">My Profile </h1>
	<div class="image"></div>
	<div class="container" >
	<div class="sub_container">
	<div class="information" style="margin-left:16mm;" ><div>Name</div><div class="datas">${user.getFirstname()} ${user.getSecondname()}</div></div>
	<div class="information" style="margin-left:16mm;" ><div>Email</div><div class="datas">${user.getEmail()}</div></div>
	<div class="information"><div>Father Name</div><div class="datas">${user.getFathername()}</div></div>
	</div>
	<div class="sub_container" style="margin-left:40mm;">
	<div class="information" style="margin-left:15mm;"><div>Gender</div><div class="datas">${user.getGender()}</div></div>
	<div class="information"><div>Date Of Birth</div><div class="datas">${user.getDateofbirth()}</div></div>
	<div class="information" style="margin-left:22mm;"><div>City</div><div class="datas">${user.getCity() }</div></div>
	</div>
	</div>
</body>
</html>