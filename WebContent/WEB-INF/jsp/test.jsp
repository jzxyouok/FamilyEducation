<%@page import="com.FamilyEdu.Model.User"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人中心-家教网</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"
	type="text/javascript"></script>
	<link href="${pageContext.request.contextPath}/css/loginstyle.css"
	media="all" rel="stylesheet" type="text/css" />


</head>
<body>
	<div class="login">	
			<div class="ribbon-wrapper h2 ribbon-red">
				<div class="ribbon-front">
					<h2>管理员登录</h2>
				</div>
				<div class="ribbon-edge-topleft2"></div>
				<div class="ribbon-edge-bottomleft"></div>
			</div>
			<form accept-charset="UTF-8" action="/FamilyEdu/admin/sign_in"
						class="form-horizontal" id="adminLogin" method="post">

						<div class='inputs'>
							<div class='input-group'>
								<div class='input-group-addon left_bc'>
									<span class='glyphicon glyphicon-user'></span>
								</div>
								<input autofocus="autofocus" class="text" required
								 data-msg-required="请输入用户名"
							 name="username" placeholder="用户名"
								size="30" type="text" value="" 	style="height: 30px;padding: 1.2em 0em 1em 0em;font-size: 18px;border: 1px solid #f4f4f4;width: 267px;"/>
							</div>
						</div>
						<div class='inputs'>
							<div class='input-group'>
								<div class='input-group-addon left_bc'>
									<span class='glyphicon glyphicon-lock'></span>
								</div>
								<input autocomplete="off" class="login-controls txt-left"
									id="password" name="password" required
									data-msg-required="请输入密码,密码不能为空"
									placeholder="请输入密码" size="30" type="password" style="height: 30px;padding: 1.2em 0em 1em 0em;font-size: 18px;border: 1px solid #f4f4f4;width: 267px;"/>
							</div>
						</div>
						<div class='input_div'>
							<input class="btn btn-lg btn-block btn_back" name="commit" id="loginBtn"
								type="submit" value="登录"/>
						</div>
					</form>
		</div>
		
	</body>
</html>