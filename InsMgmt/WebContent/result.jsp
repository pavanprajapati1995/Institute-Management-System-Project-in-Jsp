<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result Submission</title>
<link rel="stylesheet" href="main.css"/>
<script language="javascript" src="validation2.js"></script>
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
							<li ><a href="home.jsp">Employee Interface </a></li>
							<li ><a href="home.jsp">Profile </a></li>
							<li ><a href=#>Feedback </a></li>
							<li ><a href="user.jsp">Change Password </a></li>
							</ul>
						
						
						</li>
						<li ><a href=#>Student</a>
							<ul class="sub">
							<li ><a href="home.jsp">Student Interface </a></li>
							<li ><a href="home.jsp">Profile</a></li>
							<li ><a href=#>Feedback</a></li>
							<li ><a href="user.jsp">Change Password</a></li>
							
							</ul>
						
						
						
						</li>
						
						<li ><a href="exam.jsp">Exam</a></li>
						<li ><a href="resultshow.jsp">Result</a></li>
						<li ><a href="help.html">Help</a></li>
						<li ><a href="about.html">About Us</a></li>
					</ul>
				
				</nav>
			</header>
	<div id="main-content">
	
	<marquee><h1>Institute Management System </h1></marquee>
	<p>Welcome, <%=session.getAttribute("username")%> </p><br>
	<h4> <a href="home.jsp">login</a></h4>
	
	<div id="form_wrapper" class="main-form">
	
	<form action="result1.jsp"  name="form1" method="post" onSubmit="return valid_form(this);" >
		<table align="center">
		<tr>
		<td>Student Id:</td>
		<td colspan=2><input type="text" name="studentid" ></td>
		</tr>
		<tr>
		<td rowspan=2>C Language:</td><td>Internal</td><td>external</td></tr>
		<tr><td><input type="text" name="cint"></td><td><input type="text" name="cex"></td></tr>
		
		<tr>
		<td rowspan=2>Compiler Design:</td><td>Internal</td><td>External</td></tr>
		<tr><td><input type="text" name="cdint"></td><td><input type="cdex" name="cdex" ></td></tr>
		
		
		<tr>
		<td rowspan=2>Software Engineering:</td><td>Internal</td><td>external</td></tr>
		<tr><td><input type="text" name="seint"></td><td><input type="seex" name="seex"></td></tr>
		
		<tr>
		<td rowspan=2>DBMS:</td><td>Internal</td><td>external</td></tr>
		<tr><td><input type="text" name="dbint"></td><td><input type="dbex" name="dbex"></td></tr>
		<tr>
		<td rowspan=2>Java:</td><td>Internal</td><td>external</td></tr>
		<tr><td><input type="text" name="javaint"></td><td><input type="text" name="javaex"></td></tr>
		
		<tr>
		<td></td>
		<td> <input type="submit" value="Submit"></td>
		<td></td>
		</tr>
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