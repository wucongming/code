<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
if(!request.getRemoteAddr().equals("127.0.0.1")){
		out.println("本资源并未授权给您的地址使用");
		return;
}
%>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
		<style>
			body{
				background-color:#e7e7e9;
				background-image: url(images/pageBack.png);
				background-repeat:no-repeat;
				background-size:100% 100%; 
			}
			table{
				box-shadow:0 0 20px 0 #000000;
				border-collapse:collapse;
				margin:10px;
			}
			button{
				margin:2px; 
				width:100px;
				height:36px;
				line-height:32px;
				font-family: "Microsoft YaHei";
				font-size:16px;
				color:white;
				background-image: url(images/button.png);
				background-repeat:no-repeat;
				border-radius:5px;
				border: 1px solid #AAAAAA;
			}
			
			#modelCanvas{
				background-image: url(images/background.png);
				background-size:1024 800; 
				background-repeat:no-repeat;
			}
			
			#imageList{
				height:800;
				overflow:scroll;
				background-image: url(images/imageList.png);				
			}
			
			#imageList img{
				width:160;
				margin:5px;				
			}
			
			#imageList img:hover{
				box-shadow:0px 0px 32px #FFFFFF;		
			}
		</style>
		<script>
				/* 初始化，向衣橱填充类型为 1 的物品 */
				$(document).ready(function(){
					var init = new DBEntity(0,0,"","",0,0,0,0,1);
					fetchCodeImageListData(init);
				});
				

				/* 向衣橱填充类型为 kind 的物品     点击按钮后显示相应分类下物品 */
				function requestCodeImage(kind){

					var imageList = new DBEntity(0,"","","",0,0,0,0,kind);
					//imageList.kind = kind;
					request(imageList,"POST","app/codeImage/list",fetchCodeImageListData);
				}
				
				/* 实体bean对象 */
				function DBEntity(id,code,caption,url,x,y,w,zIndex,kind){
					 var o = {};
					 o.id = id;
					 o.code = code;
					 o.caption = caption;
					 o.url = url;
					 o.x = x;
					 o.y = y;
					 o.w = w;
					 o.zIndex = zIndex;
					 o.kind = kind;
					 return o;
				 }
				 
				/* 获取衣橱物品数据 */
				function fetchCodeImageListData (data) {
					if(data!=undefined){
					 }
					
					 var imageList = new DBEntity(0,"","","",0,0,0,0,data.kind)
					 request(imageList,"POST","app/codeImage/list",refreshCodeImageList);
					 
				}
				 
				/* 使用衣橱物品数据进行用户界面展示 */
				function refreshCodeImageList(data){	 
					 var imageList = $("#imageList");
					 imageList.html();
					 
					 $(data).each(function(index,images){
						 //alert(images.id+"   "+images.code+"   "+images.caption+"   "+images.url+"   "+images.x+"   "+images.y+"   "+images.w+"   "+images.zIndex+"   "+images.kind)
						 var newSuit = new DBEntity(images.id,images.code,images.caption,images.url,images.x,images.y,images.w,images.zIndex,images.kind)
						 var cell = $("<div onclick='wearIt(this)'>");
						 //alert("this" + this.url);
						 	 cell.attr("id",images.id);
					    	 cell.attr("caption",images.caption);
					     	 cell.attr("x",images.x);
					     	 cell.attr("y",images.y);
					     	 cell.attr("w",images.w);
					     	 cell.attr("url",images.url);
					     	 cell.attr("kind",images.kind);
					     	 cell.attr("code",images.code);
					     	 cell.css("zIndex",images.zIndex);
					     	 alert("zIndex"+cell.attr("zIndex"))
					     	 
						 var image = $("<img>");
						     image.attr("src",images.url);
						     
						 var p = $("<p>");
							 p.html(images.caption);
						 
						 cell.append(image);
						 cell.append(p);
						 imageList.append(cell);
					 });
						
				}
				 
				/* 给模特穿戴物品 */
				function wearIt(object){
					//console.log(object)
					var id = $(object).attr("id")
					var code = $(object).attr("code")
					var caption = $(object).attr("caption")
					var url = $(object).attr("url")
					var x = $(object).attr("x")
					var y = $(object).attr("y")
					var w = $(object).attr("w")
					var zIndex = $(object).attr("zIndex")
					var kind = $(object).attr("kind")
					alert("========="+object.zIndex)
					//alert(object.id+"   "+object.code+"   "+object.caption+"   "+object.url+"   "+object.x+"   "+object.y+"   "+object.w+"   "+object.zIndex+"   "+object.kind);
					var newSuit = new DBEntity(id,code,caption,url,x,y,w,zIndex,kind);
					console.log(newSuit)
					
					request(newSuit,"POST","app/suits/add",loadSuit);
				}
				
				/* 给模特脱掉物品 */
				function takeoff(id){
					var delSuit = new DBEntity(id);
					request(delSuit,"POST","app/suits/delete",saveSuitPart);	
				}

				/* 保存模特穿戴的物品 */
				function saveSuitPart(suit){	
					var modelCanvas=$("#modelCanvas");
					var newSuit = new DBEntity();
					newSuit.id = suit.id;
					newSuit.code = suit.code;
					newSuit.caption = suit.caption;
					newSuit.url = suit.url;
					newSuit.x = suit.x;
					newSuit.y = suit.y;
					newSuit.w = suit.w;
					newSuit.zIndex = suit.zIndex;
					newSuit.kind = suit.kind;
					
					request(newSuit,"POST","app/suits/save",loadSuit);
				}
				
				/* 从数据库加载模特穿戴的物品数据 */
				function loadSuit(){
					//var newSuit = new DBEntity(id)
					//alert("loadSuit")
					request({},"POST","app/suits/list",displaySuit);
				}
				
				/* 使用从数据库加载的模特所穿戴物品数据恢复模特着装 */
				function displaySuit(data){
					
					console.log("display + " + data)
					var modelCanvas = $("#modelCanvas");
					$(data).each(function (index,suit){
						var cell = $("<img>");
						console.log(suit.url)
						cell.attr("src",suit.url);
						cell.css("margin-left",suit.x);
						cell.css("margin-top",suit.y);
						cell.css("width",suit.w);
						cell.css("zIndex",suit.zIndex);
						cell.css("display","block");
						
						cell.attr("id",suit.id);
						cell.attr("code",suit.code);
						cell.attr("caption",suit.caption);
				     	cell.attr("x",suit.x);
				     	cell.attr("y",suit.y);
				     	cell.attr("w",suit.w);
				     	cell.attr("kind",suit.kind);
						modelCanvas.append(cell);
					})
				}

				function showMessage(data){
					if(data!=undefined){
					 }
				}
				
				/* ajax调用API接口实现通信的代码 */
				function request(object,method,methodURL,successFunction){	
					$.ajax({
				        cache: true,
				        type: method,
				        datatype:"json",
				        contentType: "application/json",
				        url:methodURL,
				        data:JSON.stringify(object),
				        error: function(XMLHttpRequest, textStatus, errorThrown) {
				        },
				        success: successFunction
				    });
				} 
		</script>
</head>
<body>
	<center>
			<table>
				<tr>
					<td colspan=2 style="background-color:#a84142">
							<center>
								<button onclick="requestCodeImage(4);">头发</button>
								<button onclick="requestCodeImage(3);">帽子</button>
								<button onclick="requestCodeImage(5);">胡子</button>
								<button onclick="requestCodeImage(8);">衬衫/T恤</button>
								<button onclick="requestCodeImage(2);">外套</button>
								<button onclick="requestCodeImage(7);">裤子</button>
								<button onclick="requestCodeImage(6);">鞋</button>
								<button onclick="requestCodeImage(1);">包</button>
							</center>
					</td>
				</tr>
				<tr>
					<td width="360px"><div id="imageList"></div></td>
					<td>
						<div id="modelCanvas"  style="position:relative;width:1024px; height:800px">
							<button onclick="loadSuit();">加载方案</button>
							<div style="position:absolute;top:100px;left:700px;"><img src="images/body.png"  ></div>				
						</div>
					</td>
				</tr>
			</table>
		</center>
</body>	