<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration</title>
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

	String sql = "insert into staff (firstname,lastname,fathername,address,gender,dateofbirth,dateofjoin,phoneno,email,qualification,experience,caste,religion,nation,loginid)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	String firstname=request.getParameter("firstname");
	String lastname =request.getParameter("lastname");
	String fathername=request.getParameter("fathername");
	String address=request.getParameter("address");
	String gender=request.getParameter("gender");
	String dateofbirth =request.getParameter("dateofbirth");
	String dateofjoin=request.getParameter("dateofjoin");
	String phoneno=request.getParameter("phoneno");
	String email=request.getParameter("email");
	String qualification=request.getParameter("qualification");
	String experience=request.getParameter("experience");
	String caste=request.getParameter("caste");
	String religion=request.getParameter("religion");
	String nation=request.getParameter("nation");
	String loginid=request.getParameter("loginid");
	/*String image=request.getParameter("image");*/
	
	
	
	if((!(firstname.equals(null) || firstname.equals("")) && !(lastname.equals(null) || lastname.equals("")) &&!(loginid.equals(null) || loginid.equals("")))&& !gender.equals("select"))
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
			ps.setString(8, phoneno);
			ps.setString(9, email);
			ps.setString(10, qualification);
			ps.setString(11,experience );
			ps.setString(12, caste);
			ps.setString(13, religion);
			ps.setString(14, nation);
			ps.setString(15,loginid );
			/*ps.setString(14, image);*/
			
			int i=ps.executeUpdate();
			//rs=ps.executeQuery(sql);
			/*con.commit();*/
			String msg;
			
		/*	if(rs.next())
			{ 
			firstname = rs.getString("firstname");
			lastname = rs.getString("lastname");
			loginid = rs.getString("loginid");
			if(firstname.equals(firstname) && lastname.equals(lastname) && loginid.equals(loginid))
			{
			session.setAttribute("firstname",firstname);
			session.setAttribute("loginid", loginid); 
			response.sendRedirect("welcome.jsp"); 
			} 
			}*/
				
			if(i!=0)
			{
					session.setAttribute("loginid",loginid);
					response.sendRedirect("staffdsply.jsp");
					
					
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