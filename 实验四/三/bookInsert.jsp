<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%
request.setCharacterEncoding("gbk");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Book Insert</title>
</head>
<body>
	<h3>������ͼ����Ϣ��</h3>
	<%
		if(request.getAttribute("result")!=null)
		out.print(request.getAttribute("result"));
	 %>
	 <form action="bookinsert" method="post">
	 	<table>
	 		<tr>
	 			<td>���</td>
	 			<td><input type="text" name="bookid"></td>
	 		</tr>
	 		<tr>
	 			<td>����</td>
	 			<td><input type="text" name="title"></td>
	 		</tr>
	 		<tr>
	 			<td>����</td>
	 			<td><input type="text" name="author"></td>
	 		</tr>
	 		<tr>
	 			<td>������</td>
	 			<td><input type="text" name="publisher"></td>
	 		</tr>
	 		<tr>
	 			<td>����</td>
	 			<td><input type="text" name="price"></td>
	 		</tr>
	 		<tr>
	 			<td><input type="submit" value="ȷ��"></td>
	 			<td><input type="reset" value="����">
	 		</tr>
	 	</table>
	 </form>
</body>
</html>