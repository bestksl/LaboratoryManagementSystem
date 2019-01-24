<%@page import="com.bestksl.domain.Message"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<title>主页面</title>
</head>
<body>
	<h3>
		你好
		<s:property value="#session.user.name" />
	</h3>
	<a href="/LaboratoryManagementSystem/Hardware--toHardware">硬件设备管理</a>
	<br />
	<a href="/LaboratoryManagementSystem/Software--toSoftware">软件设备管理</a>
	<br />
	<a href="/LaboratoryManagementSystem/FileManage--toFileManage">文件管理</a>
	<br />
	<br />
	<a href="/LaboratoryManagementSystem/User--exit">安全退出</a>
	<br />
	<table border=1>
		<tr>
			<th>发布人</th>
			<th>主题</th>
			<th colspan="3">发布内容</th>
			<th>发布时间</th>
		</tr>

		<s:iterator var="message" value="messageList">
			<tr>
				<td><s:property value="#message.user.name" /></td>
				<td><s:property value="#message.theme" /></td>
				<td colspan="3"><s:property value="#message.message" /></td>
				<td><s:date name="#message.time" format="YY-MM-dd-HH" /></td>
			</tr>
		</s:iterator>

	</table>
	<s:debug></s:debug>
</body>
</html>