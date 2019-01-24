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
<title>添加纵向科研信息</title>
</head>

<body>
	<div class="title">
		<h2>添加纵向科研信息</h2>
	</div>
	<form action="/LaboratoryManagementSystem/Zongxiang--add"
		enctype="multipart/form-data" method="post">
		<div class="main">
			<p class="long-input ue-clear">
				<label>>资金来源：</label> <input type="text" placeholder=">资金来源"
					name="zongxiang.fromm" />
			</p>
			<div class="short-input select ue-clear">
				<label>项目类型：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.xmtype">
						<option value="国家级">国家级</option>
						<option value="省级">省级</option>
						<option value="市级">市级</option>
					</select>
				</div>
			</div>
			<div class="short-input select ue-clear">
				<label>研究活动类别：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.hdtype">
						<option value="基础研究">基础研究</option>
						<option value="省级">省级</option>
						<option value="市级">市级</option>
					</select>
				</div>
			</div>
			<div class="short-input select ue-clear">
				<label>所属学科：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.ssxk">
						<option value="电子通信与自动控制技术510">电子通信与自动控制技术510</option>
						<option value="省级">省级</option>
						<option value="市级">市级</option>
					</select>
				</div>
			</div>
			<p class="long-input ue-clear">
				<label>课题名称：</label> <input type="text" placeholder="课题名称"
					name="zongxiang.kcname" />
			</p>
			<p class="long-input ue-clear">
				<label>课题编号：</label> <input type="text" placeholder="课题编号"
					name="zongxiang.number" />
			</p>
			<p class="long-input ue-clear">
				<label>负责人：</label> <input type="text" placeholder="负责人"
					name="zongxiang.person" />
			</p>
			<p class="short-input ue-clear">
				<label>起始日期：</label> <input type="text" name="zongxiang.begin"
					onClick="WdatePicker()" />
			</p>
			<p class="short-input ue-clear">
				<label>截至日期：</label> <input type="text" name="zongxiang.end"
					onClick="WdatePicker()" />
			</p>
			<p class="long-input ue-clear">
				<label>经费(万)：</label> <input type="text" placeholder="经费(万)"
					name="zongxiang.funds" />
			</p>
			<p class="long-input ue-clear">
				<label>实到经费(万)：</label> <input type="text" placeholder="实到经费(万)"
					name="zongxiang.realfunds" />
			</p>
			<div class="short-input select ue-clear">
				<label>组织形式：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.zzxs">
						<option value="牵头单位01">牵头单位01</option>
						<option value="牵头单位02">牵头单位02</option>
						<option value="牵头单位03">牵头单位03</option>
					</select>
				</div>
			</div>
			<div class="short-input select ue-clear">
				<label>合作形式：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.hzxs">
						<option value="独立完成01">独立完成01</option>
						<option value="牵头单位02">牵头单位02</option>
						<option value="牵头单位03">牵头单位03</option>
					</select>
				</div>
			</div>
			<p class="long-input ue-clear">
				<label>课题组成员：</label> <input type="text" placeholder="课题组成员"
					name="zongxiang.ktzcy" />
			</p>
			<p class="long-input ue-clear">
				<label>参与研究生数：</label> <input type="text" placeholder="参与研究生数"
					name="zongxiang.stunumber" />
			</p>
			<p class="long-input ue-clear">
				<label>经费年度拨入支出情况：</label> <input type="text"
					placeholder="经费年度拨入支出情况" name="zongxiang.situation" />
			</p>
			<p class="long-input ue-clear">
				<label>实到经费(万)：</label> <input type="text" placeholder="实到经费(万)"
					name="zongxiang.realfunds" />
			</p>
			<div class="short-input select ue-clear">
				<label>是否结题：</label>
				<div class="select-wrap">
					<select class="select-title ue-clear" name="zongxiang.finish">
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
				</div>
			</div>
			<p class="short-input ue-clear">
				<label>结题时间：</label> <input type="text" name="zongxiang.endtime"
					onClick="WdatePicker()" />
			</p>
			<p class="long-input ue-clear">
				<label>鉴定单位：</label> <input type="text" placeholder="鉴定单位"
					name="zongxiang.cddw" />
			</p>
			<p class="long-input ue-clear">
				<label>成果登记号：</label> <input type="text" placeholder="成果登记号"
					name="zongxiang.cgdjh" />
			</p>
			<p class="short-input ue-clear">
				<label>背景资料：</label> <input type="file" name="file">
			</p>
			<font color="red"><s:fielderror /></font>

		</div>
		<input type="reset" value="重置"> <input type="submit"
			value="添加">

	</form>

	<font color="red"><s:fielderror /></font>
	<br />
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