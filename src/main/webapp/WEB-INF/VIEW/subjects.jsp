<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/subjects.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
<title>subject details</title>
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
	<h1 class="heading" align="center">Subject Details</h1>
	<div class="top"></div>
	<div class="container">
	<div class="side-bar"></div>
            <div style="overflow:auto;"><table style="width:280mm;" id="table">
                <tr>
                <% int number=0;%>
                    <th>S.No</th>
                    <th>Subject Code</th>
                    <th>Subject Name</th>
                    <th>Chapters</th>
                    <th style="border:none;"></th>
         
                </tr>
                <c:forEach var="datas" items="${subjectlist}">
                <tr>
                    <td><%= ++number %></td>
                    <td><c:out  value="${datas.getSubjectcode()}" /></td>
                    <td><c:out  value="${datas.getSubjectname() }" /></td>
                    <td><c:out  value="${datas.getChapters()}" /></td>
                    <td class="editsubject"align="center">
                    	<!--Passing subjectname with the http request for identify this object -->
                        <a href="editsubject?subjectname=<c:out value="${datas.getSubjectname()}" />">
                        Edit</a>
                     </td>
                   
                </tr>
                </c:forEach>
            </table></div>
        </div>
        <div class="bottom"></div>
</body>
</html>