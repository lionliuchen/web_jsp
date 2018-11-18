<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%!int count = 0;
	String dbPath;

	public void jspInit() {
		try {
			dbPath = getServletContext().getRealPath("/WEB-INF/counter.db");
			FileInputStream fis = new FileInputStream(dbPath);
			DataInputStream dis = new DataInputStream(fis);
			count = dis.readInt();
			dis.close();
		} catch (Exception e) {
			log("Error loading persistent counter", e);
		}
	}%>
<%--下面是向浏览器输出的主要内容，
	它将成为产生的_jspService()方法的一部分
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%count++; %>
	Welcome! You are <%=count %>th vistor(s);
</body>
</html>
<%!public void jspDestory(){
	try{
		FileOutputStream fos=new FileOutputStream(dbPath);
		DataOutputStream dos=new DataOutputStream(fos);
		dos.write(count);
		dos.close();
	}catch(Exception e){
		log("Error storing persistent counter",e);
	}
}

%>