<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<script charset="utf-8" type="text/javascript">
		    var basePath="<%=path %>"
		    console.log("basePath ==" + basePath);
		    window.UEDITOR_HOME_URL="/MyBlog2/ueditor/";
		</script>
		<title></title>
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
	   <script type="text/javascript"  charset="utf-8" src="/MyBlog2/ueditor/ueditor.config.js"></script>
	<script type="text/javascript"  charset="utf-8" src="/MyBlog2/ueditor/ueditor.all.js"></script>
	<link rel="stylesheet" type="text/css"  charset="utf-8" href="/MyBlog2/ueditor/themes/iframe.css"/> 
	    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	    <script  charset="UTF-8" src="/MyBlog2/ueditor/lang/zh-cn/zh-cn.js"></script>
	    
	    <script type="text/javascript" src="/MyBlog2/js/layui.js" ></script>
	    <link rel="stylesheet" href="/MyBlog2/css/layui.css" />
	    <script>  


        SyntaxHighlighter.config.clipboardSwf = '/MyBlog2/js/clipboard.swf';

        

        SyntaxHighlighter.all();

    
        </script>  
	    

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
		</style>
	</head>
	<body>
		<input type="hidden" value="${tessay.eid }">
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
			<span class="title-text right">欢迎某某某</span>
			<span class="title-text right">本站群:2783214886</span>
		</div>	

		<center>
			<form action="essayAction_saveEditorContent.action" method="post" onsubmit="return show()">
				<input type="hidden" id="test" name="content">
				<input type="hidden" name="eid" value="${tessay.eid }">
				<input class="layui-btn layui-btn-normal" style="margin: 2px 0;" type="submit" value="提交">
			</form>
			<div>
			   <div>
				 	<script  id="myEditor" type="text/javascript" charset="utf-8">
				 		${tessay.content}
					</script>
				</div>
			</div>
		</center>
<script type="text/javascript">
	var ue = new baidu.editor.ui.Editor();
	ue.render("myEditor");
	UE.getEditor("myEditor").setContent($("#content").val());
	function show() {
		console.log("内容"+UE.getEditor("myEditor").getContent());
		$("#test").val(UE.getEditor("myEditor").getContent());
		return true;
	}
</script>
	</body>
</html>
