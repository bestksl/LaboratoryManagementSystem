<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<title>管理发布信息</title>
</head>
<body>
	<h1>管理发布信息</h1>

	<table border=1>
		<tr>
			<th>发布人</th>
			<th>主题</th>
			<th colspan="3">发布内容</th>
			<th>发布时间</th>
			<th>修改</th>
			<th>删除</th>
		</tr>
		<s:iterator value="messageList" var="message">
			<tr>
				<td><s:property value="#message.user.name" /></td>
				<td><s:property value="#message.theme" /></td>
				<td colspan="3"><s:property value="#message.message" /></td>
				<td><s:date name="#message.time" format="YY-MM-dd" /></td>
				<td><a
					href="/LaboratoryManagementSystem/Message--toUpdateMessage?id=<s:property value="#message.id"/>">修改</a></td>
				<td><a href="/LaboratoryManagementSystem/Message--delete?id=<s:property value="#message.id"/>">删除</a></td>
			</tr>
		</s:iterator>
	</table>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页面</a>
</body>
</html>