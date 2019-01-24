<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<%@taglib uri="/struts-tags" prefix="s"%>
<title>用户修改界面</title>
</head>
<body>
	<h1>
		您要修改的用户为:
		<s:property value="user.name" />
	</h1>

	<form action="/LaboratoryManagementSystem/User--update" method="post">
		<input type="hidden" value='<s:property value="user.name"/>'
			name='user.name'> <br /> <br />用户新密码<input
			type="text"  name="user.password" /> <br />
		<br /> 管理员权限: <input type=hidden value=0 name='ismanager'><input
			type=checkbox ' onclick='ismanager.value=this.checked?1:0'><br />
		<br /> <input type="reset" value="重置"> <input type="submit"
			value="修改">
	</form>
	<br />
	<font color="red"> <s:fielderror />
	</font>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页面</a>
</body>
</html>