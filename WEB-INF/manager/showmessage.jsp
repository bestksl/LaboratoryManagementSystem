<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/base_style.css" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-mgt.css" />
<link rel="stylesheet" href="css/WdatePicker.css" />
<title>查看群邮件</title>
</head>
<body>
	<div class="title">
		<h2>查看群邮件</h2>
	</div>
	<div class="table-operate ue-clear">
		<a href="/LaboratoryManagementSystem/Message--toUserAddMessage"
			class="add">添加</a>
	</div>
	<div class="table-box">
		<table>
			<thead>

				<tr>
					<th>发布人</th>
					<th>主题</th>
					<th colspan="3">发布内容</th>
					<th>发布时间</th>
				</tr>
			</thead>

			<s:iterator value="messageList" var="message">
				<tr>
					<td><s:property value="#message.user.name" /></td>
					<td><s:property value="#message.theme" /></td>
					<td colspan="3"><s:property value="#message.message" /></td>
					<td><s:date name="#message.time" format="YY-MM-dd" /></td>
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