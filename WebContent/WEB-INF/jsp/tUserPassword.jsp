<%@page import="com.FamilyEdu.Model.User"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"
	type="text/javascript"></script>

<script type="text/javascript">
	function updateSuccess() {
		alert("密码修改成功！");
	}
</script>
<%
	if (session.getAttribute("user") == null) {
		response.sendRedirect("/FamilyEdu/user/login");
	}

	if (session.getAttribute("updateSuccess") != null) {
		out.print("<script type='text/javascript'>updateSuccess();</script>");
		session.removeAttribute("updateSuccess");
	}
%>
<script>
	$(document).ready(function() {
		$("#updatePassword").validate();
	});
</script>
</head>
<body>
	<div id='site-nav'>
		<div class='wrapper' id="hasUserWrapper">
			<ul class='status-info'>
				<li>
					<div class='main-link-div'>
						<a class='main-link' href='/FamilyEdu/'> <i
							class='glyphicon glyphicon-home'></i> 首页
						</a>
					</div>
				</li>
				<li>
					<div class='main-link-div'>
						<a class='login-link' href='/FamilyEdu/user/myFamilyEduT'> 个人中心 </a>
					</div>
				</li>
				<li>
					<div class='main-link-div'></div>
				</li>
				<li>客服QQ: 346895397</li>
			</ul>
			<ul class='tag-info'>
				<li><a class='login-link' href='/FamilyEdu/user/myFamilyEduT'> <i
						class='glyphicon glyphicon-user'></i> ${ sessionScope.user.username}
				</a> <a class='register-link' href='/FamilyEdu/user/loginout'> 退出 </a></li>
			</ul>
		</div>
	</div>
	<div id='p_header'>
		<div class='p_wrapper'>
			<div class='p_logo'>
				<a href='/FamilyEdu/'> <img alt="家教网" class="header-logo-img2"
					src="${pageContext.request.contextPath}/image/logo2.png" />
				</a>
			</div>
			<img alt="用户头像" class="p_title_img"
				src="${sessionScope.user.userImage}" />
			<div class='p_title'>个人主页</div>
		</div>
	</div>

	<div class='p_main'>
		<div class='p_wrapper'>
			<div class='p_menu'>
				<div class='p_block'>
					<div class='p_block_title'>
						<h4>我的信息</h4>
					</div>
				</div>
				<div class='p_block'>
					<ul class='nav'>
						<li><a href='/FamilyEdu/user/myFamilyEduT'> <i
								class='glyphicon glyphicon-user'></i> 用户中心
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduT/base'> <span
								class='pnav-left'> 基本信息 </span>
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduT/achievement'> <span
								class='pnav-left'> 学习成果 </span>
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduT/experience'> <span
								class='pnav-left'> 教学经历 </span>
						</a></li>
						<li><a class='p_active'
							href='/FamilyEdu/user/myFamilyEduT/userPassword'> <i
								class='pnav-left'></i> 密码修改
						</a></li>
					</ul>
				</div>
				<div class='p_block'>
					<div class='p_block_title'>
						<h4>我的课程</h4>
					</div>
				</div>
				<div class='p_block'>
					<ul class='nav'>
						<li><a 
							href='/FamilyEdu/user/myCourses/release'> <i
								class='glyphicon glyphicon-circle-arrow-up'></i> 我的课程
						</a></li>
					</ul>
				</div>
				<div class='p_block'>
					<div class='p_block_title'>
						<h4>我的订单</h4>
					</div>
				</div>
				<div class='p_block'>
					<ul class='nav'>
						<li><a href='/FamilyEdu/user/myFamilyEduT/order?page=1'> <i
								class='glyphicon glyphicon-align-justify'></i> 全部订单
						</a> <a href='/FamilyEdu/user/myFamilyEduT/order/unconfirmed?page=1'> <i
								class='glyphicon glyphicon-time'></i> 待确认的订单
						</a> <a href='/FamilyEdu/user/myFamilyEduT/order/confirmed?page=1'> <i
								class='glyphicon glyphicon glyphicon-check'></i> 已确认的订单
						</a>
					</ul>
				</div>
				<div class='p_block'></div>

			</div>

			<div class='p_content'>
				<div class='p_block'>
					<div class='p_block_title p_content_block_title'>
						<h4>
							<i class='glyphicon glyphicon-asterisk greay'></i> 密码修改
						</h4>
					</div>
				</div>
				<div class='p_block'>
					<div class='p_block_password'>
						<form accept-charset="UTF-8"
							action="/FamilyEdu/user/myFamilyEduT/userPassword/updatePassword"
							class="form-horizontal" id="updatePassword" method="post">
							<div class='form-group'>
								<label class="col-md-2 control-label" for="teacher_当前密码:">当前密码:</label>
								<div class='col-md-4 col-xs-4'>
									<input autocomplete="off" class="form-control"
										id="teacher_current_password" name="oldPassword" size="30"
										type="password" required data-msg-required="请输入当前密码"
										data-rule-remote="/FamilyEdu/user/isTrueOldPassword"
										data-msg-remote="当前密码不正确" />
								</div>
							</div>
							<div class='form-group'>
								<label class="col-md-2 control-label" for="teacher_新密码:">新密码:</label>
								<div class='col-md-4 col-xs-4'>
									<input autocomplete="off" class="form-control" id="newPassword"
										name="newPassword" size="30" type="password" required
										data-msg-required="请输入新密码" minlength="6"
										data-msg-minlength="至少输入6个字符" />
								</div>
							</div>
							<div class='form-group'>
								<label class="col-md-2 control-label" for="teacher_确认密码:">确认密码:</label>
								<div class='col-md-4 col-xs-4'>
									<input autocomplete="off" class="form-control" size="30"
										type="password" required data-msg-required="确认密码不能为空"
										equalTo="#newPassword" />
								</div>
							</div>
							<div class='form-group'>
								<div
									class='col-sm-offset-2 col-sm-offset-2 col-sm-10 col-sm-10 col-md-4 col-xs-4'>
									<input class="btn btn-success form-control" name="commit"
										type="submit" value="提交" />
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


	<div id='footer-div'>
		<div class='wrapper'>
			<div class='footer-service'>
				<div class='footer-service-title'>客服电话：</div>
				<div class='footer-service-content'>13570577165</div>
			</div>
			<div class='footer-intro'>
				<div class='footer-intro-head'>
					<span class='footer-intro-title'> 家教网 </span> <span
						class='footer-intro-substitle'> 中小学生家教预约平台 </span>
				</div>
				<p class='footer-desc'>家教网 -中小学生家教预约平台
					是一个互联网教育平台。为了学习更有效、为了教育更灵活、更亲切，我们致力于本地化家教教育。在这个平台上，老师和学生可以免费发布信息、随时沟通、灵活教学。学生无论是为了应对升学，攻克难题，还是课外兴趣发展，我们都能提供强大的知识和经验支持。
				</p>
				<p class='footer-desc'>
					<br> Copyright © 2015 - 2016 家教网
				</p>
			</div>
			<div class='footer-about'>
				<i></i>
				<ul class='footer-list'>
					<li><a> 活动公告 </a></li>
					<li><a> 常见问题 </a></li>
					<li><a> 服务协议 </a></li>
					<li><a> 隐私声明 </a></li>
					<li><a> 商务合作 </a></li>
				</ul>
			</div>
			<div class='footer-contact'>
				<i></i>
				<ul class='footer-list'>
					<li><a> 意见反馈 </a></li>
					<li><a> 官方微信 </a></li>
					<li><a> 新浪微博 </a></li>
					<li><a> 关于我们 </a></li>
					<li><a> 联系我们 </a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
<style>
label.error {
	color: #C00;
}
</style>
</html>