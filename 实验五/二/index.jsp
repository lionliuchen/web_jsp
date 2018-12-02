<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆界面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<!-- 提交请求参数的表单 -->
	<form action="login.action" method="post">
		<table align="center">
			<caption>
				<h3>用户登录</h3>
			</caption>
			<tr>
				<!-- 用户名的表单域 -->
				<td>用户名：<input type="text" name="username" />
				</td>
			</tr>
			<tr>
				<!-- 密码的表单域 -->
				<td>密&nbsp;&nbsp;码：<input type="password" name="password" />
				</td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="登录" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
