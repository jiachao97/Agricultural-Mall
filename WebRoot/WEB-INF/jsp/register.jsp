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
<link rel="shortcut icon" href=""
	type="${pageContext.request.contextPath }/17/image/x-icon">
<link rel="stylesheet" charset="UTF-8"
	href="${pageContext.request.contextPath }/17/css/reset.css">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/17/css/web_pop.css">
<link rel="stylesheet" charset="UTF-8"
	href="${pageContext.request.contextPath }/17/css/login.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath }/js/jquery-1.11.0.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/jquery.validate.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/messages_zh.js"
	type="text/javascript"></script>

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
	 float:left; */
	
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("#formId").validate({
			rules : {
				user_code : "required",
				user_name : "required",
				user_password : {
					rangelength : [ 6, 18 ],
					required : true
				},
				user_repassword : {
					rangelength : [ 6, 18 ],
					required : true
				},
				user_telephone : {
					rangelength : [ 11, 11 ],
					required : true
				},
				user_address : "required"
			},
			messages : {
				user_code : "请输入账号",
				user_name : "请输入用户名",
				user_password : {
					rangelength : "密码长度应在6-18位之间",
					required : "请输入密码"
				},
				user_repassword : {
					rangelength : "密码长度应在6-18位之间",
					required : "请确认密码"
				},
				user_telephone : {
					rangelength : "请输入11位的有效联系方式",
					required : "请输入联系方式"
				},
				user_address : "请输入收货地址"
			}
		})
	})
</script>

</head>
<body>
	<div class="register_header">
		<div class="header_center clearfix">
			<div class="myfl">
				<a href="${pageContext.request.contextPath }/toHome.action"><img
					src="${pageContext.request.contextPath }/images/logo-s.jpg" /></a> <span>用户注册</span>
			</div>
			<div class="myfr">
				<a href="${pageContext.request.contextPath }/toHome.action">返回首页</a>
				<span></span> <a
					href="${pageContext.request.contextPath }/user/toLogin.action">已有账户，直接<em>登录</em></a>
			</div>
		</div>
	</div>

	<div class="container" style="width:100%;">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
				
				<form class="form-horizontal" style="margin-top:5px;"
					action="${pageContext.request.contextPath }/user/register.action"
					method="post" id="formId">

					<div class="form-group">
						<label for="user_code" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="user_code"
								name="user_code" placeholder="请输入账号">
						</div>
						<label for="user_recode" class="col-sm-2 control-label">${requestScope.msg }</label>
					</div>
					<div class="form-group">
						<label for="user_name" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="user_name"
								name="user_name" placeholder="请输入用户名">
						</div>
					</div>
					<div class="form-group">
						<label for="user_password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="user_password"
								name="user_password" placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<label for="user_repassword" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="user_repassword"
								name="user_repassword" placeholder="请确认密码">
						</div>
					</div>
					<div class="form-group">
						<label for="user_telephone" class="col-sm-2 control-label">联系方式</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="user_telephone"
								name="user_telephone" placeholder="请输入联系方式">
						</div>
					</div>
					<div class="form-group">
						<label for="user_address" class="col-sm-2 control-label">收货地址</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="user_address"
								name="user_address" placeholder="请输入收货地址">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="注册" name="submit"
								style="background: url('${pageContext.request.contextPath }/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
							    height:35px;width:100px;color:white;">
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>

</body>

</html>
