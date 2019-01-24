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
		<h2>论文管理</h2>
	</div>
	<div class="table-operate ue-clear">
		<a href="/LaboratoryManagementSystem/Paper--toAddPaper" class="add">添加</a>
	<form action="/LaboratoryManagementSystem/Paper--find"
		enctype="multipart/form-data" method="post">
		论文名称 <input type="text" name="paper.name"> <input type="submit"
			value="搜索">
	</form>
	</div>
	<div class="table-box">
		<table>
			<thead>
				<tr>
					<th>论文名称</th>
					<th>作者</th>
					<th>指导教师</th>
					<th>发表日期</th>
					<th>论文类型</th>
					<th>期刊/会议名称</th>
					<th>卷/期</th>
					<th>起始页码</th>
					<th>文章编号</th>
					<th>检索号</th>
					<th>背景资料</th>
					<th>删除</th>
				</tr>
			</thead>
			<s:iterator value="paperList" var="paper">
				<tr>
					<td><s:property value="#paper.name" /></td>
					<td><s:property value="#paper.author" /></td>
					<td><s:property value="#paper.teacher" /></td>
					<td><s:date name="#paper.time" format="YY-MM-dd" /></td>
					<td><s:property value="#paper.type" /></td>
					<td><s:property value="#paper.mettingname" /></td>
					<td><s:property value="#paper.juanheqi" /></td>
					<td><s:property value="#paper.qishiyema" /></td>
					<td><s:property value="#paper.wenzhangbianhao" /></td>
					<td><s:property value="#paper.jiansuohao" /></td>
					<td><s:if test="#paper.filedir==null">没有资料</s:if> <s:else>
							<a
								href="/LaboratoryManagementSystem/FileDownLoad?type=paper&id=<s:property value="#paper.id"/>">下载</a>
						</s:else></td>
					<td><a
						href="/LaboratoryManagementSystem/Paper--delete?id=<s:property value="#paper.id"/>">删除</a></td>
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
