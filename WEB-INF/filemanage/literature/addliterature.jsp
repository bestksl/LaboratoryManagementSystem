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
<title>添加文献</title>
</head>

<body>
<div class="title"><h2>添加文献</h2></div>
<form action="/LaboratoryManagementSystem/Literature--add" enctype="multipart/form-data" method="post">
<div class="main">
	<p class="short-input ue-clear">
    	<label>文献名称：</label>
        <input type="text" placeholder="文献名称" name="literature.name" />
    </p>
    <p class="long-input ue-clear">
    	<label>作者：</label>
        <input type="text" placeholder="作者" name="literature.author"/>
    </p>
    <p class="long-input ue-clear">
    	<label>来源：</label>
        <input type="text" placeholder="来源" name="literature.from_"/>
    </p>
    <p class="long-input ue-clear">
    	<label>数量：</label>
        <input type="text" placeholder="数量" name="literature.num"/>
    </p>
    <p class="short-input ue-clear">
    	<label>文献资料：</label>
        <input type="file" name="file">
    </p>
    <font color="red"><s:fielderror /></font>

</div>
        <input type="reset" value="重置">
		<input type="submit" value="添加">

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