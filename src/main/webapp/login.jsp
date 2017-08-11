<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" class="fullscreen-bg">

<head>
<title>YOUU后台登录</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="${ctp}/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ctp}/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctp}/assets/vendor/linearicons/style.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="${ctp}/assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="${ctp}/assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link href="${ctp}/assets/css/fonts.css" rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="${ctp}/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="${ctp}/assets/img/favicon.png">
<script type="text/javascript"
	src="${ctp}/assets/vendor/jquery/jquery.min.js"></script>
<!-- js插件 -->
<%@ include file="/js.jsp"%>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center">
									<img src="${ctp}/assets/img/logo-dark.png" alt="YOUU Logo">
								</div>
								<p class="lead">后台登录</p>
							</div>
							<form id="managerform" class="form-auth-small" 
								method="post">
								<div class="form-group">
									<input type="text" class="easyui-validatebox form-control"
										id="manager-username" name="username" value="youu"
										>
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Password</label>
									<input type="password" class="form-control"
										id="manager-password" name="password" value="123456"
										placeholder="Password">
								</div>
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left"> <input
										type="checkbox"> <span>记住密码</span>
									</label>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a
										href="#">忘记密码?</a></span>
								</div>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">热爱旅游，热爱分享，热爱工作</h1>
							<p>YOUU友游</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
// 	表单验证
	$('#manager-username,#manager-password').validatebox({
		required : true,
		validType : ["length[3,15]"]
	});
	
	
	$(".btn-primary").click(function(){
		var flag = $(".easyui-validatebox").validatebox("isValid");
		if (!flag){
			layer.msg("请按要求输入！");
			return false;
		}
	})
	
	
</script>
</html>
