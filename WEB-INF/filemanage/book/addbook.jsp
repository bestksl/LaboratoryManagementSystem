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
<title>添加书籍信息</title>
</head>
<body>
	<h1>添加书籍信息</h1>
	<form action="/LaboratoryManagementSystem/Book--add"
		enctype="multipart/form-data" method="post">
		<table border=1>
			<tr>
				<td>书籍名称</td>
				<td colspan="2"><input type="text" name="book.name"></td>
			</tr>
			<tr>
				<td>购买日期</td>
				<td colspan="2"><input type="text" name="book.bytime"
					onClick="WdatePicker()"></td>
			</tr>
			<tr>
				<td>数量</td>
				<td colspan="2"><input type="text" name="book.num"></td>
			</tr>
			<tr>
				<td>书籍资料</td>
				<td colspan="1"><input type="file" name="file"></td>
			</tr>
			<tr>
				<td><input type="reset" value="重置"></td>
				<td colspan="2"><input type="submit" value="添加"></td>
			</tr>
		</table>
	</form>
	<font color="red"><s:fielderror /></font>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toMainpage">返回主页面</a>
</body>
</html>