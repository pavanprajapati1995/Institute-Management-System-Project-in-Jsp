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
	String employeeid=null,firstname=null,lastname=null,fathername=null,address=null,gender=null,dateofbirth=null,dateofjoin=null;
	String phoneno=null,email=null,qualification=null,experience=null,caste=null,religion=null,nation=null,loginid=null;
	String s = (String) session.getAttribute("loginid");
	Connection con= null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/insmgmt";
	String user = "root";
	String dbpsw = "prabhu123";
	String sql = "select *from staff where loginid='"+ s+"'";
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		
		rs = ps.executeQuery();
		while(rs.next())
		{
			employeeid=rs.getString(1);
			firstname=rs.getString(2);
			lastname=rs.getString(3);
            fathername=rs.getString(4);
            address=rs.getString(5);
            gender=rs.getString(6);
            dateofbirth=rs.getString(7);
            dateofjoin=rs.getString(8);
            phoneno=rs.getString(9);
            email=rs.getString(10);
            qualification=rs.getString(11);
            experience=rs.getString(12);
            caste=rs.getString(13);
            religion=rs.getString(14);
            nation=rs.getString(15);
			
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
	<h4 color="red" ><p>Welcome, <%=session.getAttribute("loginid")%> </p></h4><br>
	<p><a href="logout.jsp">Logout</a>
	<div id="form_wrapper" class="main-form">
					
		
					<form id="form" name="form" method="post" action="index.html">
						<h1>Employee Information</h1>
						
		 
							<div class="col-1">
		 
								<label>Employee Id  :</label>
		 						<label>First Name :</label>
								<label>Last Name :</label>
								<label>Father Name :</label>
								<label > Address :</label>
		 						<label >Gender :</label>
								<label >D.O.B(Date of Birth) :</label>
								<label>Date of Join :</label>
								<label>Phone/Mobile No : </label>
								<label>Email-Id :</label>
								<label>Qualification :</label>
								<label>Experience :</label>
								<label>Caste :</label>
								<label>Religion :</label>
								<label>Nation :</label>
								 
							</div>
							<div class="col-2">
		 							<label> <%out.println(employeeid);%> </label>
		 							<label ><%out.println(firstname);%></label>
		 							<label ><%out.println(lastname);%></label>
		 							<label><%out.println(fathername);%></label>
		 							<label><%out.println(address);%></label>
		 							<label><%out.println(gender);%></label>
		 						
		 							<label ><%out.println(dateofbirth);%></label>
		 							<label ><%out.println(dateofjoin);%></label>
		 							
		 							<label ><%out.println(phoneno);%></label>
		 							
		 							<label ><%out.println(email);%></label>
		 							<label ><%out.println(qualification);%></label>
		 							<label ><%out.println(experience);%></label>
		 							<label ><%out.println(caste); %></label>
		 							<label ><%out.println(religion);  %></label>
		 							<label ><%out.println(nation);  %></label>
		 							
								
								
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
		}
		catch(SQLException sqe)
		{
		out.println(sqe);
		} 

	%>




</body>
</html>