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
<script src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>

<%
	if (session.getAttribute("user") == null) {
		response.sendRedirect("/FamilyEdu/user/login");
	}
%>
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
						<a class='login-link' href='/FamilyEdu/user/myFamilyEduS'> 个人中心 </a>
					</div>
				</li>
				<li>
					<div class='main-link-div'></div>
				</li>
				<li>客服QQ: 346895397</li>
			</ul>
			<ul class='tag-info'>
				<li><a class='login-link' href='/FamilyEdu/user/myFamilyEduS'> <i
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
						<li><a class='p_active' href='/FamilyEdu/user/myFamilyEduS'>
								<i class='glyphicon glyphicon-user'></i> 用户中心
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduS/base'> <span
								class='pnav-left'> 基本信息 </span>
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduS/student'> <span
								class='pnav-left'> 学生信息</span>
						</a></li>
						<li><a href='/FamilyEdu/user/myFamilyEduS/userPassword'>
								<i class='pnav-left'></i> 密码修改
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
						<li><a href='javascript:void(0);'> <i
								class='glyphicon glyphicon glyphicon-pencil'></i> 生成订单
						</a><a href='/FamilyEdu/user/myFamilyEduS/order?page=1'> <i
								class='glyphicon glyphicon-align-justify'></i> 全部订单
						</a> <a href='/FamilyEdu/user/myFamilyEduS/order/unconfirmed?page=1'> <i
								class='glyphicon glyphicon-time'></i> 待确认的订单
						</a> <a href='/FamilyEdu/user/myFamilyEduS/order/confirmed?page=1'> <i
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
							<i class='glyphicon glyphicon-user'></i> 我的信息
						</h4>
					</div>
				</div>
				<div class='p_block'>
					<div class='p_content_info info-mgb2'>
						<div class='p_content_t'>
							<span>${sessionScope.user.username}</span>
						</div>
						<table class='p_content_table'>
							<tr>
								<td class='p_content_td'>邮&nbsp;箱:</td>
								<td>${sessionScope.user.email}</td>
							</tr>
							<tr>
								<td class='p_content_td'>住&nbsp;址：</td>
								<td>${sessionScope.user.address}</td>
							</tr>
							<tr>
								<td class='p_content_td'>联系方式:</td>
								<td>${sessionScope.user.phoneNum}</td>
							</tr>
						</table>
					</div>
					<div class='t_content_img'>
						<img alt="Photo" class="img-thumbnail" height="100px"
							src="${sessionScope.user.userImage}" width="100px" />
					</div>
					<div class='p_block'>
						<div class='col-md-12 col-xs-12 margin-task'>
							<div class='col-md-12 col-xs-12'>
								<p>
								<h3 class='font-orange text-center'>只需要完成三步就能预约家教了？等什么？
								</h3>
								</p>
							</div>
							<div class='col-md-12 col-xs-12 task-wrap-padding'>
								<div class='col-md-12 col-xs-12'>
									<p>
									<h3 class='text-center'>第一步：基本信息</h3>
									</p>
								</div>
								<div class='col-md-12 col-xs-12'>
									<a class='task-style' href='/FamilyEdu/user/myFamilyEduS/base'>
										<div class='col-md-1 col-xs-1'>
											<P>
											<h1>
												<i class='glyphicon glyphicon-hand-right'></i>
											</h1>
											</P>
										</div>
										<div class='col-md-10 col-xs-10'>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h4>基本信息</h4>
												</P>
											</div>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h5>
													需要填写内容包括：您的基本情况，上传个人照片和身份证件正面照片。基本信息填写完整后，我们会进行人工资格审核，审核通过后进行预约。
												</h5>
												</P>
											</div>
										</div>
										<div class='col-md-1 col-xs-1 padding-none'>
											<p>
											<h1>
												<i class='glyphicon glyphicon-chevron-right'></i>
											</h1>
											</p>
										</div>
									</a>
								</div>
								<div class='col-md-12 col-xs-12'>
									<p>
									<h3 class='text-center'>第二步：完善信息</h3>
									</p>
								</div>
								<div class='col-md-12 col-xs-12'>
									<a class='task-style'
										href='/FamilyEdu/user/myFamilyEduS/student'>
										<div class='col-md-1 col-xs-1'>
											<P>
											<h1>
												<i class='glyphicon glyphicon-hand-right'></i>
											</h1>
											</P>
										</div>
										<div class='col-md-10 col-xs-10'>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h4>学习信息</h4>
												</P>
											</div>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h5>
													填写学生信息，让家教对学生有大致了解，更好进行教育</h5>
												</P>
											</div>
										</div>
										<div class='col-md-1 col-xs-1'>
											<p>
											<h1>
												<i class='glyphicon glyphicon-chevron-right'></i>
											</h1>
											</p>
										</div>
									</a>
								</div>
								<div class='col-md-12 col-xs-12'>
									<p>
									<h3 class='text-center'>第三步：预约家教</h3>
									</p>
								</div>
								<div class='col-md-12 col-xs-12'>
									<a class='task-style' href='/FamilyEdu'>
										<div class='col-md-1 col-xs-1'>
											<P>
											<h1>
												<i class='glyphicon glyphicon-hand-right'></i>
											</h1>
											</P>
										</div>
										<div class='col-md-10 col-xs-10'>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h4>预约家教</h4>
												</P>
											</div>
											<div class='col-md-12 col-xs-12'>
												<P>
												<h5>好激动哦，已经到最后一步了，在首页寻找搜索相对课程的家教，就可以预约到心仪的家教啦！</h5>
												</P>
											</div>
										</div>
										<div class='col-md-1 col-xs-1'>
											<p>
											<h1>
												<i class='glyphicon glyphicon-chevron-right'></i>
											</h1>
											</p>
										</div>
									</a>
								</div>
							</div>
						</div>
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
</html>