<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>

	<head>
		<title>首页</title>
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
		<script type="text/javascript" src="/css/bootstrap/js/bootstrap.js"></script>
		<!-- Custom CSS -->
		<link href="/css/style.css" rel='stylesheet' type='text/css' />
		<!-- Graph CSS -->
		<link href="/css/font-awesome.css" rel="stylesheet">
		<!-- jQuery -->
		<script src="/js/jquery-1.11.1.min.js"></script>
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
									<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '本站搜索';}" class="text" />
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
									
									
									<li class="dropdown note" style="width: 170px;">
										<a href="index" style="text-align:center; color:#fff;font-size: 18px;"><img src="/myImages/Icon/bull.png" alt="首页" class="img-circle" style="height: 35px; background-color:#FFE1FF; width: 35px">&nbsp;首&nbsp;页</a>
									
									</li>
									
									<li class="dropdown note" style="width: 170px;">
										<a href="questionAndAnswer" style="text-align:center;color: #fff; font-size: 18px;"><img alt="问答" src="/myImages/Icon/owl.png" style="height: 22px;width: 22px">&nbsp;问&nbsp;答</a>
									
									</li>
									
									<li class="dropdown note" style="width: 170px;">
										<a href="article" style="text-align:center;color: #fff;font-size: 18px;"><img alt="文章" src="/myImages/Icon/panda.png" style="height: 22px;width: 22px">&nbsp;文&nbsp;章</a>
										
									</li>
									
									<li class="dropdown note">
										<a href="/jsp/sonPage/Relax.jsp"  target="_blank" style="text-align:center;color: #fff;font-size: 18px;"><img alt="放松" src="/myImages/Icon/emoji-20.png" style="height: 22px;width: 22px">&nbsp;放&nbsp;松</a>
									</li>
									<!-- <li class="dropdown note">
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
									</li> -->
									<li class="dropdown note" style="width: 200px;">
										<a href="registerAndLogIn" style="text-align:center; color: #fff;font-size: 18px;"><img alt="首页" src="/myImages/Icon/donkey.png" style="height: 22px;width: 22px">&nbsp;登录/注册</a>
										
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
						
<!--		======================================		下面是正文			==============================================				-->
						
						
						
					<iframe src="/jsp/sonPage/QuestionAndAnswer.jsp" style="margin: 0 auto;" frameborder="0" scrolling="yes" height="100%" width="100%"></iframe>
					
					
						
<!--		====================================		上面是正文			=========================================================				-->
					
					
					
				</div>
			</div>
			<!--//content-inner-->
			<!--/sidebar-menu-->
			<div class="sidebar-menu">
				<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
					<a href="#"> <span id="logo"><h1 style="color: #FCFCFC; font-size: 24px;"><img alt="Q&A&nbsp;" style="background-color:#fff;  height:30px;width:30px;" src="/myImages/Icon/logo.png">有问必答</h1></span>
						<!--<img id="logo" src="" alt="Logo"/>-->
					</a>
				</header>
				<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
				<!--/down-->
				
				<div class="down">
					<!--未登录时显示提示登录信息 	登录后显示用户名 -->
					<%
						String userName=(String)session.getAttribute("userName");
						if(userName==""||userName==null){
							session.setAttribute("loginflag", "点我，给你看个宝贝！");
							session.setAttribute("userImg", "emoji-14.png");
						}
						else{
							session.setAttribute("loginflag", "");
						}
					%>
					
					<!-- 头像 -->
					<a href="#" onclick="openUserImgModel()"><img alt="点击选择头像" style="width: 50px;height: 50px;" src="/myImages/userImages/${userImg}"></a>
					
					<a href="#" onclick="openUserInfoModel()"><span class="name-caret">&nbsp;${userName}</span></a><a href="registerAndLogIn">${loginflag}</a>
					<!-- 签名 -->
					<p>${userDescribe }</p>
					
					<ul>
						<li>
							<a  onclick="openUserLogInModel()" class="tooltips" href="#"><span>&nbsp;修改资料</span><i class="lnr lnr-cog"></i></a>
						</li>
						<li>
							<a class="tooltips" href="logout"><span>&nbsp;退出</span><i class="lnr lnr-power-switch"></i></a>
						</li>
					</ul>
				</div>
				<!--//down-->
				
		
				<!-- 左边的导航 -->
				<div class="menu">
					<ul id="menu">
					
						<li>
							<a href="goEdit" target="_blank"><i class="lnr lnr-pencil"></i> <span>&nbsp;发布</span></a>
						</li>
						
						<li>
							<a href="index.html"><i class="fa fa-tachometer"></i><span>&nbsp;历史</span> </a>
						</li>
						
						<li id="menu-academico">
							<a href="#"><i class="fa fa-file-text-o"></i><span>&nbsp;收藏</span><span class="fa fa-angle-right" style="float: right"></span></a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-boletim">
									<a href="#">&nbsp;问题</a>
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
									<a href="#">&nbsp;我的关注<i class="fa fa-angle-right" style="float:right; margin-right:8px; margin-top: 2px; "></i></a>
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
		
		
		<!-- ==================================     资料修改，信息显示模态框和script        ========================== -->		
				<script type="text/javascript">
				
				//点击头像
				function openUserImgModel(){
					//显示详细信息模态框
					var userName="${sessionScope.userName}";
					if(userName==""||userName==null){
						alert("您还没有登录哦！");
					}
					else{
						$('#userImgModel').modal('show');
					}
				}
				
				//点击用户名
				function openUserInfoModel(){
					//显示详细信息模态框
					var userName="${sessionScope.userName}";
					if(userName==""||userName==null){
						alert("您还没有登录哦！");
					}
					else{
						$('#userInfoModel').modal('show');
					}
				}
					
					
					
					
				
				
				
				//点击修改按钮
				function openUserLogInModel(){
					//基本信息模态框
					var userName="${sessionScope.userName}";
					if(userName==""||userName==null){
						alert("您还没有登录哦！");
					}
					else{
						$('#userLogInModel').modal('show');
					} 
					/* $('#userLogInModel').modal('show'); */
				}
					
					
					
				</script>
				
		<!-- ==================================     资料修改，信息显示模态框和script        ========================== -->		
				
	<!-- ========================    为避免影响其他地方的布局，在body里的最外层写模态框    =================== -->	

<!--====================  头像模态框                  ================ -->
<div id="userImgModel" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">修改头像</h4>
      </div>
      <div class="modal-body">
      	
      	<!-- 上传文件必须加上 enctype="multipart/form-data"和 method="post"（主要是后台都是post接收） 。否则会报500 -->
      	<!-- <input type="file" name="userImg">必须指定name且与后台接收参数名称一致 -->
      	
      	<form id="updateUserLogInForm" enctype="multipart/form-data" >
		  <div class="form-group">
		    <label for="exampleInputFile">头像</label>
		    <input type="hidden" class="form-control" name="userid" value="${userid}"  >
		    <input  type="file" id="file_img" name="userImg" id="exampleInputFile">
		    <p class="help-block">选择头像，请选择jpg、gif、bmp、png等图片文件，文件最大不超过4M，否则可能会上传失败！</p>
		  </div>
		</form> 
		  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" style="background-color:#B3B3B3" data-dismiss="modal">取消</button>
        <button type="button" onclick="updateUserImage()" class="btn btn-default" style="margin-bottom: 10px;">上传</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">

function updateUserImage(){
	var str = document.getElementById("file_img").value;
	if(str.length==0)
	{
	alert("您未选择文件或文件名有误！");
	}
	else{
		
		$.ajax({  
		    url: "userImageUpdate",  
		    type: 'POST',  
		    cache: false,  
		    data: new FormData($("#updateUserLogInForm")[0]),  
		    processData: false,  
		    contentType: false,  
		    success: function (data){  
		    		if(data=200){
						//成功
						$('#userImgModel').modal('hide');
						//重新定位到首页，刷新头像
						parent.location.href="index";
		    			alert("修改成功");
		    		}
					
		    }, 
		    error: function (data) {
					alert("服务器出错了,请等待作者修复或留言反馈！");
		    }  
		}); 
	}
}
</script>


<!--====================  详细信息模态框                  ================ -->	
	
<div id="userInfoModel" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">用户详情</h4>
      </div>
      <div class="modal-body">
      	
      	
      	
        <p>正在改用新的数据提交方式，请稍后。。。</p>
        
        
        
        
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" style="background-color:#B3B3B3" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-default" style="margin-bottom: 10px;">上传</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
		
		
		
<!--==================== 基本信息模态框                  ================ -->
<div id="userLogInModel" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">基本信息</h4>
      </div>
      <div class="modal-body">
      	
      	
      	<form id="updateUserLogInForm">
      	  <div class="form-group">
		    <label for="userId">id</label>
		   	<input type="text" id="Upuserid" class="form-control" value="${userid}"  name="userid" disabled placeholder="id">
		  </div>
		  <div class="form-group">
		    <label for="userName">用户名</label>
		    <input type="text" id="UpuserName" class="form-control" value="${userName }" name="userName" required placeholder="请输入你的用户名">
		  </div>
		  <div class="form-group">
		    <label for="userPhone">手机号</label>
		    <input type="text" id="UpuserPhone" class="form-control" value="${userPhone }" name="userPhone" placeholder="请输入你的手机号">
		  </div>
		  <div class="form-group">
		    <label for="userEmail">邮箱</label>
		    <input type="text" id="UpuserEmail" class="form-control" value="${userEmail }" name="userEmail" required placeholder="请输入你的邮箱地址">
		  </div>
		  <div class="form-group">
		    <label for="userDescribe">个性签名</label>
		    <input type="text" id=UpuserDescribe class="form-control" value="${userDescribe }" name="userDescribe" placeholder="请输入你的个性签名">
		  </div>
		</form>
		<!-- 修改密码 -->
		<a href="/html/404.html" target="_blank"><button type="button"  class="btn btn-default" style="margin-left: 40%;">修改密码请点我</button></a>
		        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" style="background-color:#B3B3B3" data-dismiss="modal">取消</button>
        <button type="button" onclick="updateUserLogin()" class="btn btn-default" style="margin-bottom: 10px;">上传</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script type="text/javascript">
	function updateUserLogin(){
		 var userEmail = document.getElementById("UpuserEmail").value; 
		 var userName = document.getElementById("UpuserName").value; 
		 var userid = document.getElementById("Upuserid").value; 
		
		 alert(userEmail+userName+userid);
			$.post('updateUserLoginNew',$('#updateUserLogInForm').serialize(),function(data){
				if(data=='true'){
					//成功
					$('#addModel').modal('hide');
					//使用js代码发送一个同步请求
					parent.location.href="index";
				}else{
					alert('修改失败');
				}
			},'text');
		
		
		
	}
	
</script>
		
		
		
		
	<!-- ========================    为避免影响其他地方的布局，上面写模态框    =================== -->		
		
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