<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" type="text/javascript"
	src="/LaboratoryManagementSystem/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<title>修改硬件信息</title>
</head>
<body>
	<h1>修改硬件信息</h1>
	<form action="/LaboratoryManagementSystem/Hardware--update" method="post">
	<input type="hidden" value='<s:property value="hardware.id"/>'
			name='hardware.id'>
		<table border=1>
		
			<tr>
				<td>设备名称</td>
				<td colspan="2"><input type="text" name="hardware.name"
					value='<s:property value="hardware.name" />'></td>
			</tr>
			<tr>
				<td>类型</td>
				<td colspan="2"><input type="text" name="hardware.type"
					value='<s:property value="hardware.type" />'></td>
			</tr>
			<tr>
				<td>功能</td>
				<td colspan="2"><input type="text" name="hardware.function"
					value='<s:property value="hardware.function" />'></td>
			</tr>
			<tr>
				<td>简介</td>
				<td colspan="2"><input type="text" name="hardware.info"
					value='<s:property value="hardware.info" />'></td>
			</tr>
			<tr>
				<td>购买时间</td>
				<td colspan="2"><input type="text" name="hardware.bytime"
					onClick="WdatePicker()"
					value='<s:date name="#hardware.bytime" format="YY-MM-dd" />'></td>
			</tr>
			<tr>
				<td>数量</td>
				<td colspan="2"><input type="text" name="hardware.number"
					value='<s:property value="hardware.number" />'></td>
			</tr>
			<tr>
				<td>位置</td>
				<td colspan="2"><input type="text" name="hardware.addr"
					value='<s:property value="hardware.addr" />'></td>
			</tr>
			<tr>
				<td><input type="reset" value="重置"></td>
				<td colspan="2"><input type="submit" value="修改"></td>
			</tr>
		</table>
	</form>
	<font color="red"><s:fielderror /></font>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toMainpage">返回主页面</a>
</body>
</html>