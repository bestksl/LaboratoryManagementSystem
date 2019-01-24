<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-mgt.css" />
<link rel="stylesheet" href="css/WdatePicker.css" />
</head>
<body>
	<div class="title">
		<h2>横向科研管理</h2>
	</div>
	<div class="table-operate ue-clear">
		<a href="/LaboratoryManagementSystem/Hengxiang--toAddHengxiang"
			class="add">添加</a>
	</div>
	<div class="table-box">
		<table>
			<thead>
				<tr>
					<th>项目名称</th>
					<th>合同编号</th>
					<th>负责人</th>
					<th>开始日期</th>
					<th>结束日期</th>
					<th>经费</th>
					<th>课题组成员</th>
					<th>合同方</th>
					<th>是否结题</th>
					<th>经济效益说明</th>
					<th>背景资料</th>
					<th>删除</th>
				</tr>
			</thead>

			<s:iterator value="hengxiangList" var="hengxiang">
				<tr>
					<td><s:property value="#hengxiang.name" /></td>
					<td><s:property value="#hengxiang.number" /></td>
					<td><s:property value="#hengxiang.persion" /></td>
					<td><s:date name="#hengxiang.begintime" format="YY-MM-dd" /></td>
					<td><s:property value="#hengxiang.endtime" /></td>
					<td><s:property value="#hengxiang.funds" /></td>
					<td><s:property value="#hengxiang.members" /></td>
					<td><s:property value="#hengxiang.hetongfang" /></td>
					<td><s:property value="#hengxiang.finish" /></td>
					<td><s:property value="#hengxiang.interprate" /></td>
					<td><s:if test="#hengxiang.filedir==null">没有资料</s:if> <s:else>
							<a
								href="/LaboratoryManagementSystem/FileDownLoad?type=hengxiang&id=<s:property value="#hengxiang.id"/>">下载</a>
						</s:else></td>
					<td><a
						href="/LaboratoryManagementSystem/Hengxiang--delete?id=<s:property value="#hengxiang.id"/>">删除</a></td>
				</tr>
			</s:iterator>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
	$(".select-title").on("click", function() {
		$(".select-list").hide();
		$(this).siblings($(".select-list")).show();
		return false;
	})
	$(".select-list").on(
			"click",
			"li",
			function() {
				var txt = $(this).text();
				$(this).parent($(".select-list")).siblings($(".select-title"))
						.find("span").text(txt);
			})

	$('.pagination').pagination(100, {
		callback : function(page) {
			alert(page);
		},
		display_msg : true,
		setPageNo : true
	});

	$("tbody").find("tr:odd").css("backgroundColor", "#eff6fa");

	showRemind('input[type=text], textarea', 'placeholder');
</script>
</html>
