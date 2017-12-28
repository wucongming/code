<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>酱菜-欢迎登录</title>
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
			*{
				margin: 0;
				padding: 0;
			}
			html{
			}
			#all{
				width: 1250px;
				margin: 0 auto;
				
			}
			#title{
				width: 100%;
				height: 100px;
				line-height: 100px;
			}
			#title a{
				float: left;
			}
			#title a img{
				vertical-align: middle;
				display: inline-block;
			}
			#title span{
				font-size: 26px;
				vertical-align: middle;
				margin-left: 20px;
			}
			#content{
				webkit-box-shadow:0 0 10px rgba(105, 105, 105, 0.8);  
  			-moz-box-shadow:0 0 10px rgba(105, 105, 105, 0.8);  
  			box-shadow:0 0 10px rgba(105, 105, 105, 0.8);
				float: left;
				width: 100%;
				min-width: 1250px;
				margin: 0 auto;
				height: 700px;
				
			}
			#contentRegister{
				width: 100%;
				margin-top: 50px;
			}
			#contentBottom{
				float: left;
				width: 100%;
				text-align: center;
			}
			#bottomBorder {
				display:inline-block;
				width: 20px;
				text-align: center;
			}
			#aboutText,#copyRight{
				color: rgb(102,102,102);
				font-size: 12px;
			}
			#about{
				height: 60px;
				line-height: 60px;
			}
			
			#aboutText:hover{
				cursor: pointer;
				color: rgb(228,57,60);
			}
			#login{
				font-size: 16px;
				float: right;
			}
			#login a{
				float: right;
			}
			#contentRegister{
				width: 1250px;
				height: 10px;
			}
			#form{
				width: 50%;
				float: left;
				border-right: 1px solid gainsboro;
			}
			#registerType{
				width: 50%;
				height: 10px;
				float: left;
			}
			#inputDIV{
				padding: 10px;
				line-height: 50px;
				height: 70px;
				width: 400px;
				border: 1px solid gainsboro;
				
			}
			input{
				width: 200px;
				border: 0;
				margin-left: 20px;
			}
			.warn{
				display: none;
			}
			#warn1,#warn3,#warn5{
				display: block;
			}
			.warnClass{
				height:30px;
			}
			input[type="submit"] {
				background-color: rgb(238,24,24);
				color: white;
				font-weight: 500;
				font-size: 20px;
				width: 100%;
				margin: 0;
				height: 50px;
				margin-top: 20px;
			}
			#registerType
			{
				width: 49%;
				float: left;
			}
			#type1{
				width: 200px;
				height: 30px;
				border-bottom: 1px solid grey;
				padding-bottom: 60px;
			}
			
			#img1{
				width: 40px;
				height: 30px;
				background: url(img/icon.png) 0px -50px no-repeat;
				float: left;
			}
			
			#type2{
				margin-top:25px;
				width: 200px;
				height: 60px;
			}
			
			#img2{
				margin-top: 15px;
				width: 40px;
				height: 30px;
				background: url(img/icon.png) -50px -50px no-repeat;
				float: left;
			}
			
			#typeText{
				width: 140px;
				float: left;
				margin-left: 20px;
				font-size: 20px;
				color: rgb(102,102,102);
				line-height: 30px;
			}
		</style>
	</head>
	<!--#1da2ff-->
	<body>
		<div id="all">
			<div id="title">
				<a>
					<img src="img/logo-201305-b.png" />
				</a>
				<span>欢迎注册</span>
				<div id="login">已有账号？<a href="index.jsp">请登录</a></div>
			</div>
		</div>
		<div id="borderLine"></div>
			<center id="content">
			<div id="contentRegister">
				<div id="registerForm">
					<form action="userAction_register.action" method="post" onsubmit="return check()" id="form">
						<table>
							<tr>
								<td>
									<div id="inputDIV">
										<span id="inputDIVText">账&nbsp;&nbsp;&nbsp;&nbsp;号</span>
										<input name="account" oninput="check_account(this)" onfocus="focusIn(this)" onblur="jk(this)"  id="input1" type="text" placeholder="您的账号名和登录名" />
									</div>
								</td>
							</tr>
							<tr>
								<td class="warnClass">
									<span id="warn1" class="warns">只支持数字、大小写字母，4-20个字符</span>
									<span id="warn2" class="warn">格式不正确</span>
								</td>
							</tr>
							<tr>
								<td>
									<div id="inputDIV">
										<span id="inputDIVText">设置密码</span>
										<input name="passWord" onfocus="focusIn(this)" oninput="check_password(this)" id="input2" type="text" placeholder="建议至少使用两种数字组合" />
									</div>
								</td>
							</tr>
							<tr>
								<td class="warnClass">
									<span id="warn3" class="warn">建议使用6-20个数字与字母组合</span>
									<span id="warn4" class="warn">格式不正确</span>
								</td>
							</tr>
							<tr>
								<td>
									<div id="inputDIV">
										<span id="inputDIVText">用户名</span>
										<input name="userName" id="input3" type="text" placeholder="请输入用户名" />
									</div>
								</td>
							</tr>
							<tr>
								<td class="warnClass">
									<span id="warn5" class="warn">只要不为空即可</span>
									<span id="warn6" class="warn">格式不正确</span>
								</td>
							</tr>
							<tr>
								<td>
									<input type="submit" value="立即注册" />
								</td>
							</tr>
						</table>
					</form>
					<div id="registerType">
						<div id="type1">
							<div id="img1"></div>
							<div id="typeText">企业用户注册</div>
						</div>
						<div id="type2">
							<div id="img2"></div>
							<div id="typeText">INTERNATIONAL CUSTOMERS</div>
						</div>
					</div>
				</div>
			</div>
		</center>
			<div id="contentBottom">
				<div id="about" >
					<span id="aboutText">联系我们 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">关于我们 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">人才招聘 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">商家入驻 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">广告服务 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">手机京东  </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">友情链接</span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">销售联盟 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">京东社区 </span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">京东公益</span>
					<span id="bottomBorder">|</span>
					<span id="aboutText">English Site </span>
				</div>
				<div id="copyRight">Copyright © 2004-2017  酱菜JD.com 版权所有</div>
			</div>
			<center style="width:100%;height:100%;position:absolute;top:0; display: none;">
				<div id="warnText" style="background-color:rgba(0,0,0,.7);margin-top:300px; width: 300px;height:100px;border-radius:5px;color:white;line-height:50px;font-size:24px;"><c:out value="${warnText }"/></div>
			</center>
			<img alt="" id="img" style="display: none;" src="">
		<script>
			var account = false,passWord = false;
			function check_account(obj) {
				var account = $(obj).val();
				var msg={"account":account};
				var url = "userAction_checkAccount.action";
				AJAX(msg,url,check_account_callback)
			}
			
			function check_account_callback(json) {
				$(json).each(function(){
					if(this.type == "ERROR") {
						$("#warn2").html("账号已存在");
						$("#warn1").css("display","none");
						$("#warn2").css("display","block");
						account = false;
					} else {
						var reg = /^[\da-zA-Z]{4,}$/;
						console.log(this.content);
						if(reg.test(this.content)) {
							account = true;
							$("#warn2").html("账号可以注册");	
						} else {
							account = false;
							$("#warn2").html("格式不正确");
						}
							
						$("#warn1").css("display","none");
						$("#warn2").css("display","block");

					}
				});
			}
			
			function check_password(obj) {
				$("#warn3").css("display","none");
				$("#warn4").css("display","block");
				var password = $(obj).val();
				var reg = /^[\d\w]{6,20}$/;
				if(reg.test(password)) {
					$("#warn4").html("格式正确");
					passWord = true;
				} else {
					passWord = false;
					$("#warn4").html("格式不正确");
				}

			}
			function focusIn(obj) {
				$(obj).parent().parent().parent().next().children().children().css("display","block");
			}
			function jk(obj) {
				$(obj).parent().parent().parent().next().children().children().css("display","block").next().css("display","block");
			}
			
			function check() {
				console.log("验证")
				console.log(account)
				console.log(password)
				console.log($("#input3").val())
				if(account && passWord && $("#input3").val() != "") {
					
					
					console.log("通过")
					return true;
				} else {
					console.log("不通过")
					return false;
				}
			}
			
			function AJAX(msg,requestUrl,x) {
				 $.ajax({ 
					 data:msg,
					 method:"post",
					 dataType : "json",   
		             url : requestUrl,  
		             success:function(json){
		            	x(json);
		             }
				});
			 }
		</script>
	</body>
</html>
