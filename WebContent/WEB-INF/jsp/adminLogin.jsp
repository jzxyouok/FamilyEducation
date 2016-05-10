<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录-家教网</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/loginstyle.css"
	media="all" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"
	type="text/javascript"></script>
<script>
	$(document).ready(function() {
		$("#adminLogin").validate();
	});
	function adminError(){
		alert("管理员账户或密码错误，请重新输入登录");
	}
</script>
	<%
		if (session.getAttribute("adminError") != null) {
			out.print("<script type='text/javascript'>adminError();</script>");
			session.removeAttribute("adminError");
		}
	%>


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
								<input autocomplete="off" 
									name="password" required
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