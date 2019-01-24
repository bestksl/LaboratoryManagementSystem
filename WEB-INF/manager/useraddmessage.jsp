<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-reg.css" />
<%@taglib uri="/struts-tags" prefix="s"%>
<title>普通用户信息发布页面</title>
</head>

<body>
	<div class="title">
		<h2>普通用户信息发布页面</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Message--add2" method="post">
		<div class="main">
			<p class="short-input ue-clear">
				<label>主题:</label> <input type="text" placeholder="请输入主题"
					name="message.theme" />
			</p>
			<p class="short-input ue-clear">
				<label>内容：</label>
				<textarea placeholder="请输入内容" name="message.message"></textarea>
			</p>
			<font color="red"><s:fielderror /></font>

		</div>
		<input type="reset" value="重置"> <input type="submit"
			value="发布">

	</form>
</body>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
	$(".select-title").on("click", function() {
		$(".select-list").toggle();
		return false;
	});
	$(".select-list").on("click", "li", function() {
		var txt = $(this).text();
		$(".select-title").find("span").text(txt);
	});

	showRemind('input[type=text], textarea', 'placeholder');
</script>
</html>