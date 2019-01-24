<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<title>管理员主页面</title>
</head>
<body>
	<h1>管理员主页面</h1>
	<h3>
		你好
		<s:property value="#session.user.name" />
	</h3>
	<a href="/LaboratoryManagementSystem/Message--toAddMessage">实验室信息发布</a>
	<br />
	<a href="/LaboratoryManagementSystem/User--toManageUser">管理用户</a>
	<br />
	<a href="/LaboratoryManagementSystem/User--toRegist">新增用户</a>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toManageMessage">管理发布信息</a>
	<br />
	<a href="/LaboratoryManagementSystem/User--exit">安全退出</a>
</body>
</html>