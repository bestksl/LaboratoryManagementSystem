<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<title>书籍管理</title>
</head>
<body>
	<h1>书籍管理</h1>

	<table border=1>
		<tr>
			<th>书籍名称</th>
			<th>购买日期</th>
			<th>数量</th>
			<th>书籍资料</th>
			<th>删除</th>
		</tr>
		<s:iterator value="bookList" var="book">
			<tr>
				<td><s:property value="#book.name" /></td>
				<td><s:date name="#book.bytime" format="YY-MM-dd" /></td>
				<td><s:property value="#book.num" /></td>
				<td><s:if test="#book.addr==null">没有资料</s:if> <s:else>
						<a
							href="/LaboratoryManagementSystem/FileDownLoad?type=book&id=<s:property value="#book.id"/>">下载</a>
					</s:else></td>
				<td><a
					href="/LaboratoryManagementSystem/Book--delete?id=<s:property value="#book.id"/>">删除</a></td>
			</tr>
		</s:iterator>
	</table>
	<a href="/LaboratoryManagementSystem/Book--toAddBook">添加书籍</a>

	<br />
	<a href="/LaboratoryManagementSystem/Message--toMainpage">返回主页面</a>
</body>
</html>
