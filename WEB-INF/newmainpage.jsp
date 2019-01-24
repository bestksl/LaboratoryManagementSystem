<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.dialog.css" />
<link rel="stylesheet" href="css/index.css" />

<title>实验室信息管理系统</title>
</head>

<body>
<div id="container">
	<div id="hd">
    	<div class="hd-wrap ue-clear">
        	<div class="top-light"></div>
            <h1 class="logo"></h1>
            <div class="login-info ue-clear">
                <div class="welcome ue-clear"><span>你好,   </span><a href="javascript:;" class="user-name"><s:property value="#session.user.name" /></a></div>
               <div class="login-msg ue-clear">
                    <a href="/LaboratoryManagementSystem/Message--toShowMessage" target="mainframe" class="msg-txt">消息</a>
                    <a href="javascript:;" class="msg-num"><s:property value="messageList.size()" /></a>
                </div>
            </div>
            <div class="toolbar ue-clear">
                <a href="/LaboratoryManagementSystem/Message--toMainpage" class="home-btn">首页</a>
                <a href="javascript:;" class="quit-btn exit"></a>
            </div>
        </div>
    </div>
    <div id="bd">
    	<div class="wrap ue-clear">
        	<div class="sidebar">
            	<h2 class="sidebar-header"><p>功能导航</p></h2>
                <ul class="nav">
                    <li class="nav-info">
                    	<div class="nav-header"><a href="javascript:;" class="ue-clear"><span>实验室科研管理</span><i class="icon"></i></a></div>
                        <ul class="subnav">
                        	<li><a href="javascript:;" date-src="/LaboratoryManagementSystem/FileManage--toPaper">论文信息</a></li>
                            <li><a href="javascript:;" date-src="/LaboratoryManagementSystem/FileManage--toPatent">专利管理</a></li>
                            <li><a href="javascript:;" date-src="/LaboratoryManagementSystem/Hengxiang--toHengxiang">横向科研</a></li>
                            <li><a href="javascript:;" date-src="/LaboratoryManagementSystem/Zongxiang--toZongxiang">纵向科研</a></li>
                        </ul>
                    </li>
                	<li class="office current"><div class="nav-header"><a href="javascript:;" date-src="/LaboratoryManagementSystem/Hardware--toHardware" class="ue-clear"><span>硬件管理</span><i class="icon"></i></a></div></li>
                    <li class="gongwen"><div class="nav-header"><a href="javascript:;" class="ue-clear"  date-src="/LaboratoryManagementSystem/Software--toSoftware"><span>软件管理</span><i class="icon"></i></a></div></li>
                    <li class="konwledge"><div class="nav-header"><a  href="javascript:;" date-src="/LaboratoryManagementSystem/Achievement--toAchievement" class="ue-clear"><span>成果管理</span><i class="icon"></i></a></div></li>
                    <li class="agency"><div class="nav-header"><a href="javascript:;" date-src="/LaboratoryManagementSystem/Literature--toLiterature" class="ue-clear"><span>文献管理</span><i class="icon"></i></a></div></li>
                    <li class="email"><div class="nav-header"><a href="javascript:;" date-src="/LaboratoryManagementSystem/Message--toShowMessage" class="ue-clear"><span>公共消息</span><i class="icon"></i></a></div></li>
                </ul>
            </div>
            <div class="content">
            	<iframe src="/LaboratoryManagementSystem/FileManage--toPaper" name="mainframe" id="iframe" width="100%" height="100%" frameborder="0"></iframe>
            </div>
        </div>
    </div>
    <div id="ft" class="ue-clear">
    	<div class="ft-left">
            <span>天津理工大学-计算机与通信工程学院-实验室信息管理系统</span>
        </div>
        <div class="ft-right">
            <span>www.bestksl.com</span>
            <em>V1.0&nbsp;2017</em>
        </div>
    </div>
</div>
<div class="exitDialog">
	<div class="dialog-content">
    	<div class="ui-dialog-icon"></div>
        <div class="ui-dialog-text">
        	<p class="dialog-content">你确定要退出系统？</p>
            <p class="tips">如果是请点击“确定”，否则点“取消”</p>
            
            <div class="buttons">
                <input type="button" class="button long2 ok" value="确定" />
                <input type="button" class="button long2 normal" value="取消" />
            </div>
        </div>
        
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.dialog.js"></script>
<script type="text/javascript" src="js/index.js"></script>

</html>
