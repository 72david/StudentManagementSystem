<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>student details</title>
	 <link rel="stylesheet" href="styles/studentdetails.css" />
	 <link rel="stylesheet" href="styles/style.css" />
</head>
<body style="margin:0;" class="body">
    <div class="navigation-container" align="center">
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
            </ul> </div>
        <div class="sample"><h1 align="center">Student Details</h1>
        
   
    <div class="middle">
    
    
    
        <div class="side-bar">      	
        </div>
        <div class="container">
            <table style="width:280mm;" id="table">
                <tr>
                	<th>RollNO</th>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Date Of Birth</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>City</th>
           
                   
                </tr>
                <c:forEach var="user" items="${studentlist}">
                <tr>
                	<td><c:out  value="${user.getRollno() }" /></td>
                    <td><c:out  value="${user.getFirstname()} ${user.getSecondname()}" /></td>
                    <td><c:out  value="${user.getFathername()}" /></td>
                    <td><c:out  value="${user.getDateofbirth()}" /></a></td>
                    <td><c:out  value="${user.getGender()}" /></a></td>
                    <td><c:out  value="${user.getEmail()}" /></td>
                    <td><c:out  value="${user.getCity()}" /></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="footer">
				<div align="center" style="color:red;margin-top:5mm;" ><c:out value="${msg }"/></div>
    </div> 
     </div>   
</body>
</html>