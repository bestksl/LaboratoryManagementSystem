<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css"/>
<%@taglib uri="/struts-tags" prefix="s"%>
<title>信息修改界面</title>
</head>
<body>
	<form action="/LaboratoryManagementSystem/Message--update"
		method="post">
		<input type="hidden" value='<s:property value="message.id"/>'
			name='message.id'> 主题: <input type="text"
			name="message.theme" value='<s:property value="message.theme"/>'>
		<br /> <br /> 内容:
		<textarea name="message.message"><s:property
				value="message.message" /></textarea>
		<br /> <br /> <input type="reset" value="重置"> <input
			type="submit" value="修改">
	</form>
	<br />
	<font color="red"> <s:fielderror />
	</font>
	<br />
	<a href="/LaboratoryManagementSystem/Message--toManagerMainpage">返回主页面</a>
</body>
</html>