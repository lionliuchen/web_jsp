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
	输入一个值，输出阶乘结果
	<form action="" method="post">
		<table>
			<tr>
				<td>输入一个整数:</td>
				<td><input type="text" name="a"></td>
			</tr>
		</table>
		<input type="submit" value="提交" name="submit">
	</form>
	<%
		String aa=request.getParameter("a");
		int a;
		if(aa==null){
		
		}
		else{
			a=Integer.parseInt(aa);
			/* try{
				a=Integer.parseInt(aa);
			}catch(Exception e){
				out.println("请输入自然数");
			} */
			out.println("阶乘的结果：");
			 if(a==0){
				out.print("1");
			}
			else{
				int res=1;
				for(int i=1;i<=a;i++){
					res*=i;
				}
				out.print(res);
			} 
		}
	 %>
</body>
</html>