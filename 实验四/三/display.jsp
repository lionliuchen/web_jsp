<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<<jsp:useBean id="book" class="com.beans.BookBean" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
	��ţ�<jsp:getProperty property="bookid" name="book"/>
	������<jsp:getProperty property="title" name="book"/>
	���ߣ�<jsp:getProperty property="author" name="book"/>
	�����磺<jsp:getProperty property="publisher" name="book"/>
	�۸�<jsp:getProperty property="price" name="book"/>
</body>
</html>