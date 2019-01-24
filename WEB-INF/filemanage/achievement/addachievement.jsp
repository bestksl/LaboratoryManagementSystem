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
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-reg.css" />
<title>添加成果</title>
</head>

<body>
<div class="title"><h2>添加成果</h2></div>
<form action="/LaboratoryManagementSystem/Achievement--add" enctype="multipart/form-data" method="post">
<div class="main">
	<p class="short-input ue-clear">
    	<label>成果名称：</label>
        <input type="text" placeholder="成果名称" name="achievement.name" />
    </p>
    <p class="long-input ue-clear">
    	<label>日期：</label>
        <input type="text" name="achievement.time"
					onClick="WdatePicker()">
    </p>
        <p class="short-input ue-clear">
    	<label>简介：</label>
        <textarea placeholder="请输入内容" name="achievement.introduce"></textarea>
    </p>
    <p class="short-input ue-clear">
    	<label>成果资料：</label>
        <input type="file" name="file">
    </p>
    <font color="red"><s:fielderror /></font>

</div>
        <input type="reset" value="重置">
		<input type="submit" value="添加">

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