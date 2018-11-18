<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Forward Test</title>
</head>
<body>
	<jsp:forward page="forwardTo.jsp">
		<jsp:param value="Hacker" name="userName"/>
	</jsp:forward>
</body>
</html>