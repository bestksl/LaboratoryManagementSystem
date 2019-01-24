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
<title>添加软件信息</title>
</head>
<body>

	<div class="title">
		<h2>添加软件信息</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Software--add"
		enctype="multipart/form-data" method="post">
		<div class="main">
			<p class="short-input ue-clear">
				<label>软件名称：</label> <input type="text" placeholder="软件名称"
					name="software.name" />
			</p>
			<p class="long-input ue-clear">
				<label>作者：</label> <input type="text" placeholder="作者"
					name="software.author" />
			</p>
			<p class="long-input ue-clear">
				<label>类型：</label> <input type="text" placeholder="类型"
					name="software.type" />
			</p>
			<p class="long-input ue-clear">
				<label>功能：</label> <input type="text" placeholder="功能"
					name="software.function" />
			</p>
			<p class="short-input ue-clear">
				<label>简介：</label>
				<textarea placeholder="请输入内容" name="software.info"></textarea>
			</p>
			<p class="short-input ue-clear">
				<label>时间：</label> <input type="text" name="software.time"
					onClick="WdatePicker()" />
			</p>
			<p class="short-input ue-clear">
				<label>文件上传：</label> <input type="file" name="file">
			</p>

			<font color="red"><s:fielderror /></font>

		</div>
		<input type="reset" value="重置"> <input type="submit"
			class="confirm" value="添加">

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