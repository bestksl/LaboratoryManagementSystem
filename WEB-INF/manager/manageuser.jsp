<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<title>用户管理界面</title>
</head>
<body>
	<h1>用户管理界面</h1>

	<table border=1>
		<tr>
			<th>用户名</th>
			<th>密码</th>
			<th>管理员权限</th>
			<th>修改</th>
			<th>删除</th>
		</tr>
		<s:iterator value="userList" var="user">
			<tr>
				<td><s:property value="#user.name" /></td>
				<td><s:property value="#user.password" /></td>
				<td><s:if test="#user.permission==1">是</s:if>
					<s:else>否</s:else></td>
				<td><a
					href="/LaboratoryManagementSystem/User--toUpdateUser?name=<s:property value="#user.name"/>">修改</a></td>
				<td><a href="/LaboratoryManagementSystem/User--delete?name=<s:property value="#user.name"/>">删除</a></td>
			</tr>
		</s:iterator>
	</table>


	<br />
	<a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页面</a>
</body>
</html>