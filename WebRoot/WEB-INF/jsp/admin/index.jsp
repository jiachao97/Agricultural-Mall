<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>汉中特色农业综合服务平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/general.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet" type="text/css" />

<style type="text/css">
body {
	color: white;
}
</style>
</head>
<body style="background: #278296">
	<center></center>
	<img src="${pageContext.request.contextPath }/images/top_100.jpg"
		alt="" style=width:1358px;></img>
	<form method="post"
		action="${pageContext.request.contextPath }/admin/login.action">
		<table cellspacing="0" cellpadding="0" style="margin-top: 100px"
			align="center">
			<tr>
				<td>
					<table>
						<tr>
							<td>管理员姓名：</td>
							<td><input type="text" name="admin_code" /></td>
							<td><span>${msg }</span></td>
						</tr>
						<tr>
							<td>管理员密码：</td>
							<td><input type="password" name="admin_password" /></td>
							<td><span>${msg }</span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" value="进入管理中心" class="button" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>