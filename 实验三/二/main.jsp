<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%
request.setCharacterEncoding("gbk");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>New Century Web Bookstore</title>
</head>
<body bgcolor="#FFFFFF">
	<jsp:include page="header.html" flush="true"></jsp:include>
	<table border="0" cellspacing="5" cellpadding="5" width="100%">
		<tr>
			<td>
				<p align="center"><b>欢迎光临新世纪网上书店！</b></p>
			</td>
		</tr>
		<tr>
			<td>
				<p align="center"><b><a href="/bookstore/catalog">开始购买图书</a></b></p>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>