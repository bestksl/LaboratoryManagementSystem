<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" type="text/javascript"
	src="/LaboratoryManagementSystem/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-reg.css" />
<title>添加专利信息</title>
</head>
<body>

	<div class="title">
		<h2>添加专利信息</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Patent--add"  enctype="multipart/form-data" method="post">
		<div class="main">
			<p class="short-input ue-clear">
				<label>专利名称：</label> <input type="text" placeholder="专利名称"
					name="patent.name" />
			</p>
			<p class="long-input ue-clear">
				<label>作者：</label> <input type="text" placeholder="作者"
					name="patent.author" />
			</p>
			<p class="long-input ue-clear">
				<label>发表日期：</label> <input type="text" name="patent.time"
					onClick="WdatePicker()">
			</p>
			<p class="long-input ue-clear">
				<label>专利类型：</label> <input type="text" placeholder="专利类型"
					name="patent.type" />
			</p>
			<p class="long-input ue-clear">
				<label>专利编号：</label> <input type="text" placeholder="专利编号"
					name="patent.number" />
			</p>
			<p class="short-input ue-clear">
				<label>专利资料：</label> <input type="file" name="file">
			</p>
			<font color="red"><s:fielderror /></font>

		</div>
		<input type="reset" value="重置"> <input type="submit"
			value="添加">

	</form>
	<font color="red"><s:fielderror /></font>
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