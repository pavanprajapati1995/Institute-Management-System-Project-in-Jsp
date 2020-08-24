<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
</head>
<body>
	<%
	Connection con= null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/insmgmt";
	String user = "root";
	String dbpsw = "prabhu123";

	String sql = "insert into student (firstname,lastname,fathername,address,gender,dateofbirth,dateofjoin,course,phoneno,email,caste,religion,nation,loginid)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	String firstname=request.getParameter("firstname");
	String lastname =request.getParameter("lastname");
	String fathername=request.getParameter("fathername");
	String address=request.getParameter("address");
	String gender=request.getParameter("gender");
	String dateofbirth =request.getParameter("dateofbirth");
	String dateofjoin=request.getParameter("dateofjoin");
	String course=request.getParameter("course");
	String phoneno=request.getParameter("phoneno");
	String email=request.getParameter("email");
	String caste=request.getParameter("caste");
	String religion=request.getParameter("religion");
	String nation=request.getParameter("nation");
	String loginid=request.getParameter("loginid");
	/*String image=request.getParameter("image");*/
	
	
	if((!(firstname.equals(null) || firstname.equals("")) && !(lastname.equals(null) || lastname.equals(""))&& !(fathername.equals(null) || fathername.equals(""))&& !(address.equals(null) || address.equals(""))&& !(dateofbirth.equals(null) || dateofbirth.equals(""))&& !(dateofjoin.equals(null) || dateofjoin.equals(""))&& !(phoneno.equals(null) || phoneno.equals(""))) && !gender.equals("select")&& !course.equals("select")&& !caste.equals("select")&& !religion.equals("select"))
	{
		try{
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, dbpsw);
			ps = con.prepareStatement(sql);
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, fathername);
			ps.setString(4, address);
			ps.setString(5, gender);
			ps.setString(6, dateofbirth);
			ps.setString(7, dateofjoin);
			ps.setString(8, course);
			ps.setString(9, phoneno);
			ps.setString(10, email);
			ps.setString(11, caste);
			ps.setString(12, religion);
			ps.setString(13, nation);
			ps.setString(14, loginid);
			/*ps.setString(14, image);*/
			
			int i=ps.executeUpdate();
		
			/*con.commit();*/
			String msg;
			if(i!=0)
			{
					
					response.sendRedirect("studsply.jsp");
					
					
			}
			else{
				msg="data not inserted successfully";
			 	out.println("<font size='6' color=blue>" + msg + "</font>");
				response.sendRedirect("error.jsp");}
			/*rs.close();*/
			ps.close();
			}
		catch(SQLException sqe)
		{
		out.println(sqe);
		}
	}
	
	%>
</body>
</html>