<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<title>注册界面</title>
</head>
<body>
	<h1>注册界面</h1>
	<form action="/LaboratoryManagementSystem/User--regist" method="post">
		<table border=1>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="user.name"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="user.password"></td>
			</tr>
			<tr>
				<td><input type="reset" value="重置"></td>
				<td><input type="submit" value="注册"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页</a></td>
			</tr>
		</table>
	</form>
	<font color="red"> <s:fielderror />
	</font>
</body>
</html>