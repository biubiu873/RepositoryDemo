<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>pricing-column</title>

	<style>
		body {
			padding: 0;
			margin: 0;
			font-size: 12px;
			font-family: 'Microsoft yahei';
		}

		.container {
			width: 60%;
			margin: 30px auto;
			margin-top: 50px;
		}

		ul {
			margin: 0;
			padding: 0;
			list-style-type: none;
			border: 1px solid #eee;
		}

		ul:after {
			content: '';
			clear: both;
			display: block;
			/*width: 100%;*/
		}

		ul li {
			float: left;
			transition: all .2s;
			/*transition-delay: 1s*/
			width: 25%;
			height: 360px;
			border-right: 1px solid #ccc;
			box-sizing: border-box;
			padding: 10px;
		}

		ul li h2 {
			font-size: 20px;
			text-align: center;
		}

		ul li h3 {
			font-size: 18px;
			text-align: center;
			border-bottom: 1px solid #ccc;
			padding-bottom: 10px;
		}

		ul li a {
			display: block;
			width: 90%;
			margin: 10px auto;
			/*height: 60px;*/
			/*line-height: 60px;*/
			text-align: center;
			background: #DA6D0E;
			border-radius: 10px;
			transition: all .5s;
			position: relative;
			padding: 20px 0;
			text-decoration: none;
			color: #fff;
		}

		ul li a span {
			display: block;
		}


		ul li a:hover {
			box-shadow: 0px 1px 10px rgba(0,0,0,.8);
		}

		ul li p {
			text-align: center;
			color: #111;
		}

		ul li:nth-child(4) {
			border-right: none;
		}

		ul li:hover{
			/*background: #efefef;*/
			box-shadow: 0px 4px 20px rgba(0,0,0,.3);
			border-radius: 10px;
			transform: scale(1.1);
			-webkit-transform: scale(1.1);
			border: none;
			/*border: 1px solid #ccc;*/
			background: #fff;
		}


	</style>
</head>
<body>
	<div class="container">
		<ul>
			<li>
				<h2>Basic</h2>
				<h3>£3.99 ($6 US)</h3>
				<p>
					
				    15 active clients <br/>
				    Unlimited invoices per month <br/>
				    Unlimited staff logins <br/>
				    Free upgrades <br/>
				    RapidSSL Certificate <br/>

				Unlimited telephone & email support
				</p>
				<p>
					<a href="javascript:;"><span>Sign Up</span><span>30 day free trial</span></a>
				</p>
			</li>
			<li>
				<h2>Basic</h2>
				<h3>£3.99 ($6 US)</h3>
				<p>
					
				    15 active clients <br/>
				    Unlimited invoices per month <br/>
				    Unlimited staff logins <br/>
				    Free upgrades <br/>
				    RapidSSL Certificate <br/>

				Unlimited telephone & email support
				</p>
				<p>
					<a href="javascript:;"><span>Sign Up</span><span>30 day free trial</span></a>
				</p>
			</li>
			<li>
				<h2>Basic</h2>
				<h3>£3.99 ($6 US)</h3>
				<p>
					
				    15 active clients <br/>
				    Unlimited invoices per month <br/>
				    Unlimited staff logins <br/>
				    Free upgrades <br/>
				    RapidSSL Certificate <br/>

				Unlimited telephone & email support
				</p>
				<p>
					<a href="javascript:;"><span>Sign Up</span><span>30 day free trial</span></a>
				</p>
			</li>
			<li>
				<h2>Basic</h2>
				<h3>£3.99 ($6 US)</h3>
				<p>
					
				    15 active clients <br/>
				    Unlimited invoices per month <br/>
				    Unlimited staff logins <br/>
				    Free upgrades <br/>
				    RapidSSL Certificate <br/>

				Unlimited telephone & email support
				</p>
				<p>
					<a href="javascript:;"><span>Sign Up</span><span>30 day free trial</span></a>
				</p>
			</li>
		</ul>
	</div>
</body>
</html>