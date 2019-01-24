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
</head>

<body>
<div class="title"><h2>硬件登记</h2></div>
<form action="/LaboratoryManagementSystem/Hardware--add" method="post">
<div class="main">
	<p class="short-input ue-clear">
    	<label>设备名称：</label>
        <input type="text" placeholder="设备名称" name="hardware.name" />
    </p>
    <p class="long-input ue-clear">
    	<label>类型：</label>
        <input type="text" placeholder="类型" name="hardware.type"/>
    </p>
    <p class="long-input ue-clear">
    	<label>功能：</label>
        <input type="text" placeholder="功能" name="hardware.function"/>
    </p>
    <p class="short-input ue-clear">
    	<label>购买时间：</label>
        <input type="text" name="hardware.bytime"
						onClick="WdatePicker()" />
    </p>
    <p class="long-input ue-clear">
    	<label>数量：</label>
        <input type="text" placeholder="数量" name="hardware.number"/>
    </p>
    <p class="short-input ue-clear">
    	<label>位置：</label>
        <input type="text" placeholder="位置" name="hardware.addr"/>
    </p>
    <p class="short-input ue-clear">
    	<label>简介：</label>
        <textarea placeholder="请输入内容" name="hardware.info"></textarea>
    </p>
    <font color="red"><s:fielderror /></font>

</div>
	<input type="reset" value="重置">
	<input type="submit" class="confirm" value="添加">

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