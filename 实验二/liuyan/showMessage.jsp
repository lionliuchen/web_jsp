<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.valuebean.Mytools" %>
<jsp:useBean id="message" class="bean.valuebean.Message" scope="request">
	<jsp:setProperty name="message" property="*"/>
</jsp:useBean>
<%
request.setCharacterEncoding("UTF-8");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示留言信息</title>
</head>
<body>
	留言者：<%=session.getAttribute("name") %><br>
	留言标题：<%=Mytools.change(message.getTitle()) %><br>
	留言内容：<%=Mytools.change(message.getContent()) %>
</body>
</html>