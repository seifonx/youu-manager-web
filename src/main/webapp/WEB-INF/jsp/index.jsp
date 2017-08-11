<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>youu后台管理</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${ctp}/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${ctp}/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ctp}/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="${ctp}/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="${ctp}/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="${ctp}/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="${ctp}/assets/css/icon.css" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="${ctp}/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${ctp}/assets/img/favicon.png">
	
	<!-- Javascript -->
	<script src="${ctp}/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${ctp}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${ctp}/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${ctp}/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="${ctp}/assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="${ctp}/assets/scripts/klorofil-common.js"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="#"><img src="${ctp}/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
<!-- 				<div class="navbar-btn navbar-btn-right"> -->
<!-- 					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a> -->
<!-- 				</div> -->
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">查看所有通知</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>帮助</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${ctp}/assets/img/user.png" class="img-circle" alt="Avatar"> <span>赛姆斯</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>个人中心</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>退出</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="#" id="indexList" class="active"><i class="lnr lnr-home"></i> <span>主页</span></a></li>
						<li>
							<a href="#subPermission" data-toggle="collapse" class="collapsed"><i class="lnr lnr-code"></i> <span>权限管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPermission" class="collapse ">
								<ul class="nav">
									<li><a href="#" class="">用户维护</a></li>
									<li><a href="#" class="">角色维护</a></li>
									<li><a href="#" class="">许可维护</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subUser" data-toggle="collapse" class="collapsed"><i class="lnr lnr-chart-bars"></i> <span>会员管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subUser" class="collapse ">
								<ul class="nav">
									<li><a href="#" class="">积分管理</a></li>
									<li><a href="#" class="">实名审核</a></li>
									<li><a href="#" class="">博文审核</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subBusiness" data-toggle="collapse" class="collapsed"><i class="lnr lnr-cog"></i> <span>业务管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subBusiness" class="collapse ">
								<ul class="nav">
									<li><a href="#" class="">发布旅游信息</a></li>
									<li><a href="#" class="">发布优惠券信息</a></li>
									<li><a href="#" class="">发布广告信息</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>系统设置</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a id="messageList" href="#" class="">消息管理</a></li>
									<li><a href="#" class="">任务分配</a></li>
									<li><a href="#" class="">通知管理</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div id="contentDiv" class="container-fluid">
					<%@include file="indexContent.jsp" %>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 <a href="#" target="_blank">YOUU&nbsp;&nbsp;友游网</a></p>
			</div>
		</footer>
	</div>
	
	<!-- 主页面内容页面隐藏块 -->
	<div id="indexContent" hidden="true">
		<%@include file="indexContent.jsp" %>
	</div>
	
	<!-- 消息管理页面隐藏块 -->
	<div id="messageContent" hidden="true">
		<%@include file="message.jsp" %>
	</div>
	
	<!-- END WRAPPER -->
	<script type="text/javascript">
		$(function() {
			var content;
			
			// 展开主页面内容
			$("#indexList").click(function() {
				content = $("#indexContent").html();
				$("#contentDiv").empty().append(content);
				return false;
			});
			
			// 展开消息管理内容
			$("#messageList").click(function() {
				content = $("#messageContent").html();
				$("#contentDiv").empty().append(content);
				return false;
			});
		});
	</script>
</body>

</html>
