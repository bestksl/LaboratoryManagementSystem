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
<title>成果管理</title>
</head>
<body>
	<div class="title">
		<h2>成果管理</h2>
	</div>
	<div class="table-operate ue-clear">
		<a href="/LaboratoryManagementSystem/Achievement--toAddAchievement"
			class="add">添加</a>
	</div>
	<div class="table-box">
		<table>
			<thead>
				<tr>
			<th>成果名称</th>
			<th>日期</th>
			<th>简介</th>
			<th>成果资料</th>
			<th>删除</th>
				</tr>
			</thead>
			<s:iterator value="achievementList" var="achievement">
			<tr>
				<td><s:property value="#achievement.name" /></td>
				<td><s:date name="#achievement.time" format="YY-MM-dd" /></td>
				<td><s:property value="#achievement.introduce" /></td>
				<td><s:if test="#achievement.filedir==null">没有资料</s:if> <s:else>
						<a
							href="/LaboratoryManagementSystem/FileDownLoad?type=achievement&id=<s:property value="#achievement.id"/>">下载</a>
					</s:else></td>
				<td><a
					href="/LaboratoryManagementSystem/Achievement--delete?id=<s:property value="#achievement.id"/>">删除</a></td>
			</tr>
			</s:iterator>
			</tbody>
		</table>
	</div>
	<br />
</body>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
$(".select-title").on("click",function(){
	$(".select-list").hide();
	$(this).siblings($(".select-list")).show();
	return false;
})
$(".select-list").on("click","li",function(){
	var txt = $(this).text();
	$(this).parent($(".select-list")).siblings($(".select-title")).find("span").text(txt);
})

$('.pagination').pagination(100,{
	callback: function(page){
		alert(page);	
	},
	display_msg: true,
	setPageNo: true
});

$("tbody").find("tr:odd").css("backgroundColor","#eff6fa");

showRemind('input[type=text], textarea','placeholder');
</script>
</html>
