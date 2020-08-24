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
	String cint=null,cex=null,cdint=null,cdex=null,seint=null,seex=null,dbint=null,dbex=null,javaint=null,javaex=null;
	String studentid=null,firstname=null,lastname=null,fathername=null,address=null,gender=null,dateofbirth=null,dateofjoin=null;
	String course=null;
	String s = (String) session.getAttribute("studentid");
	
	Connection con= null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/insmgmt";
	String user = "root";
	String dbpsw = "prabhu123";
	//String st="select result.studentid,student.studentid,student.firstname,student.lastname,fathername.student,course.student from result ,student where student.studentid=result.studentid;";
	//String sql = "select *from result where studentid='"+ s+"'";
	String sql = "SELECT student.firstname, student.lastname,student.fathername,student.course, result.studentid,result.cint,result.cex,result.cdint,result.cdex,result.seint,result.seex,result.dbint,result.dbex,result.javaint,result.javaex " +
              "FROM student INNER JOIN result ON student.studentid = result.studentid ";
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		//ps = con.prepareStatement(sq);
		
		rs = ps.executeQuery();
		while(rs.next())
		{
			studentid=rs.getString(5);
			firstname=rs.getString(1);
			lastname=rs.getString(2);
            fathername=rs.getString(3);
            course=rs.getString(4);
            cint =rs.getString(6);
            cex =rs.getString(7);
            cdint =rs.getString(8);
            cdex =rs.getString(9);
            seint =rs.getString(10);
            seex =rs.getString(11);
            dbint =rs.getString(12);
            dbex =rs.getString(13);
            javaint =rs.getString(14);
            javaex =rs.getString(15);
            
          
			
		}
		
		
		String s1=firstname +"   "+ lastname;
		
		int cin=Integer.parseInt(cint);
		int cexr=Integer.parseInt(cex);
		int c=cin+cexr;
		
		int cdin=Integer.parseInt(cdint);
		int cdexr=Integer.parseInt(cdex);
		int cd=cdin+cdexr;
		
		int sein=Integer.parseInt(seint);
		int seexr=Integer.parseInt(seex);
		int se=sein+seexr;
		
		int dbin=Integer.parseInt(dbint);
		int dbexr=Integer.parseInt(dbex);
		int db=dbin+dbexr;
		
		int javain=Integer.parseInt(javaint);
		int javaexr=Integer.parseInt(javaex);
		int java=javain+javaexr;
		int sum=c+cd+se+java+db;
		int avg=sum/5;
		
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
							<li ><a href=#>Change Password </a></li>
							</ul>
						
						
						</li>
						<li ><a href=#>Student</a>
							<ul class="sub">
							<li ><a href="home.jsp">Student Interface </a></li>
							<li ><a href="home.jsp">Profile</a></li>
							<li ><a href=#>Feedback</a></li>
							<li ><a href=#>Change Password</a></li>
							
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
	<h4 color="red" ><p>Welcome, <%=session.getAttribute("username")%> </p></h4><br>
	<p><a href="logout.jsp">Logout</a>
	<div id="form_wrapper" class="main-form">
					
		
					<form id="form" name="form" method="post" action="index.html">
						<table align="center">
						
						<pre>Student Id :   <%out.println(studentid);%></pre>
					    <pre>Student Name:  <%out.println(s1); %></pre>
						
						<tr>
						<td >Subject:</td><td>Internal</td><td>External</td><td>Total</td></tr>
						
						
						
						<tr>
						<td>C Language:</td><td><%out.println(cin);%></td><td><% out.println(cexr);%></td><td><%out.println(c); %></td></tr>
						
						<tr>
						<td >Compiler Design:</td><td><%out.println(cdin); %></td><td><%out.println(cdexr); %></td><td><%out.println(cd); %></td></tr>
						
						
						<tr>
						<td >Software Engineering:</td><td><%out.println(sein); %></td><td><%out.println(seexr); %></td><td><%out.println(se); %></td></tr>
						
						<tr>
						<td >DBMS:</td><td><%out.println(dbin); %></td><td><%out.println(dbexr); %></td><td><%out.println(db);%>;</td></tr>
						<tr>
						<td >Java:</td><td><%out.println(javain); %></td><td><%out.println(javaexr); %></td><td><%out.println(java); %></td></tr>
						
						<tr>
						<td>Grand Total:</td><td></td>
						<td> <%out.println(sum); %></td>
						</tr>
						<tr>
						<td>Percentage :</td><td></td>
						<td><%out.println(avg+"%");%></td>
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