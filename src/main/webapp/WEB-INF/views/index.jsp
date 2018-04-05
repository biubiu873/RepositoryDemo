<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

	<head>
		<title>Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<link rel="icon" href="/myImages/Icon/logo.png" type="image/x-icon" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		
		<!-- Bootstrap Core CSS -->
		<link href="/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<!-- Custom CSS -->
		<link href="/css/style.css" rel='stylesheet' type='text/css' />
		<!-- Graph CSS -->
		<link href="/css/font-awesome.css" rel="stylesheet">
		<!-- jQuery -->
		<link href='https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
		<!-- lined-icons -->
		<link rel="stylesheet" href="/css/icon-font.min.css" type='text/css' />
		<!-- //lined-icons -->
		<script src="/js/jquery-1.10.2.min.js"></script>
		<script src="/js/amcharts.js"></script>
		<script src="/js/serial.js"></script>
		<script src="/js/light.js"></script>
		<script src="/js/radar.js"></script>
		<link href="/css/barChart.css" rel='stylesheet' type='text/css' />
		<link href="/css/fabochart.css" rel='stylesheet' type='text/css' />
		<!--clock init-->
		<script src="/js/css3clock.js"></script>
		<!--Easy Pie Chart-->
		<!--skycons-icons-->
		<script src="/js/skycons.js"></script>

		<script src="/js/jquery.easydropdown.js"></script>

		<!--//skycons-icons-->
		
		
	</head>

	<body>
		<div class="page-container">
			<!--/content-inner-->
			<div class="left-content">
				<div class="inner-content">
					<!-- header-starts -->
					<div class="header-section">
						<!--menu-right-->
						<div class="top_menu">
							<div class="main-search">
								
								<form>
									<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '寻找你的那个ta';}" class="text" />
									<input type="submit" value="">
								</form>
								<div class="close"><p style="padding-top:4px;text-align:center; color: #E0FFFF;font-size: 13px;font-weight:100;">关闭</p></div>
							</div>
							<div class="srch"><button></button></div>
							<script type="text/javascript">
								$('.main-search').hide();
								$('button').click(function() {
									$('.main-search').show();
									$('.main-search text').focus();
								});
								$('.close').click(function() {
									$('.main-search').hide();
								});
							</script>
							<!--/profile_details-->
							<div class="profile_details_left">
								
								
								<!--导航-->
								<ul class="nofitications-dropdown">
									
									
									<li class="dropdown note" style="width: 160px;">
										<a href="Index" style="text-align:center; color: #fff;font-size: 18px;">首&nbsp;页</a>
									
									</li>
									
									<li class="dropdown note" style="width: 160px;">
										<a href="QuestionAndAnswer" style="text-align:center; color: #fff;font-size: 18px;">问&nbsp;答</a>
									
									</li>
									
									<li class="dropdown note" style="width: 160px;">
										<a href="Article" style="text-align:center; color: #fff;font-size: 18px;">文&nbsp;章</a>
										
									</li>
									
									<li class="dropdown note">
										<a href="/jsp/Relax.jsp" style="padding-top:28%; text-align:center; color: #fff;font-size: 16px;">放&nbsp;松</a>
									</li>
									<li class="dropdown note">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope-o"></i> <span class="badge">3</span></a>

										<ul class="dropdown-menu two first">
											<li>
												<div class="notification_header">
													<h3>you hava 3 message</h3>
												</div>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="/images/1.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="/images/in.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="/images/in1.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div>
											</li>
										</ul>
									</li>

									<li class="dropdown note">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell-o"></i> <span class="badge">5</span></a>

										<ul class="dropdown-menu two">
											<li>
												<div class="notification_header">
													<h3>you have 5 message</h3>
												</div>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="/images/in.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="/images/in5.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="/images/in8.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all notification</a>
												</div>
											</li>
										</ul>
									</li>
									<li class="dropdown note">
											<a href="RegisterAndLogIn" style="text-align:center; color: #fff;font-size: 16px;">登录/注册</a>
										</div>
									</li>
									
									<div class="clearfix"></div>
								</ul>
							</div>
							
							<!--====================     导航结束       ==============================-->
							
							<div class="clearfix"></div>
							<!--//profile_details-->
						</div>
						<!--//menu-right-->
						<div class="clearfix"></div>
					</div>
					<!-- //header-ends -->
					<div class="outter-wp" style="height: 620px; width: 100%">
						
<!--		======================================		正文			==============================================				-->
						
						
						
					<iframe src="/jsp/Relax.jsp" frameborder="0" scrolling="yes" height="100%" width="100%"></iframe>
					
					
						
<!--		====================================		上面是正文			=========================================================				-->
					
					
					
				</div>
			</div>
			<!--//content-inner-->
			<!--/sidebar-menu-->
			<div class="sidebar-menu">
				<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
					<a href="#"> <span id="logo"> <h1 style="color: #FCFCFC; font-size: 22px;"><img alt="Q&A&nbsp;" style="background-color:#fff; height: 35px;width:35px;" src="/myImages/Icon/logo.png">有问必答</h1></span>
						<!--<img id="logo" src="" alt="Logo"/>-->
					</a>
				</header>
				<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
				<!--/down-->
				<div class="down">
					<a href="#"><img style="width: 50px;height: 50px;" src="/myImages/Icon/UserNoLogin.png.png"></a>
					<a href="#"><span class="name-caret">&nbsp;大白兔</span></a>
					<p>爱吃胡萝卜</p>
					<ul>
						<li>
							<a class="tooltips" href="#"><span>&nbsp;修改资料</span><i class="lnr lnr-cog"></i></a>
						</li>
						<li>
							<a class="tooltips" href="#"><span>&nbsp;退出</span><i class="lnr lnr-power-switch"></i></a>
						</li>
					</ul>
				</div>
				<!--//down-->
				
				<!-- 左边的导航 -->
				<div class="menu">
					<ul id="menu">
					
						<li>
							<a href="typography.html"><i class="lnr lnr-pencil"></i> <span>&nbsp;提问</span></a>
						</li>
						
						<li>
							<a href="index.html"><i class="fa fa-tachometer"></i><span>&nbsp;回答</span> </a>
						</li>
						
						<li id="menu-academico">
							<a href="#"><i class="fa fa-file-text-o"></i><span>&nbsp;收藏</span><span class="fa fa-angle-right" style="float: right"></span></a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-boletim">
									<a href="validation.html">&nbsp;问题</a>
								</li>
								<li id="menu-academico-boletim">
									<a href="validation.html">&nbsp;文章</a>
								</li>
							</ul>
						</li>
						
						
						<li>
							<a href="#"><i class="lnr lnr-envelope"></i><span>&nbsp;&nbsp;消息</span> <span class="fa fa-angle-right" style="float: right"></span></a>
							<ul>
								<li>
									<a href="inbox.html"><i class="fa fa-inbox"></i>&nbsp;私信</a>
								</li>
								<li>
									<a href="compose.html"><i class="fa fa-pencil-square-o"></i>&nbsp;通知</a>
								</li>

							</ul>
						</li>
						
						<li id="menu-comunicacao">
							<a href="#"><i class="fa fa-smile-o"></i><span>&nbsp;关注</span><span class="fa fa-angle-double-right" style="float: right"></span></a>
							<ul id="menu-comunicacao-sub">
								<li id="menu-mensagens" style="width:120px">
									<a href="project.html">&nbsp;我关注的<i class="fa fa-angle-right" style="float: right; margin-right: -8px; margin-top: 2px;"></i></a>
									<ul id="menu-mensagens-sub">
										<li id="menu-mensagens-enviadas" style="width:130px">
											<a href="ribbon.html">&nbsp;用户</a>
										</li>
										<li id="menu-mensagens-recebidas" style="width:130px">
											<a href="blank.html">&nbsp;标签</a>
										</li>
									</ul>
								</li>
								<li id="menu-arquivos">
									<a href="500.html">&nbsp;关注我的</a>
								</li>
							</ul>
						</li>
						
						<li id="menu-academico">
							<a href="#"><i class="lnr lnr-layers"></i> <span>&nbsp;Components</span> <span class="fa fa-angle-right" style="float: right"></span></a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-avaliacoes">
									<a href="grids.html">&nbsp;Grids</a>
								</li>
								<li id="menu-academico-boletim">
									<a href="media.html">&nbsp;Media Objects</a>
								</li>

							</ul>
						</li>
						<li>
							<a href="chart.html"><i class="lnr lnr-chart-bars"></i> <span>&nbsp;Charts</span> <span class="fa fa-angle-right" style="float: right"></span></a>
							<ul>
								<li>
									<a href="map.html"><i class="lnr lnr-map"></i>&nbsp;Maps</a>
								</li>
								<li>
									<a href="graph.html"><i class="lnr lnr-apartment"></i>&nbsp; Graph Visualization</a>
								</li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<script>
			var toggle = true;

			$(".sidebar-icon").click(function() {
				if(toggle) {
					$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position": "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position": "relative"
						});
					}, 400);
				}

				toggle = !toggle;
			});
		</script>
		<!--js -->
		<link rel="stylesheet" href="/css/vroom.css">
		<script type="text/javascript" src="/js/vroom.js"></script>
		<script type="text/javascript" src="/js/TweenLite.min.js"></script>
		<script type="text/javascript" src="/js/CSSPlugin.min.js"></script>
		<script src="/js/jquery.nicescroll.js"></script>
		<script src="/js/scripts.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="/js/bootstrap.min.js"></script>
	</body>



</html>