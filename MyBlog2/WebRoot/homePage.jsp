<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="js/layui.js"></script>
		<link rel="stylesheet" href="css/layui.css" />
		<style type="text/css">
			.title{
				width: 100%;
				height: 80px;
				text-align: center;
			}
			.title-center{
				/*background: black;*/
				line-height: 80px;
			}
			.div-img{
				position: absolute;
				top: 0;
			}
			.search{
				position: absolute;
				right: 0;
				top: 0;
				height: 80px;
				width: 13%;
				margin-right: 40px;
			}
			.title1{
				width: 100%;
				height: 40px;
				background-color: rgb(51,122,183);
			}
			.title-text {
				padding: 0 10px 0 10px;
				line-height: 40px;
				text-align: center;
				color: white;
				display: inline-block;
			}
			
			.left{
				float: left;
			}
			.right{
				float: right;
			}
			.center-div{
				width: 100%;
			}
			.center-div-children1{
				width: 15%;
				/*text-align: center;*/
				/*height: 100px;*/
				/*background-color: wheat;*/
			}
			.center-div-children2{
				width: 85%;
				/*height: 100px;*/
				/*background-color: black;*/
			}
			.daohan{
				width: 80%;
				margin: 0 auto;
				margin-top: 20px;
			}
			.center-content{
				margin-top: 20px;
				width: 95%;
				/*height: 400px;*/
				height: auto;
				border: 1px solid rgb(229,229,229);
				border-radius: 3px;
				display: block;
				text-align: left;
				
			}
			.center-content-title{
				/*float: left;*/
				/*text-align: left;*/
				width: 100%;
				height: 50px;
				line-height: 50px;
				background-color: rgb(245,245,245);
			}
			.basicColor{
				color: blue;
				margin-left: 20px;
				margin-right: 20px;
				/*line*/
			}
			.center-content-card{
				display: inline-block;
				width: 350px;
				height: 150px;
				margin: 20px;
				background: rgb(217,237,247);
				padding: 20px;
				border-radius: 10px;
			}
			.center-content-card:hover{
				background: rgb(223,240,216);
				cursor: pointer;
			}
			.center-content-card-title-text{
				color: rgb(51,122,183);
				font-weight: bold;
			}
			.center-content-card-title{
				height: 50px;
			}
			.center-content-card-content{
				display: block;
				height: 50px;
				line-height: 25px;
				float: left;
			}
			.center-content-num{
				text-align: center;
				line-height: 20px;
				display: inline-block;
				width: 20px;
				height: 20px;
				border-radius: 10px;
				background: rgb(245,245,220);
				color: rgb(188,143,143);
				
			}
			.add-card{
				width: 100%;
				height: 100%;
			}
			.add-card-text{
				text-align: center;
				line-height: 120px;
				font-size: 40px;
			}
			.mask{
				display:none;
				z-index: 99;
				position: absolute;
				top: 0;
				width: 100%;
				height: 100%;
				background-color: rgba(0,0,0,0.7);
				
			}
			.mask-div{
				border: 2px solid wheat;
				border-radius: 5px;
				margin-top: 100px;
				background-color: white;
				width: 300px;
				height: 200px;
			}
			.update-mask-div{
				border: 2px solid wheat;
				border-radius: 5px;
				margin-top: 100px;
				background-color: white;
				width: 300px;
				height: 200px;
			}
			.mask-div-title{
				position: relative;
				width: 100%;
				height: 50px;
				background-color: wheat;
				line-height: 50px;
			}
			.exit{
				position: absolute;
				/*right: 0;*/
				left: 270px;
			}
			html,body{
				width: 100%;
				height: 100%;
			}
			.mask-div-body-input{
				margin-top: 20px;
				width: 80%;
			}
			.mask-div-body-button{
				margin-top: 20px;
				width: 80%;
			}
			.delete{
				width:30px;
				height:100%;
				position:absolute;
				right: 30px;
				top:0px;
				background: white;
				border:1px solid wheat;
				line-height: 40px;
				font-size: 28px;
				border-radius:0 5px 5px 0;
				display: none;

			}
			.stageUpdate{
				width:30px;
				height:100%;
				position:absolute;
				right: 0px;
				top:0px;
				background: white;
				border:1px solid wheat;
				line-height: 40px;
				font-size: 28px;
				border-radius:0 5px 5px 0;
				display: none;
				
			}
			.stageUpdate img{
				display: block;
				margin-top: 5px;
			}
			.list-group-item:hover{
				cursor: pointer;
			}
			.addEssay{
				display:none;
				width: 300px;
				height:400px;
				background:white;
				margin-top: 100px;
				border-radius:5px;
				border:4px solid wheat;
			}
			.updateEssay{
				display:none;
				width: 300px;
				height:300px;
				background:white;
				margin-top: 100px;
				border-radius:5px;
				border:4px solid wheat;
			}
			.addEssay-title,.updateEssay-title{
				border-radius:5px 5px 0 0;
				width: 100%;
				height:50px;
				background:wheat;
				line-height: 50px;
				font-size: 23px;
				color: rgb(216,76,41);
			}
			.addEssay tr,.updateEssay tr{
				margin-top: 300px;
			}
			.addEssay input{
				width: 70%;
				height:30px;
				margin-top: 10px;
				border-radius:5px;
				border:1px solild black;
			}
			.addEssay input[type='submit'] {
				background: wheat;
			}
			#addEssay_exit:hover{
				cursor: pointer;
			}
			#updateEssay_exit:hover{
				cursor: pointer;
			}
			.essay_delete:hover{
				background: red;
				color: white;
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
			<span class="title-text">首页</span>
			<span class="title-text">个人中心</span>
			<span class="title-text">相册</span>
			<span class="title-text">朋友圈</span>
			<c:if test="${sessionScope.user == null }">
				<span class="title-text" onclick="window.location.href='/MyBlog2/login.jsp'">请登录</span>
			</c:if>
			<c:if test="${sessionScope.user != null }">
				<span class="title-text" onclick="window.location.href='/MyBlog2/userAction_exit.action'">退出</span>
			</c:if>
			
			<span class="title-text right">欢迎${sessionScope.user.userName }</span>
			<span class="title-text right">本站群:2783214886</span>
		</div>						

		<div class="center-div">
			<center class="center-div-children1 left">
				<div class="list-group daohan" >
					<a href="#" class="list-group-item active">阶段</a>
					<c:forEach items="${stages }" var="stage1">
							<div style="position: relative;" class="list-group-item" onclick="switchStage(this)" onmouseleave="hiddenDelete(this)" onmouseenter="showDelete(this)">
								<form action="/MyBlog2/mainLoadAction.action" method="post">
									<input type="hidden" name="stageName" value="${stage1.stageName }">
									<div><c:out value="${stage1.stageName }"></c:out></div>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2 }">
										<div class="delete" onclick="deleteStage(this)">-</div>
									</c:if>
									<input type="hidden" name="sid" value="${stage1.sid }">	
								</form>
								<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2 }">
									<div class="stageUpdate" onclick="update_stageName(this)"><img width="100%" alt="" src="/MyBlog2/img/update.png"></div>
								</c:if>
								<input type="hidden" value="${stage1.stageName }">
								<input type="hidden" value="${stage1.sid }">
							</div>
					</c:forEach>
					<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
						<a href="#" onclick="show_Mask()" class="list-group-item">+</a>
					</c:if>
				</div>			
			</center>
			<center class="center-div-children2 left">
				<div class="center-content">
					<div class="center-content-title">
						<span class="glyphicon glyphicon-list basicColor"></span>
						<span id="stageName"><c:out value="${firstTStage.stageName }"></c:out></span>
						<input id="stageId" type="hidden"  value="${firstTStage.sid }">
					</div>
					<div class="center-content-body">
						<c:forEach items="${firstTStage.tEssaies }" var="tessay" varStatus="i">
							<c:if test="${tessay.othervisiable == 1 && sessionScope.user != null && sessionScope.user.uid == 2}">
								<!-- 仅当身份为管理员的时候才显示不公布的文章 -->
								<div class="center-content-card" onclick="edit(this)" style="position: relative;">
									<form action="essayAction_loadContent.action" method="post">
										<input type="hidden" id="eid" name="eid" value="${tessay.eid }">
									</form>
									<div class="center-content-card-title">
										<img width="32px" height="32px" src="${tessay.img }" class="left" />
										<div class="right center-content-card-title-text">[<span id="tessayName"><c:out value="${tessay.name }"></c:out></span>]</div>
									</div>
									<div id="tessayContent" class="center-content-card-content">
										<c:out value="${tessay.txt }"></c:out>
									</div>
									<span class="center-content-num right" style="position: absolute;right: 20px;bottom: 10px;"><c:out value="${i.count }"></c:out></span>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="delete_tessay(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 20px;bottom: 10px;">X</span>
									</c:if>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="update_tessay(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 60px;bottom: 10px;">
											<img alt="" src="/MyBlog2/img/update.png" width="100%">
										</span>
									</c:if>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="update_tessay_visiable(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 100px;bottom: 10px;">
											<img id="visiable_image" src="/MyBlog2/img/visiable${tessay.othervisiable }.png" width="100%">
											<input type="hidden" id="othervisiable" value="${tessay.othervisiable }">
										</span>
									</c:if>
									<input type="hidden" value="${tessay.eid }">
								</div>
							</c:if>
							
							
							<c:if test="${tessay.othervisiable != 1}">
								<!-- 当身份为普通游客的时候不显示不公布的文章 -->
								<div class="center-content-card" onclick="edit(this)" style="position: relative;">
									<form action="essayAction_loadContent.action" method="post">
										<input type="hidden" id="eid" name="eid" value="${tessay.eid }">
									</form>
									<div class="center-content-card-title">
										<img width="32px" height="32px" src="${tessay.img }" class="left" />
										<div class="right center-content-card-title-text">[<span id="tessayName"><c:out value="${tessay.name }"></c:out></span>]</div>
									</div>
									<div id="tessayContent" class="center-content-card-content">
										<c:out value="${tessay.txt }"></c:out>
									</div>
									<span class="center-content-num right" style="position: absolute;right: 20px;bottom: 10px;"><c:out value="${i.count }"></c:out></span>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="delete_tessay(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 20px;bottom: 10px;">X</span>
									</c:if>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="update_tessay(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 60px;bottom: 10px;">
											<img alt="" src="/MyBlog2/img/update.png" width="100%">
										</span>
									</c:if>
									<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
										<span  onclick="update_tessay_visiable(this)" class="center-content-num right essay_delete"  style="position: absolute;left: 100px;bottom: 10px;">
											<img id="visiable_image" src="/MyBlog2/img/visiable${tessay.othervisiable }.png" width="100%">
											<input type="hidden" id="othervisiable" value="${tessay.othervisiable }">
										</span>
									</c:if>
									<input type="hidden" value="${tessay.eid }">
								</div>
							</c:if>
							
							
						</c:forEach>
						<c:if test="${sessionScope.user != null && sessionScope.user.uid == 2}">
							<div class="center-content-card">
								<div class="left add-card">
									<div onclick="showAdd()" class="add-card-text">+</div>
								</div>
							</div>
						</c:if>
						
					</div>
				</div>
			</center>
		</div>
		<center class="mask">
			<!-- 添加阶段 -->
			<div class="mask-div" style="display: none;">
				<div class="mask-div-title">
					添加阶段
			        <a href="#" onclick="exit_Mask()" class="right exit">
			          <span class="glyphicon glyphicon-remove"></span>
			        </a>
				</div>
				<div class="mask-div-body">
				<form action="/MyBlog2/user/stageAction_add.action" method="post">
					<input type="text" name="stageName" class="form-control mask-div-body-input" />
					<input type="submit" value="提交" class="layui-btn mask-div-body-button">
				</form>
				</div>
			</div>
			
			
			<!-- 修改阶段名 -->
			<div class="update-mask-div" style="display: none;">
				<div class="mask-div-title">
					修改阶段
			        <a href="#" onclick="exit_Mask()" class="right exit">
			          <span class="glyphicon glyphicon-remove"></span>
			        </a>
				</div>
				<div class="mask-div-body">
				<form action="/MyBlog2/user/stageAction_updateStage.action" onsubmit="return true;" method="post">
					<input type="text" name="stageName" id="update_stageName" class="form-control mask-div-body-input" />
					<input type="hidden" name="sid" id="update_sid">
					<input type="submit" value="提交" class="layui-btn mask-div-body-button">
				</form>
				</div>
			</div>
			<div id="warnText" style="display: none;color: white;font-size: 24px;margin-top: 300px;background:wheat; height: 60px;width: 300px;line-height: 60px;border-radius:5px;"><c:out value="${warnText }"></c:out></div>
			
			
			
			
			<!-- 发布文章 -->
			<div class="addEssay">
				<div class="addEssay-title" style="position: relative;">
					发布文章<span id="addEssay_exit" style="position: absolute;right: 10px;">X</span>
				</div>
				<form enctype="multipart/form-data" method="post" action="/MyBlog2/user/uploadImgAction.action">
					<table  style="width: 100%;text-align: center;">
						<tr>
							<td>
								<img id="uploadPreview" style="width: 100px; height: 100px;" src="/MyBlog2/img/uploadImg.png" alt="Image preview" />
							</td>
						</tr>
						<tr>
							<td>
								  <input id="uploadImage" style="display: inline;" type="file" name="uploadImg" onchange="loadImageFile();" />
							</td>
						</tr>
						<tr>
							<td>
								<input placeholder="文章名" name="name" type="text">
							</td>
						</tr>
						<tr>
							<td>
								<input placeholder="文章描述" name="txt" type="text">
							</td>
						</tr>
						<tr>
							<td>
								<select style="margin-top: 10px;" name="e_sid">
									<c:forEach items="${stages }" var="stage3">
										<option value="${stage3.sid }"><c:out value="${stage3.stageName }"></c:out></option>
										</div>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="submit">
							</td>
						</tr>
					</table>
				</form>
			</div>
			
			
			
			<!-- 修改阶段内容，图片除外 -->
			<div class="updateEssay">
				<div class="updateEssay-title" style="position: relative;">
					修改文章<span id="updateEssay_exit" style="position: absolute;right: 10px;">X</span>
				</div>
				<form onsubmit="test()" method="post" action="/MyBlog2/user/essayAction_updateEssay.action">
					<input placeholder="文章名" id="updateName" name="name" type="text" class="form-control mask-div-body-input">
					<input placeholder="文章描述" name="txt" id="updateContent" type="text" class="form-control mask-div-body-input">
					<input type="hidden" id="essayId" name="eid">
					<select style="margin-top: 10px;" id="updateEssaySid" name="e_sid">
						<c:forEach items="${stages }" var="stage3">
							<option value="${stage3.sid }"><c:out value="${stage3.stageName }"></c:out></option>
						</c:forEach>
					</select>
					<input type="submit" class="layui-btn mask-div-body-button">
				</form>
			</div>
			
		</center>
		<script>
		function test() {
			alert("提交之前测试");
		}
			var warnText = $("#warnText").html();
			if(warnText != "") {
				$(".mask,#warnText").fadeIn(1000,function() {
					$(".mask,#warnText").fadeOut(2000).html("");
				});
			}
			function show_Mask() {
				$(".mask,.mask-div").fadeIn();
			}
			function exit_Mask() {
				$(".mask,.mask-div").fadeOut();
				$(".update-mask-div").fadeOut();
			}
			$(".stageUpdate").click(function(){
				return false;
			});
			function showDelete(obj) {
				$(obj).children().next().css("display","block").animate({right:'-60px'});
				$(obj).children().children().eq(2).css("display","block").animate({right:'-30px'});
			}
			
			function hiddenDelete(obj) {
				$(obj).children().next().css("display","none").animate({right:'0px'});
				$(obj).children().children().eq(2).css("display","none").animate({right:'30px'});
			}
			function deleteStage(obj) {
				var sid = $(obj).next().val();
			
				window.location.href="/MyBlog2/user/stageAction_delete.action?sid="+sid;
			}
			$(".delete").click(function(){
				return false;
			});
			$(".essay_delete").click(function(){
				
				return false;
			});
			function delete_tessay(obj) {
				
				var eid = $(obj).parent().find("#eid").val();
				window.location.href="/MyBlog2/user/essayAction_delete.action?eid="+eid;
			}
			function update_tessay(obj) {
				$(".mask,.updateEssay").css("display","block");
				var stageId = $("#stageId").val();
				console.log(stageName);
				console.log();
				console.log($(obj).parent().find("#tessayContent").html().trim());
				console.log($(obj).parent().find("#tessayName").html());
				$("#updateName").val($(obj).parent().find("#tessayContent").html().trim());
				$("#updateContent").val($(obj).parent().find("#tessayName").html());
				 $("#updateEssaySid").val(stageId);
				 $("#essayId").val($(obj).parent().find("#eid").val());
			}

			$("input").click(function(){
				return true;
			});
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
			function AJAX(msg,requestUrl,x,obj) {
				 $.ajax({ 
					 data:msg,
					 method:"post",
					 dataType : "json",   
		             url : requestUrl,  
		             success:function(json){
		            	x(json,obj);
		             }
				});
			 }
			function update_tessay_visiable(obj) {
				var eid = $(obj).parent().find("#eid").val();
				var othervisiable = $(obj).find("#othervisiable").val();
				othervisiable = othervisiable == 0 ? 1 : 0;
				var msg={"eid":eid,"othervisiable":othervisiable};
				url = "/MyBlog2/user/essayAction_othervisiable.action";
				AJAX(msg,url,update_tessay_visiableCallback,obj);
			}
			function update_tessay_visiableCallback(json,obj) {
				console.log("d"+json);
				console.log("d"+obj);
				$(json).each(function() {
					if(this.type == "OK") {
						console.log("eid"+$(obj).parent().find("#eid").val());
						var src = $(obj).find("#visiable_image").attr("src");
						src = src == "/MyBlog2/img/visiable0.png" ? "/MyBlog2/img/visiable1.png" :"/MyBlog2/img/visiable0.png"; 
						$(obj).find("#visiable_image").attr("src",src);
						if(src == "/MyBlog2/img/visiable0.png") {
							$("#warnText").html("成功设置为公布文章");
						} else {
							$("#warnText").html("成功设置为不公布文章");
						}
						$(".mask,#warnText").fadeIn();
						$(".mask,#warnText").fadeOut(3000);
					}
				});
			}
			function edit(obj) {
				$(obj).children().submit();
			}
			$("#addEssay_exit,#updateEssay_exit").click(function() {
				$(".mask,.addEssay,.updateEssay").fadeOut();
			});
			function showAdd() {
				$(".mask,.addEssay").fadeIn();
			}
			function switchStage(obj) {
				$(obj).children().submit();
			}
			function update_stageName(obj) {
				var oldName = $(obj).next().val();
				var sid = $(obj).next().next().val();
				$("#update_stageName").val(oldName);
				$("#update_sid").val(sid);
				$(".mask,.update-mask-div").fadeIn();
			}
		</script>
		
		<script type="text/javascript">
	    oFReader = new FileReader(), rFilter = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;
	
	    oFReader.onload = function(oFREvent) {
	        document.getElementById("uploadPreview").src = oFREvent.target.result;
	    };
	
	    function loadImageFile() {
	        if (document.getElementById("uploadImage").files.length === 0) {
	            return;
	        }
	        var oFile = document.getElementById("uploadImage").files[0];
	        if (!rFilter.test(oFile.type)) {
	            alert("You must select a valid image file!");
	            return;
	        }
	        oFReader.readAsDataURL(oFile);
	    }
	    </script>
	</body>
</html>
