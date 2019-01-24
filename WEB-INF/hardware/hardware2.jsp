<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-mgt.css" />
<link rel="stylesheet" href="css/WdatePicker.css" />
<title>硬件设备管理</title>
</head>
<body>
	<h1>硬件设备管理</h1>

	<table border=1>
		<tr>
			<th>设备名称</th>
			<th>类型</th>
			<th>功能</th>
			<th>信息</th>
			<th>购买时间</th>
			<th>数量</th>
			<th>位置</th>
			<th>修改</th>
			<th>删除</th>
		</tr>
		<s:iterator value="hardwareList" var="hardware">
			<tr>
				<td><s:property value="#hardware.name" /></td>
				<td><s:property value="#hardware.type" /></td>
				<td><s:property value="#hardware.function" /></td>
				<td><s:property value="#hardware.info" /></td>
				<td><s:date name="#hardware.bytime" format="YY-MM-dd" /></td>
				<td><s:property value="#hardware.number" /></td>
				<td><s:property value="#hardware.addr" /></td>
				<td><a
					href="/LaboratoryManagementSystem/Hardware--toUpdateHardware?id=<s:property value="#hardware.id"/>">修改</a></td>
				<td><a
					href="/LaboratoryManagementSystem/Hardware--delete?id=<s:property value="#hardware.id"/>">删除</a></td>
			</tr>
		</s:iterator>
	</table>
	<a href="/LaboratoryManagementSystem/Hardware--toAddHardware">添加硬件</a>

	<br />
	<a href="/LaboratoryManagementSystem/Message--toMainpage">返回主页面</a>
</body>
</html>
