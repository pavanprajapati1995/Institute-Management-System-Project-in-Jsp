<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Log In</title>
<link rel="stylesheet" href="main.css"/>
</head>
<body>



		
		<div class="container">
	<header>
				
				<p class="header">
				<img src="images/60.gif" alt="study" class="study" height="120px" width="130px">
				<h1 >Kamla Nehru Institute Of Technology</h1>
				<h3 align="center">(An Autonomus Govt Institute)</h3> 
				</p>
				
				
				<nav>
					<ul class="nav">
						<li ><a href="index.html">Home</a></li>
						<li ><a href=#>Campus</a>
						
							<ul class="sub">
							<li ><a href=#>Buildings </a></li>
							<li ><a href=#>List Of holidays</a></li>
							<li ><a href=#>Academic Calender</a></li>
							
							</ul>
						
						
						</li>
						<li ><a href=#>Staff</a>
							<ul class="sub">
							<li ><a href=#>Employee Interface </a></li>
							<li ><a href=#>Profile </a></li>
							<li ><a href=#>Feedback </a></li>
							<li ><a href=#>Change Password </a></li>
							</ul>
						
						
						</li>
						<li ><a href=#>Student</a>
							<ul class="sub">
							<li ><a href=#>Student Interface </a></li>
							<li ><a href=#>Profile</a></li>
							<li ><a href=#>Feedback</a></li>
							<li ><a href=#>Change Password</a></li>
							
							</ul>
						
						
						
						</li>
						
						<li ><a href="exam.jsp">Exam</a></li>
						<li ><a href="result.jsp">Result</a></li>
						<li ><a href="help.html">Help</a></li>
						<li ><a href="about.html">About Us</a></li>
					</ul>
				
				</nav>
			</header>
	<div id="main-content">
	
	<marquee><h1>Institute Management System </h1></marquee>
	
	
	<div id="form_wrapper" class="main-form">




		<form id="form" name="form" method="post" action="resultdsply.jsp">
		<center><h2 style="color:brown">-:Know Your Result:-</h2></center>
		<table border="1" align="center">
		<tr>
		<td>Enter Registration :</td>
		<td><input type="text" name="studentid"/></td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="submit"/></td>
		</table>
		</form>




	</div>
		</div><!--end of main content----> 
		<footer>
				<p>2015 &copy Copyright KNIT | Sultanpur Uttar Pradesh -228118
				<br><br>
				198.168.125
				
				</footer>
				
		</div><!end of main container--->
</body>
</html>