<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName=request.getParameter("userName");
		String welcomeStr="��ӭ���ٱ�վ";
		welcomeStr=userName+","+welcomeStr;
		out.print(welcomeStr);
	 %>
</body>
</html>