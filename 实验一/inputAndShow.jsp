<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	输入的三个值a,b,c(代表三角形的三边或梯形的上底、下底和高);
	<form action="inputAndShow.jsp" method="post" name=form>
		<table>
			<tr>
				<td>输入数值a:</td>
				<td><input type="text" name="a"></td>
			</tr>
			<tr>
				<td>输入数值b:</td>
				<td><input type="text" name="b"></td>
			</tr>
			<tr>
				<td>输入数值c:</td>
				<td><input type="text" name="c"></td>
			</tr>
		</table>
		<input type="radio" name="R" value="triangle">代表三角形
		<input type="radio" name="R" value="lader">代表梯形<br>
		<input type="submit" value="提交" name="submit">
	</form>
	<%!
		public double getTrangleArea(double a, double b,double c){
			if(a+b>c&&a+c>b&&b+c>a){
				double p=(a+b+c)/2.0;
				double area=Math.sqrt(p*(p-a)*(p-b)*(p-c));
				return area;
			}
			else
				return -1;
		}
		public double getLaderArea(double above,double buttom,double h){
			double area=(above+buttom)*h/2.0;
			return area;
		}
	 %>
	 <%
	 	String a=request.getParameter("a");
	 	String b=request.getParameter("b");
	 	String c=request.getParameter("c");
	 	String cd=request.getParameter("R");
	 	/* out.println(a);
	 	out.println(b);
	 	out.println(c);
	 	out.println(cd);  */
	 	if(a==null||b==null||c==null){
	 		a="0";
	 		b="0";
	 		c="0";
	 		cd="0";
	 	}
	 	if(a.length()>0&&b.length()>0&&c.length()>0){
	 		try{
	 			double numberA=Double.parseDouble(a);
	 			double numberB=Double.parseDouble(b);
	 			double numberC=Double.parseDouble(c);
	 			double result=0;
	 				/* out.println(numberA);
	 				out.println(numberB);
	 				out.println(numberC);
	 				out.println(result);  */
	 			if(cd.equals("triangle")){
	 				result=getTrangleArea(numberA,numberB,numberC);
	 				%>
	 				三角形的面积:<%=result %>
	 				
	 			<%}
	 			else if(cd.equals("lader")){
	 				result=getLaderArea(numberA,numberB,numberC);%>
	 			梯形的面积:<%=result %>
	 			<%
	 			}
	 			else{
	 				out.println("既不是三角形也不是梯形");
	 			}
	 			}
	 			catch(Exception e){
	 				
	 			}
	 	}
	  %>
</body>
</html>