<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Database Access Test</title>
</head>
<body>
	<%
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String dburl="jdbc:mysql://localhost:3306/bookstore";
			Connection conn=DriverManager.getConnection(dburl,"root","154704");
			Statement stmt=conn.createStatement();
			String sql="select * from books";
			ResultSet rs=stmt.executeQuery(sql);
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