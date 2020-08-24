<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>home page</title>
		<meta name="author" content="Prabhat Kumar">
		<meta name="view-port" content="width=device-width">
		<meta name="description" content=" making a website about the institute management">
		<link rel="stylesheet" href="main.css"/> 
	
	
	</head>
	<body>
		
	
	
	
	
	
	
	
		<div class="container">
			
			<header>
				<p class="header" >
				<img src="62.jpg" alt="study" class="study" height="90px" width="90px">
				<h1 >Kamla Nehru Institute Of Technology</h1>
				<h3 align="center">(An Autonomus Govt Institute)</h3> 
				</p >
				<nav>
					<ul class="nav">
						<li ><a href="home.html">Home</a></li>
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
					<p class="mainp" >
					
					<img src="62.jpg" alt="study" class="study">
					This is an premier institute in North India.
					
				
					</p>
				
				
				
					<div class="main-item">
						
						<div>
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
						<form method="post" action="login.jsp">
						<h2 >:Log-in:</h2>
						<table border="2"  class="mytb">
						<tr>
						<td>Enter Your Name :</td>
						<td><input type="text" name="name"/></td>
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
					
					
					<div>
						<h2>News & Update</h2>
					
					</div>
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
    