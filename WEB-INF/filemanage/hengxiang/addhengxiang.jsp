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
<title>添加横向科研信息</title>
</head>

<body>
	<div class="title">
		<h2>添加横向科研信息</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Hengxiang--add"
		enctype="multipart/form-data" method="post">
		<div class="main">
			<p class="short-input ue-clear">
				<label>项目名称：</label> <input type="text" placeholder="项目名称"
					name="hengxiang.name" />
			</p>
			<p class="long-input ue-clear">
				<label>合同编号：</label> <input type="text" placeholder="合同编号"
					name="hengxiang.number" />
			</p>
			<p class="long-input ue-clear">
				<label>负责人：</label> <input type="text" placeholder="负责人"
					name="hengxiang.persion" />
			</p>
			<p class="short-input ue-clear">
				<label>开始日期：</label> <input type="text" name="hengxiang.begintime"
					onClick="WdatePicker()" />
			</p>
			<p class="short-input ue-clear">
				<label>结束日期：</label> <input type="text" name="hengxiang.endtime"
					onClick="WdatePicker()" />
			</p>
			<p class="long-input ue-clear">
				<label>经费(万元)：</label> <input type="text" placeholder="经费(万元)"
					name="hengxiang.funds" />
			</p>
			<p class="short-input ue-clear">
				<label>课题组成员：</label>
				<textarea placeholder="请输入内容" name="hengxiang.members"></textarea>
			</p>
			<p class="long-input ue-clear">
				<label>合同方：</label> <input type="text" placeholder="合同方"
					name="hengxiang.hetongfang" />
			</p>
			<div class="short-input select ue-clear">
				<label>是否结题：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear"   name="hengxiang.finish" >
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
				</div>
			</div>
			<p class="short-input ue-clear">
				<label>经济效益说明：</label>
				<textarea placeholder="请输入内容" name="hengxiang.interprate"></textarea>
			</p>
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