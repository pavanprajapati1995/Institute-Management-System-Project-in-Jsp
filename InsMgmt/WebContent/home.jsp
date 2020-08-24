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
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/insmgmt";
String user = "root";
String password = "prabhu123";

String sql = "select designation from users";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>


		
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
						
						<li ><a href="exam.html">Exam</a></li>
						<li ><a href="resultshow.jsp">Result</a></li>
						<li ><a href="help.html">Help</a></li>
						<li ><a href="about.html">About Us</a></li>
					</ul>
				
				</nav>
			</header>
	<div id="main-content">
	
	<marquee><h1>Institute Management System </h1></marquee>
	
	
	<div id="form_wrapper" class="main-form">




		<form id="form" name="form" method="post" action="login.jsp">
		<center><h2 style="color:brown">-:User Login :-</h2></center>
		<table border="1" align="center">
		<tr>
		<td>Enter Your Name :</td>
		<td><input type="text" name="username"/></td>
		</tr>
		<tr>
		<td>Enter Your Password :</td>
		<td><input type="password" name="password"/></td>
		</tr>
		<tr>
		<td>Select UserType</td>
		<td><select name="designation">
		<option value="select">select</option>
		<%
		while(rs.next())
		{
		String designation = rs.getString("designation");
		%>
		<option value=<%=designation%>><%=designation%></option>
		<% 
		}
		}
		catch(SQLException sqe)
		{
		out.println("home"+sqe);
		}
		%>
		</select>
		</td>
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