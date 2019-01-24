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
		<h2>纵向科研管理</h2>
	</div>
	<div class="table-operate ue-clear">
		<a href="/LaboratoryManagementSystem/Zongxiang--toAddZongxiang"
			class="add">添加</a>
	</div>
	<div class="table-box" style="font-size:10px">
		<table>
			<thead>
				<tr>
					<th>资金来源</th>
					<th>项目类型</th>
					<th>研究活动类别</th>
					<th>所属学科</th>
					<th>课题名称</th>
					<th>课题编号</th>
					<th>负责人</th>
					<th>起始日期</th>
					<th>截止日期</th>
					<th>经费(万)</th>
					<th>实到经费(万)</th>
					<th>组织形式</th>
					<th>合作形式</th>
					<th>课题组成员</th>
					<th>参与研究生数</th>
					<th>经费年度拨入支出情况</th>
					<th>是否结题</th>
					<th>结题时间</th>
					<th>鉴定单位</th>
					<th>成果登记号</th>
					<th>背景材料</th>
					<th>删除</th>
				</tr>
			</thead>

			<s:iterator value="zongxiangList" var="zongxiang">
				<tr>
					<td><s:property value="#zongxiang.fromm" /></td>
					<td><s:property value="#zongxiang.xmtype" /></td>
					<td><s:property value="#zongxiang.hdtype" /></td>
					<td><s:property value="#zongxiang.ssxk" /></td>
					<td><s:property value="#zongxiang.kcname" /></td>
					<td><s:property value="#zongxiang.number" /></td>
					<td><s:property value="#zongxiang.person" /></td>
					<td><s:date name="#zongxiang.begin" format="YY-MM-dd" /></td>
					<td><s:date name="#zongxiang.end" format="YY-MM-dd" /></td>
					<td><s:property value="#zongxiang.funds" /></td>
					<td><s:property value="#zongxiang.realfunds" /></td>
					<td><s:property value="#zongxiang.zzxs" /></td>
					<td><s:property value="#zongxiang.hzxs" /></td>
					<td><s:property value="#zongxiang.ktzcy" /></td>
					<td><s:property value="#zongxiang.stunumber" /></td>
					<td><s:property value="#zongxiang.situation" /></td>
					<td><s:property value="#zongxiang.finish" /></td>
					<td><s:date name="#zongxiang.endtime" format="YY-MM-dd" /></td>
					<td><s:property value="#zongxiang.cddw" /></td>
					<td><s:property value="#zongxiang.cgdjh" /></td>
					<td><s:if test="#zongxiang.filedir==null">没有资料</s:if> <s:else>
							<a
								href="/LaboratoryManagementSystem/FileDownLoad?type=zongxiang&id=<s:property value="#zongxiang.id"/>">下载</a>
						</s:else></td>
					<td><a
						href="/LaboratoryManagementSystem/Zongxiang--delete?id=<s:property value="#zongxiang.id"/>">删除</a></td>
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
