<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="com.beans.UserBean" %>
<%
request.setCharacterEncoding("gbk");
 %>
<jsp:useBean id="user" class="com.beans.UserBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
	UserName:<jsp:getProperty property="username" name="user"/><br>
	Password:<jsp:getProperty property="password" name="user"/><br>
	Email:<jsp:getProperty property="email" name="user"/><br>
</body>
</html>