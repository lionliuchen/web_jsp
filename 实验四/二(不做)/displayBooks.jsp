<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DataSource Test</title>
</head>
<body>
	<%
		try{
			Context context=new InitialContext();
			DataSource ds=(DataSource)context.lookup("java:comp/env/jdbc/bookDS");
			Connection conn=ds.getConnection();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from books");
			out.println("<table border=1>");
			out.println("<tr><td>书号</td><td>书名</td><td>作者</td><td>价格</td></tr>");
			while(rs.next()){
				out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)
				+"</td><td>"+rs.getString(3)
				+"</td><td>"+rs.getString(5)+"</td><tr>");
			}
			out.println("</table>");
			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e){
			out.println(e.getMessage());
		}
	 %>
</body>
</html>