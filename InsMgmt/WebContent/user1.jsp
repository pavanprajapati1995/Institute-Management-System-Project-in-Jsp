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

	String sql = "insert into users (username,password,designation,name,phone)"+"values(?,?,?,?,?)";
	
	String name=request.getParameter("name");
	String username =request.getParameter("username");
	String password=request.getParameter("password");
	String designation=request.getParameter("designation");
	String phone=request.getParameter("phone");
	
	
	
	if((!(username.equals(null) || username.equals("")) && !(name.equals(null) || name.equals(""))) && !designation.equals("select"))
	{
		try{
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, dbpsw);
			ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, designation);
			ps.setString(4, name);
			ps.setString(5, phone);
			
			
			int i=ps.executeUpdate();
		
			/*con.commit();*/
			String msg;
			if(i!=0)
			{
				    session.setAttribute("username", username);
					response.sendRedirect("usrdsply.jsp");
					
					
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