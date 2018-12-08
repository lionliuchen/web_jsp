<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>阶乘</h1>
	<%
		int i=1,sum=1;
		for(i=1;i<=10;){
			out.println(i+"!"+"="+sum);
			i++;
			sum*=i;
	%>
		<br>
	<%
		}
	%>
</body>
</html>