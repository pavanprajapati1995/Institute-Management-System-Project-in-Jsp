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

	String sql = "insert into result (studentid,cint,cex,cdint,cdex,seint,seex,dbint,dbex,javaint,javaex)"+"values(?,?,?,?,?,?,?,?,?,?,?)";
	
	String studentid=request.getParameter("studentid");
	String cint =request.getParameter("cint");
	String cex = request.getParameter("cex");
	String cdint= request.getParameter("cdint");
	String cdex= request.getParameter("cdex");
	String seint= request.getParameter("seint");
	String seex= request.getParameter("seex");
	String dbint= request.getParameter("dbint");
	String dbex=request.getParameter("dbex");
	String javaint=request.getParameter("javaint");
	String javaex= request.getParameter("javaex");
	
	
	
	if((!(studentid.equals(null) || studentid.equals("")))) 
	{
		try{
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, dbpsw);
			ps = con.prepareStatement(sql);
			ps.setString(1, studentid);
			ps.setString(2, cint);
			ps.setString(3, cex);
			ps.setString(4, cdint);
			ps.setString(5, cdex);
			ps.setString(6, seint);
			ps.setString(7,seex);
			ps.setString(8,dbint);
			ps.setString(9, dbex);
			ps.setString(10, javaint);
			ps.setString(11,javaex);
			
			
			
			int i=ps.executeUpdate();
		
			/*con.commit();*/
			String msg;
			if(i!=0)
			{
				    session.setAttribute("studentid", studentid);
					response.sendRedirect("resultdsply.jsp");
					
					
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