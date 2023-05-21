<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/editsubject.css" />
	<link rel="stylesheet" href="styles/style.css" />
	<meta charset="ISO-8859-1">
<title>edit subject</title>
</head>
<body style="margin:0;position:relative;">
<h1 align="center">Edit Subject Detials</h1>

<br>
	<div  style="color:red;left:165mm;position:absolute;top:30mm;" >
	<c:out value="${datas.getWmessage()}"/>
	</div>
<div class="container">
	<form action="editsubjectdata?subjectname=${subject.getSubjectname()}">
		<div class="label input" ><div>Subject Name:</div>
		<div class="subjectname"><c:out value="${subject.getSubjectname()}"/></div></div>
		<div class="input subcode">Subject Code:
		<input type="text" name="subjectcode" value="${subject.getSubjectcode() }" /></div>
		
		<div class="input chap">Chapters:<input type="text" name="chapters" value="${subject.getChapters() }"/></div>
		<input class="submit" name="submit" type="submit" value="EDIT" >
	</form>
	</div>
	<div class="back" ><a href="subjects">Back</a></div>
</body>
</html>