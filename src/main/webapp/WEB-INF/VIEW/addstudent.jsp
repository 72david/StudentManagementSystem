<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/addstudent.css" />
    <link rel="stylesheet" href="styles/style.css" />
<title>addstudent</title>
</head>
<body style="margin:0;position:relative;">
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
	<h1 class="heading" align="center">Add Student </h1>
	<div id="container">
	 	<div class="message"><c:out value="${datas.getWmessage()}"></c:out></div>

            <form action="addstudentdata">
                <div class="form_container">
                
                <div id="ufname" class="labels">
                    <label for="uname">First Name</label>
                     <input id="input_uid" type="text" name="Firstname" >
                    
                  </div>
                  <div class="labels" id="ulname">
                    <label for="ulname">Last Name</label>
                    <input id="input_uid" type="text" name="Secondname" >
                </div>
                   <div class="labels" id="udob">
                    <div class="date_label_contanier">
                    <div><label >Date of Birth</label></div>
              <div><label style="font-size:16px;">(DD-MM-YYYY)</label></div></div>
                    <div><input type="text" name="Dateofbirth" id="input_dob"></div>
                  </div></div>
                  
                  <div class="form_container1">
                  <div id="ufathername" class="labels">
                    <label for="fathername">Father Name</label>
                     <input id="input_fname" type="text" name="Fathername">
                </div> 
               
                <div class="labels" id="ugender">
                    <label>Gender</label>
                	<select for="ugender" name="Gender">
                        <option></option>
                		<option>Male</option>
                        <option>Female</option>
                        <option>Other</option>
                	</select>
                </div>
                <div class="labels" id="umobileno">
                    <label>Email</label>
                    <input type="text" name="Email" id="input_mobileno">
                </div>
                <div id="ucity" class="labels">
                    <label for="ucity">City</label>
                     <input id="input_uid" type="text" name="City" >
                </div>
                <div id="submit" class="labels"><input  id="input_submit" type="submit" name="submit" value="SUBMIT"></div>             
            </div>
            </form>
            </div>
</body>
</html>