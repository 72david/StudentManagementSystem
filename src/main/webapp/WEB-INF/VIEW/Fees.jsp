<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fees details</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/fees.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
</head>
<body style="margin:0;" >
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
                <li >My Account
                	<ul class="sub-navigation" >
                	<li><a href="myprofile">My Profile</a></li>
                	<li><a href="logout">Logout</a></li>
                	</ul>
                </li>
            </ul></div>
	<h1 class="heading" align="center">Fees Details </h1>
	<div class="container">
		<table>
			<tr>
				<th>Name</th>
				<th>RollNo</th>
				<th>Father Name</th>
				<th>Email</th>
				<th>Total Fees</th>
				<th>Balance Fees</th>
				<th>Paid Fees</th>
				<th>Paid/Not</th>				
			</tr>
			<c:forEach var="data" items="${studentlist}">
			<tr>
				<td>
					<c:out value="${ data.getFirstname()}"/>
					<c:out value="${ data.getSecondname()}"/>
				</td>
				<td><c:out value="${data.getRollno()}" /></td>
				<td><c:out value="${data.getFathername() }"/></td>
				<td><c:out value="${data.getEmail() }" /></td>
				<td>50000</td>
				<!--get paid fees from DB and get Balance Fees-->
				<td><c:out value="${50000-data.getFees()}"></c:out></td>
				<td><c:out value="${data.getFees()}"></c:out></td>
				<!--JSTL core if tag for Check the fees paid or not-->
				<c:if test="${50000-data.getFees()==0}"><td style="background-color:blue;" >Paid</td></c:if>
				
				<c:if test="${50000-data.getFees()!=0}"><td style="background-color:red;" >NOT Paid</td></c:if>
				
				
			</tr>
			</c:forEach>
		</table>
	
	</div>
</body>
</html>

















