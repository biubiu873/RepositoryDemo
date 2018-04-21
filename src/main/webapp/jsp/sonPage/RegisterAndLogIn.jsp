
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录/注册</title>

<link href="/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<script src="/js/jquery-1.11.1.min.js"></script>

<style type="text/css">

		body{

			font:14px/28px "微软雅黑";
			

		}
		
		.main1{
			width: 100%;
			opacity:0.8;
			background-image: url("/myImages/bg/bg04.jpg");
			margin:0 auto;
			padding:0 atuo;
			text-align: center;
		}
		
		
		.main2{
			width: 100%;
			opacity:0.8;
			background-image:url("/myImages/bg/bg01.png");
			margin:0 auto;
			padding:0 atuo;
			text-align: center;
		}
		.login{
			width: 40%;
			height: 220px;
			text-align: center;
			margin: 0 auto;
		}
		
		.null1{
			height: 680px;
		}
		
		.null2{
			height: 580px;
		}
		
		.contact *:focus{outline :none;}
		
		.contact{
			
			width: 40%;
			height: 220px;
			text-align: center;
			margin: 0 auto;
			
			
		}

		.contact ul {

			width: 650px;

			margin: 0 auto;

		}

		.contact ul li{
			text-align:left;

			border-bottom: 1px solid #dfdfdf;

			list-style: none;

			padding: 12px;

		}

		.contact ul li label {

			width: 120px;

			display: inline-block;

			float: left;

		}

		.contact ul li input[type=text],.contact ul li input[type=password]{

			width: 220px;

			height: 25px;

			border :1px solid #aaa;

			padding: 3px 8px;

			border-radius: 5px;

		}

		.contact ul li input:focus{

			border-color: #c00;

			

		}

		.contact ul li input[type=text]{

			transition: padding .25s;

			-o-transition: padding  .25s;

			-moz-transition: padding  .25s;

			-webkit-transition: padding  .25s;

		}

		.contact ul li input[type=password]{

			transition: padding  .25s;

			-o-transition: padding  .25s;

			-moz-transition: padding  .25s;

			-webkit-transition: padding  .25s;

		}

		.contact ul li input:focus{

			padding-right: 70px;

		}

		.btn{

			position: relative;

			left: 300px;

		}

		.tips{

			color: rgba(0, 0, 0, 0.5);

			padding-left: 10px;

		}

		.tips_true,.tips_false{

			padding-left: 10px;

		}

		.tips_true{

			color: green;

		}

		.tips_false{

			color: red;

		}
		

  </style>

  <script type="text/javascript">

	    function checkna(){

			na=form1.yourname.value;

		  	if( na.length<1||na.length>12)  

	  		{  	

	  			divname.innerHTML='<font class="tips_false">长度是1~12个字符</font>';
					
	  		     return false;

	  		}else{  

	  		    divname.innerHTML='<font class="tips_true">输入正确</font>';

	  		   return true;

	  		}  

	  	

	  }

	  //验证密码 

		function checkpsd1(){    

			psd1=form1.yourpass.value;  

			var flagZM=false ;

			var flagSZ=false ; 

			var flagQT=false ;

			if(psd1.length<6 || psd1.length>12){   

				divpassword1.innerHTML='<font class="tips_false">长度错误</font>';
				
				return false;
				
			}else

				{   

				  for(i=0;i < psd1.length;i++)   

					{    

						if((psd1.charAt(i) >= 'A' && psd1.charAt(i)<='Z') || (psd1.charAt(i)>='a' && psd1.charAt(i)<='z')) 

						{   

							flagZM=true;

						}

						else if(psd1.charAt(i)>='0' && psd1.charAt(i)<='9')    

						{ 

							flagSZ=true;

						}else    

						{ 

							flagQT=true;

						}   

					}   

					if(!flagZM||!flagSZ||flagQT){

					divpassword1.innerHTML='<font class="tips_false">密码必须是字母数字的组合</font>'; 

					 return false;

					}else{

						

					divpassword1.innerHTML='<font class="tips_true">输入正确</font>';

					 return true;

					}  

				 

				}	

		}

		//验证确认密码 

		function checkpsd2(){ 

				if(form1.yourpass.value!=form1.yourpass2.value) { 

				     divpassword2.innerHTML='<font class="tips_false">您两次输入的密码不一样</font>';
					
					return false;

				} else { 

				     divpassword2.innerHTML='<font class="tips_true">输入正确</font>';
					
					return true;

				}

		}

		//验证邮箱

		

		function checkmail(){

					apos=form1.youremail.value.indexOf("@");

					dotpos=form1.youremail.value.lastIndexOf(".");

					if (apos<1||dotpos-apos<2) 

					  {

					  	divmail.innerHTML='<font class="tips_false">输入错误</font>' ;
						
					  	return false;
					  }

					else {

						divmail.innerHTML='<font class="tips_true">输入正确</font>' ;
						
						return true;
					}

		}
  </script>
	
	
	
</head>
<body>

	
	<div class="main1">
		
		
		<div class="login">
			<a id="login"></a> <!-- 锚点定位点 -->
			<div style="height: 200px;">
				
			</div>
			<form id="loginForm">
				<p class="title" style="color:#00868B;">用户登录</p>
				<p>
					<input type="text"  style=" height:35px; opacity:0.8;  border:none; width:75%; border-radius:5px;" name="email" placeholder="请输入注册过的电子邮箱"  required/>
				</p>
				<p>
					<input type="password" style=" height:35px; opacity:0.8; border:none; width:75%; border-radius:5px;" name="password" placeholder="密码" required>
				</p>
			</form>
			
				<p>
					<input type="button" onclick="login()" style="margin-right: 100%;" value="登 录" class="btn btn-primary" />
				</p>
			<script type="text/javascript">
				function login(){
					$.post('login',$('#loginForm').serialize(),function(data){
						if(data=="0"){
							 parent.location.href="index";
						}
						if(data=="1"){
							alert("Σ(ﾟдﾟlll)这是一个未注册过的邮箱，请重新输入  或者  去注册！");
						}
						if(data=="2"){
							alert("(╬◣д◢)邮箱或密码错误，请重新输入！");
						}
						if(data=="3"){
							alert("ヽ(#`Д´)ﾉ你个大猪蹄子，认真填写表单啊喂！");
						}
						
					},'text');
				}
			</script>
			
			
			
			<!-- 到注册页面的锚点 -->
			<a href="javascript:void(0)"  onclick="document.getElementById('register').scrollIntoView();"><button type="button" class="btn btn-info"  style="margin-top: 40px;">光速注册</button></a>
		</div>
		
		
		
		
		<div class="null1">
			
		</div>
	</div>
		
	
	<div>
		<img src="/myImages/bg/bg03.jpg" class="img-responsive" alt="Responsive image">
	</div>
		
	<div class="main2">	
		
		<div class="contact" >
		
			<a id="register"></a><!-- 锚点定位点 -->
			<div style="height: 200px;">
				
			</div>
		
		
			<!-- 注册表单 -->
			<form id="form1">
	
				<ul>
	
					<li>
	
						<label>用户名：</label>
	
						<input type="text" name="yourname" placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname">长度1~12个字符</span>
	
					</li>
	
					<li>
	
						<label>密码：</label>
	
						<input  type="password" name="yourpass" placeholder="请输入你的密码" onblur="checkpsd1()" required/><span class="tips" id="divpassword1">密码必须由字母和数字组成</span>
	
					</li>
	
					<li>
	
						<label>确认密码：</label>
	
						<input type="password" name="yourpass2" placeholder="请再次输入你的密码" onblur="checkpsd2()" required/><span class="tips" id="divpassword2">两次密码需要相同</span>
	
					</li>
	
					<li>
	
						<label>电子邮箱：</label>
	
						<input type="text" name="youremail" placeholder="这将是你的登录id" onblur="checkmail()" required/><span class="tips" id="divmail"></span>
	
					</li>
					
					<li>
						<button type="button" onclick="register()"  class="btn btn-primary">开始交易ヽ(･ω･´ﾒ)</button>
						<button type="reset" class="btn btn-default" >重置</button>
						
					</li>
				</ul>
			</form>
			
			<script type="text/javascript">
			function register(){
				
				//判断表单是否正确填写
				var formFlag=checkna()&&checkpsd1()&&checkpsd2()&&checkmail();
				if(formFlag){
				
					$.post('register',$('#form1').serialize(),function(data){
						if(data=="0"){
							alert("注册成功,去登陆吧！( • ̀ω•́ )✧");
							$('#form1')[0].reset();
						}
						if(data=="1"){
							alert("邮箱已被使用，请重新输入ಠ╭╮ಠ ");
						}
						if(data=="2"){
							alert("作者的垃圾代码出错了눈v눈");
						}
						if(data=="3"){
							alert("ヽ(#`Д´)ﾉ你个大猪蹄子，认真填写表单啊喂！");
						}
						
					},'text');
				}
				else{
					alert("o(▼皿▼メ;)o  表单填写完整啊，你个大笨蛋！");
				}
				
			}
					
				
				
			</script>
			
			<!-- 去登陆页面的锚点按钮 -->
			<a href="javascript:void(0)" onclick="document.getElementById('login').scrollIntoView();"><button type="button" class="btn btn-info"   style="margin-top: 30px;">去登录</button></a>
		</div>
		
		<div class="null1">
			
		</div>
		
	</div>
</body>
</html>