<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="DoLogin" method="get">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>	
			</tr>
			<tr>
				<td>口令：</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<input type="submit" value="提交">
		<input type="reset" value="重置">
	</form>
</body>
</html>