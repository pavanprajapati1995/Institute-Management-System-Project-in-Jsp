<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration:</title>
<link rel="stylesheet" href="main.css"/>
<script language="javascript" src="validation.js">
</script>
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
	<p>Welcome, <%=session.getAttribute("username")%></p>
						<p><a href="logout.jsp">Logout</a>
	<div  id="form_wrapper" class="main-form">
	
	<form id="form" name="form1"  onSubmit="return valid_form(this);" method="post" action="reg1.jsp">
	
		<h2 style="color:brown">Student Registration From</h2>
		<table  align="center">
		<tr>
		<td>Enter First Name :</td>
		<td><input type="text" name="firstname"/></td>
		</tr>
		
		<tr>
		<td>Enter Last Name :</td>
		<td><input type="text" name="lastname"/></td>
		</tr>
		<tr>
		<td>Enter Your Fathers Name :</td>
		<td><input type="text" name="fathername"/></td>
		</tr>
		
		<tr>
		<td>Address :</td>
		<td> <textarea name="address"></textarea></td>
		</tr>
		
		<tr>
		<td>Gender :</td>
		<td> <select name="gender">
		<option value="select">select</option>
		<option value="Male">Male</option>
		<option value="Female">Female</option>
		</select>
		</td>
		</tr>
		
		<tr>
		<td>Date Of Birth : </td>
		<td>
		<input type="text" name="dateofbirth"  >
		</td>
		</tr>
		
		<tr>
		<td>Date Of Join : </td>
		<td>
		<input type="text" name="dateofjoin"  >
		</td>
		</tr>
		
		<tr>
		<td>Course : </td>
		<td>
		<select name="course">
		<option value="select">Select</option>
		<option value="CS">CS</option>
		<option value="IT">IT</option>
		<option value="MCA">MCA</option>
		</select>
		</td>
		</tr>
		
		<tr>
		<td>Phone No : </td>
		<td>
		<input type="text" name="phoneno"  >
		</td>
		</tr>
		<tr>
		<td>Email-id : </td>
		<td>
		<input type="text" name="email"  >
		</td>
		</tr>
		
		<tr>
		<td>Caste : </td>
		<td>
		<select name="caste"  >
		<option value="select">select</option>
		<option value="GEN">GEN</option>
		<option value="OBC">OBC</option>
		<option value="SC">SC</option>
		<option value="ST">ST</option>
		</select>
		</td>
		
		<tr>
		<td>Religion : </td>
		<td>
		<select name="religion">
		<option value="select">select</option>
		<option value="Hindu">Hindu</option>
		<option value="Other">Other</option>
		</select>
		</td>
		</tr>
		
		<tr>
		<td>Nation : </td>
		<td>
		<input type="text" name="nation"  >
		</td>
		</tr>
		
		<tr>
		<td>LogIn Id: </td>
		<td>
		<input type="text" name="loginid" value=<%=session.getAttribute("username") %> >
		</td>
		</tr>
		<tr>
		<td>Designation  : </td>
		<td>
		<input type="text" name="designation"  >
		</td>
		</tr>
		
		<tr>
		<td>Password: </td>
		<td>
		<input type="text" name="password"  >
		</td>
		</tr>
		<tr>
		<td ><strong>Image :</strong> </td>
		
          <td><input type="file" name="image"></td>
        </tr>
		
		
		<tr>
		<td>
		<input type="submit" name="Submit"value="Submit">
				</td>
				
		<td>
		<input type="submit" value="Cancel">
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