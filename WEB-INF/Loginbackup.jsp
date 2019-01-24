<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:property value="string" /></title>
</head>
<body>
	<h1>登陆界面</h1>
	<form action="/LaboratoryManagementSystem/User--Login" method="post">
		<table border=1>
			<tr>
				<td>用户名:</td>
				<td colspan="2"><input type="text" name="user.name"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td colspan="2"><input type="password" name="user.password"></td>
			</tr>
			<tr>
				<td><input type="reset" value="重置"></td>
				<td colspan="2"><input type="submit" value="登陆"></td>
			</tr>
			<tr>
				<td>管理员<input type=hidden value=0 name='ismanager'><input
					type=checkbox ' onclick='ismanager.value=this.checked?1:0'></td>
				<td colspan="2"><a
					href="/LaboratoryManagementSystem/User--toRegist">点击注册</a></td>
			</tr>
		</table>
	</form>
	<font color="red"> <s:fielderror />
	</font>
</body>
</html>