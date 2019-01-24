<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<%@taglib uri="/struts-tags" prefix="s"%>
<title>信息发布页面面</title>
</head>
<body>

	<h1>发布界面</h1>
	<form action="/LaboratoryManagementSystem/Message--add" method="post">
		主题:<input type="text" name="message.theme"><br /> 内容:<br />
		<textarea name="message.message"> </textarea>
		<br /> <br /> <input type="submit" value="发布">
	</form>
	<font color="red"><s:fielderror /></font>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页面</a>
</body>
</html>