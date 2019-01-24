<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/login.css" />
<title>实验室信息管理系统</title>
</head>
<body>
	<div id="container">
		<div id="bd">
			<form action="/LaboratoryManagementSystem/User--Login" method="post">
				<div class="login1">
					<div class="login-top">
						<h1 class="logo"></h1>
					</div>
					<div class="login-input">
						<p class="user ue-clear">
							<label>用户名</label> <input type="text" name="user.name" />
						</p>
						<p class="password ue-clear">
							<label>密&nbsp;&nbsp;&nbsp;码</label> <input type="text"
								name="user.password" />
						</p>
						<p class="yzm ue-clear">
							<label>验证码</label> <input type="text" name="securityCode" /><cite><img src="action/SecurityCodeImageAction" /></cite>
						</p>
					</div>
					<div class="login-btn ue-clear">
						<input type="submit" value="登陆" class="btn">
						<div>
							&nbsp;&nbsp;<input type=hidden value=0 name='ismanager'><input
					type=checkbox ' onclick='ismanager.value=this.checked?1:0'>&nbsp;管理员
						</div>
						<font color="red"> <s:fielderror />
						</font>
					</div>
				</div>
			</form>

		</div>
	</div>

	<div id="ft">welcome to www.bestksl.com</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	var height = $(window).height();
	$("#container").height(height);
	$("#bd").css("padding-top", height / 2 - $("#bd").height() / 2);

	$(window).resize(
			function() {
				var height = $(window).height();
				$("#bd").css("padding-top",
						$(window).height() / 2 - $("#bd").height() / 2);
				$("#container").height(height);

			});

	$('#remember').focus(function() {
		$(this).blur();
	});

	$('#remember').click(function(e) {
		checkRemember($(this));
	});

	function checkRemember($this) {
		if (!-[ 1, ]) {
			if ($this.prop("checked")) {
				$this.parent().addClass('checked');
			} else {
				$this.parent().removeClass('checked');
			}
		}
	}
</script>
</html>