<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="main.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
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
						<p>Welcome, <%=session.getAttribute("username")%></p>
						<p><a href="logout.jsp">Logout</a>
				<div class="welcome-item">
				
				<h1>Student Information</h1>
				<ul >
				<li ><a href="reg.jsp">New Admission</a></li>
				<li ><a href="studsply.jsp">Student Profile</a></li>
				</ul>
				
				
				
				
				
				</div>

				</div><!--end of main content----> 
				<footer>
				<p>2015 &copy Copyright KNIT | Sultanpur Uttar Pradesh -228118
				<br><br>
				
				198.168.125<br>
				Design & Developed @ : Prabhat Kumar
				
				</footer>
				
		</div><!end of main container--->




</body>
</html>