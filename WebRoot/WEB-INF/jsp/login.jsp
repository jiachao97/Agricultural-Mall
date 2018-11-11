<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>汉中特色农业综合服务平台</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="" type="image/x-icon">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/17/css/reset.css">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/17/css/reg.css">

</head>

<body>
	<div class="login_header">
		<div class="header_center clearfix">
			<div class="myfl">
				<a href="${pageContext.request.contextPath }/toHome.action"><img
					src="${pageContext.request.contextPath }/images/logo-s.jpg" /></a> <span>欢迎登陆</span>
			</div>
			<div class="myfr">
				<a href="<%=basePath %>toHome.action">返回首页</a>
			</div>
		</div>
	</div>
	<div class="login_content clearfix">
		<input type="hidden" id="memberType" value="" />

		<form action="${pageContext.request.contextPath }/user/login.action" method="post">
			<input type="hidden" name="memberType" id="parameter" value="1" />
			
			<div class="login_box myfr">
				<p class="tabchange clearfix">
					<span class="myfl sign_select" id="usertype">用户登录</span>
				</p>
				<p class="system_error"></p>
				<input type="text" name="user_code" value="" id="user_code"
					placeholder="账号" />
				<p class="username_error">
					<span>账号不能为空!</span>
				</p>
				<input type="password" id="user_password" name="user_password" maxlength="16"
					value="" placeholder="密码" />
				<p class="password_error">
					<span>密码不能为空!</span>
				</p>
				<p class="forget_password clearfix">
					<a href="${pageContext.request.contextPath }/admin/login.action" class="myfr">后台登陆</a>
				</p>
				<input type="submit" value="立即登录" class="submit_btn">
				<h3 align="center">
					<font color="red">${requestScope.msg }</font>
				</h3>
			</div>

		</form>

	</div>
	<div class="login_bottom"><p><em>COPYRIGHT © 2018 JC.ALL RIGHTS RESERVED.</em></p></div>
</body>

<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/17/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/17/js/web_method/method.js"></script>

</html>
