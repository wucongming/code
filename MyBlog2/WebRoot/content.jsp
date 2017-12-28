<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<script type="text/javascript" src="/MyBlog2/js/shCore.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushBash.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushCpp.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushCSharp.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushCss.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushDelphi.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushDiff.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushGroovy.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushJava.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushJScript.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushPhp.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushPlain.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushPython.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushRuby.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushScala.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushSql.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushVb.js"></script>
		<script type="text/javascript" src="/MyBlog2/js/shBrushXml.js"></script>
		<link type="text/css" rel="stylesheet" href="/MyBlog2/css/shCore.css"/>
		<link type="text/css" rel="stylesheet" href="/MyBlog2/css/shThemeDefault.css"/>
		 <script type="text/javascript">

        SyntaxHighlighter.config.clipboardSwf = 'scripts/clipboard.swf';

        

        SyntaxHighlighter.all();

    </script>
    <script src="/MyBlog2/layui/lay/dest/layui.all.js"></script>  
    <link type="text/css" rel="stylesheet" href="/MyBlog2/layui/css/layui.css">
<script>
;!function(){
  //当使用了 layui.all.js，无需再执行layui.use()方法
  var from = layui.form()
  ,layer = layui.layer;
  
  //…
}();
</script> 

		<style type="text/css">
			.title {
				width: 100%;
				height: 80px;
				text-align: center;
			}
			.title-center {
				/*background: black;*/
				line-height: 80px;
			}
			.div-img {
				position: absolute;
				top: 0;
			}
			.search {
				position: absolute;
				right: 0;
				top: 0;
				height: 80px;
				width: 13%;
				margin-right: 40px;
			}
			.title1 {
				width: 100%;
				height: 40px;
				background-color: rgb(51, 122, 183);
			}
			.title-text {
				padding: 0 10px 0 10px;
				line-height: 40px;
				text-align: center;
				color: white;
				display: inline-block;
			}
			.title-text:hover{
				cursor: pointer;
			}
			.left {
				float: left;
			}
			.right {
				float: right;
			}
			.center-div {
				width: 100%;
			}
			.center-div-children1 {
				width: 15%;
				position: fixed;
				/*text-align: center;*/
				/*height: 100px;*/
				/*background-color: wheat;*/
			}
			.center-div-children2 {
				width: 85%;
				/*height: 100px;*/
				/*background-color: black;*/
			}
			.daohan {
				width: 80%;
				margin: 0 auto;
				margin-top: 20px;
			}
			.center-content {
				margin-top: 20px;
				width: 95%;
				/*height: 400px;*/
				height: auto;
				border: 1px solid rgb(229, 229, 229);
				border-radius: 3px;
				display: block;
				text-align: left;
			}
			.center-content-title {
				/*float: left;*/
				/*text-align: left;*/
				
				width: 100%;
				height: 50px;
				line-height: 50px;
				background-color: rgb(245, 245, 245);
			}
			.basicColor {
				color: blue;
				margin-left: 20px;
				margin-right: 20px;
			}
			.center-content-card {
				display: inline-block;
				width: 350px;
				height: 150px;
				margin: 20px;
				background: rgb(217, 237, 247);
				padding: 20px;
				border-radius: 10px;
			}
			.center-content-card:hover {
				background: rgb(223, 240, 216);
				cursor: pointer;
			}
			.center-content-card-title-text {
				color: rgb(51, 122, 183);
				font-weight: bold;
			}
			.center-content-card-title {
				height: 50px;
			}
			.center-content-card-content {
				display: block;
				height: 50px;
				line-height: 25px;
				float: left;
			}
			.center-content-num {
				text-align: center;
				line-height: 20px;
				display: inline-block;
				width: 20px;
				height: 20px;
				border-radius: 10px;
				background: rgb(245, 245, 220);
				color: rgb(188, 143, 143);
			}
			.add-card {
				width: 100%;
				height: 100%;
			}
			.add-card-text {
				text-align: center;
				line-height: 120px;
				font-size: 40px;
			}
			.discuss{
			}
			.discuss-title{
				height:40px;
				line-height: 40px;
				margin-left: 30px;
			}
			.a-discuss{
				
				
			}
			.time{
				margin-left: 30px;
			}
			.discuss-body{
				padding:10px 3px 10px 3px;
				border: 1px solid rgb(159,159,159);
				width: 100%;
			}
			.discuss-content{
				border-bottom: 1px solid rgb(159,159,159);
				word-wrap:break-word; 
				line-height: 30px;
			}
			.reply-user{
				padding: 10px 0px 10px 30px;
				width: 100%;
			}
			.reply-content{
				display: block;
				margin-left: 10px;
				width: 78%;
				word-wrap:break-word; 
			
			}
			body,html{
				width: 100%;
				height: 100%;
			}
			#mask{
				
				z-index: 99;
				position: fixed;
				top:0;
				background:rgba(0,0,0,0.7);
			}
		</style>
	</head>

	<body>
		<div class="title title-center">
			<div class="div-img">
				<img src="/MyBlog2/img/logo.png" />
			</div>
			<div class="">模仿天猫SSH版上架,本站服务全程免费</div>
			<div class="search title-center">
				<div class="input-group">
					<input style="margin-top: 23px;" name="outsideSearchKeyword" class="form-control" placeholder="搜索..">
					<span class="input-group-btn ">
						<button class="btn btn-default" type="submit">
							<span class="glyphicon glyphicon-search"></span>
					</button>
					</span>
				</div>
			</div>
		</div>
		<div class="title1">
			<span class="title-text" onclick="window.location.href='/MyBlog2/mainLoadAction.action'">首页</span>
			<span class="title-text">个人中心</span>
			<span class="title-text">相册</span>
			<span class="title-text">朋友圈</span>
			<c:if test="${sessionScope.user == null }">
				<span class="title-text" onclick="window.location.href='/MyBlog2/login.jsp'">管理员登录</span>
			</c:if>
			<c:if test="${sessionScope.user != null }">
				<span class="title-text" onclick="window.location.href='/MyBlog2/userAction_exit.action'">退出</span>
			</c:if>
			<span class="title-text right">欢迎某某某</span>
			<span class="title-text right">本站群:2783214886</span>
		</div>

		<div class="center-div">
			<center class="center-div-children1 left">
				<div class="list-group daohan" >
					<a href="#" class="list-group-item active">阶段</a>
					<c:forEach items="${stages }" var="stage1">
							<div style="position: relative;" class="list-group-item" onclick="switchStage(this)">
								<form action="/MyBlog2/mainLoadAction.action" method="post">
									<input type="hidden" name="stageName" value="${stage1.stageName }">
									<div><c:out value="${stage1.stageName }"></c:out></div>
									<input type="hidden" value="${stage1.sid }">	
								</form>
							</div>
					</c:forEach>
				</div>			
			</center>
			<center class="center-div-children2 right">
				<div class="center-content">
					<div class="layui-tab" lay-filter="test">
						<ul class="layui-tab-title">
							<li class="layui-this" lay-id="11">博客内容</li>
							<li lay-id="22">资源下载</li>
						</ul>
						<div class="layui-tab-content">
							<div class="layui-tab-item layui-show">
							<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
								<form action="/MyBlog2/user/essayAction_toUpdateContent.action" method="post">
									<input id="eid" type="hidden" value="${tessay.eid }" name="eid">
									<input class="btn btn-default" value="编辑内容" type="submit">
								</form>
							</c:if>
							
							<input id="eid" type="hidden" value="${tessay.eid }">
							<!--
                            	作者：353060075@qq.com
                            	时间：2017-07-05
                            	描述：下面是从数据库中取出来的代码
                            -->
								<!-- <pre class="brush:java;toolbar:true">fdafda</pre>
									<p>
									    <br/>
									</p>
                            	-->
                            	${tessay.content }
                            	
							</div>
							<div class="layui-tab-item">内容2</div>

						</div>
					</div>
				</div>
			</center>
				<div style="width: 80%;margin-right: 40px;" class="right">
					<div style="width: 100%;height: 40px;background-color:rgb(252,248,227);border:2px solid rgb(250,235,204);border-radius:5px;line-height:40px;font-size:25px;">讨论区</div>
					<br>
					<br>
					<span style="font-size: 18px;line-height: 30px;">
						尽量提供截图、代码和异常信息，有助于分析和解决问题。<br>
						也可进本站QQ群交流: 暂时无<br> 
						站长会在每个工作日早上回答所有的提问（如果有漏掉没有回答的，请进群提醒一下）<br> 
						 提问尽量提供完整的代码，环境描述，越是有利于问题的重现，您的问题越能更快得到解答。<br>
						 对教程中代码有疑问，请提供是哪个步骤，哪一行有疑问，这样便于快速定位问题，提高问题得到解答的速度 <br>
						 站长是玻璃心，提问的时候请语气温柔些 kiss~</span>
					<br>
					<br>
					<div style="width: 100%;height:">
					
					</div>
					<textarea id="demo" name="upload" style="display: none;">由于插件缺陷，请自动删除输入框中内容。站长在后期将更换插件,谢谢。</textarea>
					<button onclick="getContent()" class="btn btn-default" style="margin: 30px 0;">发布</button>
					<div id="discussArea" style="border: 1px solid rgb(159,159,159);">
						<div class="discusses" style="width: 100%;">
							<c:forEach var="discusses" items="${tessay.tDiscuss }">
								<div class="discuss">
									<div class="discuss-title">
										<div class="left">${discusses.TUser.userName }</div>
										<div class="left time" >${discusses.time }</div>
										<div class="right" style="margin-right: 30px;">
											<c:if test="${sessionScope.user.uid == 2 }">
												<button onclick="delete_discuss(${discusses.did})" class="btn btn-default">删除</button>
											</c:if>
											<button onclick="show(this)" class="btn btn-default">回复</button>
											<input type="hidden" value="${discusses.did }">
										</div>
									</div>
									
									<div class="discuss-body">
										<div class="discuss-content">${discusses.content }</div>
										<c:forEach var="replies" items="${discusses.TReplies }">
											<div class="reply-content">
												<div class="reply-user">${replies.TUser.userName }:</div>
												<div class="reply-content">${replies.content }</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</c:forEach>
							

							
						</div>
					</div>
				</div>

		</div>
		<c:if test="${sessionScope.user != null }">
			<input type="hidden" id="isLogin" value="1">
		</c:if>
		<c:if test="${sessionScope.user == null }">
			<input type="hidden" id="isLogin" value="0">
		</c:if>
		<center id="mask" style="width: 100%;height: 100%;display:none;">
			<div id="reply" style="width: 600px;height: 600px;background: white;margin-top: 100px;display:none;">
				<div style="width: 100%;height: 60px;background: wheat;font-size: 26px;line-height: 60px;color:white;"><span>回复评论</span><span class="right" style="margin-right: 30px;">X</span></div>
				<textarea id="demo1"  style="background: white;width: 80%;height: 300px;">由于插件缺陷，请自动删除输入框中内容。站长在后期将更换插件,谢谢。</textarea>
				<form action="/MyBlog2/user/replyAction_add.action" method="post" onsubmit="reply()">
					<input type="hidden" name="eid" id="r_eid">
					<input type="hidden" id="did" name="r_did">
					<input type="hidden" id="reply-content" name="content">
					<input type="submit" value="回复" class="btn btn-default" style="width: 60%;margin-top: 50px;">
				</form>
			</div>
			<div id="warnText" style="color: black;font-size:26px;margin-top: 300px;background: wheat; padding: 20px;width: 200px;display:none;border-radius:10px;"></div>
		</center>
		<script>
			var index,layedit,index1; 
			layui.use('layedit', function(){
			  layedit = layui.layedit;
			  layedit.set({
				  uploadImage: {
				    url: '/MyBlog2/layUIImageUploadAction.action' //接口url
				    ,type: 'post' //默认post
				  }
				});
			 index = layedit.build('demo'); //建立编辑器
			 index1 = layedit.build('demo1');
			});
			function delete_discuss(did) {
				var eid = $("#eid").val();
				window.location.href="/MyBlog2/user/discussAction_delete.action?did="+did+"&eid="+eid;
			}
			function show(obj) {
				$("#reply").css("display","block");
				$("#mask").fadeIn();
				$("#did").val($(obj).next().val());
			}
			function reply() {
				if(!isLogin()) {
					return;
				}
				$("#r_eid").val($("#eid").val());
				$("#reply-content").val(layedit.getContent(index1));
				
				$("#mask").fadeOut(3000,function(){
					$("#reply").css("display","none");
				});
				
			}

			function isLogin() {
				if($("#isLogin").val() == 0) {
					
					$("#warnText").html("请登录").css("display","block");
					$("#mask").fadeIn();
					$("#mask").fadeOut(3000,function(){
						$("#warnText").html("").css("display","none");
					});
					return false;
				}
				return true;
			}
			function getContent()  {
				if(!isLogin()) {
					return;
				}
				var eid = $("#eid").val();
				console.log(eid);
				var content = layedit.getContent(index);	
				console.log(content);
				var msg = {"d_eid":eid,"content":content};
				console.log(msg);
				var url = "/MyBlog2/user/discussAction_add.action";
				
				AJAX(msg,url,saveCallBack);
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
			function saveCallBack(json) {
				console.log(json);
				 $(json).each(function() {
	            		if(this.type == "success") {
	            			$(".discusses").prepend(
	            					"<div class='discuss'>"+
									"<div class='discuss-title'>"+
										"<div class='left'>"+this.name+"</div>"+
										"<div class='left time' >"+this.time+"</div>"+
										"<div><button onclick='show(this)' class='btn btn-default'>回复</button></div>"+
										"<input type='hidden' value="+this.did+">"+
									"</div>"+
									
									"<div class='discuss-body'>"+
										"<div class='discuss-content'>"+this.content+"</div>"+
									"</div>"+
								"</div>");
	            			$("#warnText").html("发布成功").css("display","block");
	            			$("#mask").fadeIn();
	            			$("#mask").fadeOut(3000,function(){
	            				$("#warnText").html("").css("display","none");
	            			});
	            		}
	            		
	            	 });
			}
		</script>
		<script>
			layui.use('element', function() {
				var $ = layui.jquery,
					element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

				//触发事件
				var active = {
					tabChange: function() {
						//切换到指定Tab项
						element.tabChange('demo', '22'); //切换到：用户管理
					}
				};

				$('.site-demo-active').on('click', function() {
					var othis = $(this),
						type = othis.data('type');
					active[type] ? active[type].call(this, othis) : '';
				});

				//Hash地址的定位
				var layid = location.hash.replace(/^#test=/, '');
				element.tabChange('test', layid);

				element.on('tab(test)', function(elem) {
					location.hash = 'test=' + $(this).attr('lay-id');
				});

			});
			function switchStage(obj) {
				$(obj).children().submit();
			}
		</script>
	</body>

</html>