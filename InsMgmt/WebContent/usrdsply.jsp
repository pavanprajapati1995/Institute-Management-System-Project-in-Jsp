<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Information</title>
<link rel="stylesheet" href="main.css"/>
</head>
<body>



<%	
	String username=null,password=null,designation=null,name=null,phone=null;
	String s = (String) session.getAttribute("username");
	Connection con= null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/insmgmt";
	String user = "root";
	String dbpsw = "prabhu123";
	String sql = "select *from users where username='"+ s+"'";
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		
		rs = ps.executeQuery();
		while(rs.next())
		{
			username=rs.getString(1);
			//password=rs.getString(2);
			designation=rs.getString(3);
            name=rs.getString(4);
            phone=rs.getString(5);
            
            
			
		}%>
		
		
		
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
		
		
					<form id="form" name="form" method="post" action="index.html">
						<h1>User Information</h1>
						
		 
							<div class="col-1">
		 
								<label>User Id  :</label>
		 						<label>Name :</label>
								<label>Designation :</label>
								<label>Phone/Mobile No :</label>
								
								 
							</div>
							<div class="col-2">
		 							<label> <%out.println(username);%> </label>
		 							<label ><%out.println(name);  %></label>
		 							<label ><%out.println(designation);  %></label>
		 							<label><%out.println(phone);  %></label>
		 							
		 						
		 							
		 							
								
								
							</div>
		
		 
					</form>
		 
		</div>
		</div><!--end of main content----> 
		<footer>
				<p>2015 &copy Copyright KNIT | Sultanpur Uttar Pradesh -228118
				<br><br>
				198.168.125
				
				</footer>
				
		</div><!end of main container--->
		
		
		
		
		
		
		
		
		
		
		
		<%
		rs.close();
		ps.close();
		session.invalidate();
		}
		catch(SQLException sqe)
		{
		out.println(sqe);
		} 

	%>
	




</body>
</html>