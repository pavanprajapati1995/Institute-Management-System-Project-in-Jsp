<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="reg1.jsp">
		<center><h2 style="color:brown">Student Seating Plan</h2></center>
		<table  align="center">
		<tr>
		<td>Room No :</td>
		<td><input type="text" name="roomnumber"/></td>
		</tr>
		
		<tr>
		<td>Enter Student Range :</td>
		<td><input type="text" name="sturange"/></td>
		</tr>
		<tr>
		<td>Branch  :</td>
		<td><select>
		<option>select</option>
		<option value="MCA">MCA</option>
		<option value="CS">CS</option>
		<option value="IT">IT</option>
		</select></td>
		</tr>
	
		</table><br>
		</form>
</body>
</html>