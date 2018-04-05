<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

	<head>
		<title>Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
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
									
									
									<li class="dropdown note" style="width: 200px;">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">首页</a>
									
									</li>
									
									<li class="dropdown note" style="width: 200px;">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">问答</a>
									
									</li>
									
									<li class="dropdown note" style="width: 200px;">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">文章</a>
									
									</li>
									
									<li class="dropdown note">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">偷懒</a>
									
									</li>
									
									
									<li class="dropdown note dra-down">
										<div id="dd" class="wrapper-dropdown-3" tabindex="1">
											<span>我全都要</span>
											<ul class="dropdown">
												<li>
													<a class="deutsch">我全都要</a>
												</li>
												<li>
													<a class="english">待回答</a>
												</li>
												<li>
													<a class="espana">已解决</a>
												</li>
												<li>
													<a class="russian">热门</a>
												</li>

											</ul>
										</div>
										<script type="text/javascript">
											function DropDown(el) {
												this.dd = el;
												this.placeholder = this.dd.children('span');
												this.opts = this.dd.find('ul.dropdown > li');
												this.val = '';
												this.index = -1;
												this.initEvents();
											}
											DropDown.prototype = {
												initEvents: function() {
													var obj = this;

													obj.dd.on('click', function(event) {
														$(this).toggleClass('active');
														return false;
													});

													obj.opts.on('click', function() {
														var opt = $(this);
														obj.val = opt.text();
														obj.index = opt.index();
														obj.placeholder.text(obj.val);
													});
												},
												getValue: function() {
													return this.val;
												},
												getIndex: function() {
													return this.index;
												}
											}

											$(function() {

												var dd = new DropDown($('#dd'));

												$(document).click(function() {
													// all dropdowns
													$('.wrapper-dropdown-3').removeClass('active');
												});

											});
										</script>
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
													<div class="user_img"><img src="images/1.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="images/in.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in1.jpg" alt=""></div>
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
													<div class="user_img"><img src="images/in.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="images/in5.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor sit amet </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in8.jpg" alt=""></div>
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
					<div class="outter-wp">
						
<!--		======================================		正文			==============================================				-->
						
						
						
						
						
						
						
						<div id="mainBody"  style="background-color: #D1EEEE;height: 900px; ">
							
							<p>啊34啊啊啊啊啊df啊4a35啊s啊啊a啊啊f啊啊啊ad啊啊f啊d啊啊啊啊啊啊567啊
							啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊3dv4啊啊234啊啊啊啊56hfa4r5jsd啊啊啊56啊啊sd啊啊啊8啊啊啊
							啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊啊啊啊啊tte啊ggf啊啊啊啊啊啊啊啊啊u啊ki啊啊啊
							啊d啊啊啊啊啊啊567啊啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊3dv4啊啊234啊啊啊啊56hfa4r5jsd啊啊啊56啊啊sd啊啊啊8
							啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊啊啊啊啊tte啊ggf啊啊啊啊啊啊啊啊啊u啊ki啊啊啊
							啊d啊啊啊啊啊啊567啊啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊3dv4啊啊234啊啊啊啊56hfa4r5jsd啊啊啊56啊啊sd啊啊啊8啊啊啊啊
							啊啊啊啊啊啊啊啊啊啊啊啊啊啊
							啊啊啊啊啊啊啊啊啊啊啊啊tte啊ggf啊啊啊啊啊啊啊啊啊u啊ki啊啊啊啊啊啊
							
							
							 
						</div>
						<iframe src="/jsp/registerAndLogIn.jsp" frameborder="0" scrolling="yes" height="100%" width="100%" noresize="noresize"></iframe>
						
						
						
						
						
						
						
<!--		====================================		上面是正文			=========================================================				-->
					
					</div>
					<!--footer section start-->
					<footer>
						<p>Copyright &copy; 2018-4-4 javakenny</p>
					</footer>
					<!--footer section end-->
				</div>
			</div>
			<!--//content-inner-->
			<div class="clearfix"></div>
		</div>
		
		
		
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