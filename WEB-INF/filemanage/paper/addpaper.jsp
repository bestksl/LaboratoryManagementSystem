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
<title>录入论文信息</title>
</head>

<body>
	<div class="title">
		<h2>录入论文信息</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Paper--add"
		enctype="multipart/form-data" method="post">
		<div class="main">
			<p class="short-input ue-clear">
				<label>论文名称：</label> <input type="text" placeholder="论文名称"
					name="paper.name" />
			</p>
			<p class="long-input ue-clear">
				<label>作者：</label> <input type="text" placeholder="作者"
					name="paper.author" />
			</p>
			<p class="long-input ue-clear">
				<label>指导教师：</label> <input type="text" placeholder="指导教师"
					name="paper.teacher" />
			</p>
			<p class="short-input ue-clear">
				<label>发表日期：</label> <input type="text" name="paper.time"
					onClick="WdatePicker()" />
			</p>
			<div class="short-input select ue-clear">
				<label>论文类型：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="paper.type">
						<option value="类型一">类型1</option>
						<option value="类型一">类型2</option>
						<option value="类型一">类型3</option>
						<option value="类型一">类型4</option>
						<option value="类型一">类型5</option>
					</select>
				</div>
			</div>
			<p class="long-input ue-clear">
				<label>期刊/会议名称：</label> <input type="text" placeholder="期刊/会议名称"
					name="paper.mettingname" />
			</p>
			<p class="long-input ue-clear">
				<label>卷/期：</label> <input type="text" placeholder="卷/期"
					name="paper.juanheqi" />
			</p>
			<p class="long-input ue-clear">
				<label>起始页码：</label> <input type="text" placeholder="起始页码"
					name="paper.qishiyema" />
			</p>
			<p class="long-input ue-clear">
				<label>文章编号：</label> <input type="text" placeholder="文章编号"
					name="paper.wenzhangbianhao" />
			</p>
			<p class="long-input ue-clear">
				<label>检索号：</label> <input type="text" placeholder="检索号"
					name="paper.jiansuohao" />
			</p>
			<p class="long-input ue-clear">
				<label>背景资料：</label> <input type="file" name="file" />
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