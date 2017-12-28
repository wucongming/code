<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="style.css">
    <script src="jquery-ui-1.9.2.custom/js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" href="jquery-ui-1.9.2.custom/css/base/jquery-ui-1.9.2.custom.min.css">
  <script src="jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script src="layui/layui.js" charset="utf-8"></script>
    <title>Document</title>
</head>
<body>
  <div class="container">
      
    <div class="class-time">
      <ul class="morning">
        <li>1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
      </ul>
      <ul class="afternoon">
        <li>5</li>
        <li>6</li>
        <li>7</li>
      </ul>
      <ul class="evening">
        <li>8</li>
        <li>9</li>
        <li>10</li>
      </ul>
    </div>
    <!-- 课表 -->
    <div class="class-content">
    </div>
    <!-- 弹窗 -->
    <div class="dialog" id="findClass" title="彩蛋" hidden="hidden">
    	<table style="height: 50px;">
    		<tr>
    			<td style="width: 100px;">学院  </td>
    			<td style="width: 200px;"><input type="text" id="college"></td>
    			<td style="width: 100px;">老师  </td>
    			<td style="width: 200px;"><input type="text" id="teacher"></td>
    			<td style="width: 100px;">课程代码  </td>
    			<td style="width: 200px;"><input type="text" id="courseCode"></td>
    			<td style="width: 100px;">课程名  </td>
    			<td style="width: 200px;"><input type="text" id="courseName"></td>
    			<td style="width: 100px;">时间段  </td>
    			<td style="width: 200px;"><input type="text" id="time"></td>
    			<td><button class="layui-btn layui-btn-normal" onclick="search()">搜索</button></td>
    		</tr>
    	</table>
        <table class="layui-hide" id="test" lay-filter="demo"  lay-data="{id: 'idTest'}"></table>
        <script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-normal layui-btn-radius" style="width:100px;height:25px;line-height:25px;" lay-event="del">选课</a>
		</script>
    </div>
  </div>
    <script>
    var time1,tableData;
      //刷新页面
    $(document).ready(function() {
      console.log("刷新")
      loadMenu();
    });
    //表单
    
    //初始化界面
    function loadMenu() {
      var day = 5;
      var morning = 4;
      var afternoon = 3;
      var evening = 3;
      for(var i = 0; i < day; i++) {
      
        //构造上午课程的html
        for(var index = 0; index < morning; index++) {
          var div = $("<span onclick='onClazzClick(this)'></span>");
          div.attr("id",(i + 1) + "-" + (index + 1))
          div.attr("day",i + 1)
          div.attr("time",index + 1);
          div.attr("class","clazz");
          div.css({
        	  "position":"absolute"
        	  ,"top": 80 * index + 1 * index + "px"
        	  ,"left": i * 160 + 1 * i + "px"
          })
          $(".class-content").append(div);
        }
        //构造下午课程的html
        for(var index = 0; index < afternoon; index++) {
          var div = $("<span onclick='onClazzClick(this)'></span>");
          div.attr("id",(i + 1) + "-" + (4 + index + 1))
          div.attr("day",i + 1)
          div.attr("time",4 + index + 1);
          div.attr("class","clazz");
          div.css({
        	  "position":"absolute"
        	  ,"top": 350 + 80 * index + 1 * index + "px"
        	  ,"left": i * 160 + 1 * i + "px"
          })
          
          $(".class-content").append(div);
        }
        //构造晚上课程的html
        for(var index = 0; index < evening; index++) {
          var div = $("<span onclick='onClazzClick(this)'></span>");
          div.attr("id",(i + 1) + "-" + (7 + index + 1))
          div.attr("day",i + 1)
          div.attr("time",7 + index + 1);
          div.attr("class","clazz");
          div.css({
        	  "position":"absolute"
        	  ,"top": 620 + 80 * index + 1 * index + "px"
        	  ,"left": i * 160 + 1 * i + "px"
          })
          $(".class-content").append(div);
        }
      }
    }
    
    function onClazzClick(obj) {
    	time1 = $(obj).attr("day") + "-%" + $(obj).attr("time") + "%";
        $("#findClass").dialog({
          autoOpen : true,
            height : "700",        //高度
            width : "1700",        //宽度
            modal : true,
            buttons:{
            "确定":function(){},
            "取消":function(){$(this).dialog('close');}
            }
        })
        tableShow(time1);
    }
    
    function tableShow(time1) {
    	$("#time").val(time1);
    	layui.use('table', function(){
   	     var table = layui.table;
   	     tableData = table.render({
   	          elem: '#test'
   	          ,height:500
   	          ,url: 'app/clazz/list/' //数据接口
   	          ,where:{"time1":time1,"college":"%%","teacher":"%%","courseCode":"%%","courseName":"%%"}
   	          ,method:"post"
   	          ,page: true //开启分页
   	          ,cols: [[ //表头
   	            {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
   	            ,{field: 'college', title: '学院名', width:160}
   	            ,{field: 'courseCode', title: '课程号', width:80, sort: true}
   	            ,{field: 'course', title: '课程名', width:160} 
   	            ,{field: 'teacher', title: '教师', width: 80}
   	            ,{field: 'classCode', title: '班级序号', width: 80}
   	            ,{field: 'credit', title: '学分', width: 80, sort: true}
   	            ,{field: 'campus', title: '校区', width: 80, sort: true}
   	            ,{field: 'time1', title: '时间1', width: 80}
   	            ,{field: 'time2', title: '时间2', width: 80}
   	            ,{field: 'time3', title: '时间3', width: 80}
   	            ,{field: 'classRoom1', title: '教室1', width: 80}
   	            ,{field: 'classRoom2', title: '教室2', width: 80}
   	            ,{field: 'classRoom3', title: '教室3', width: 80}
   	            ,{field: 'begin', title: '起始周', width: 80,sort:true}
   	            ,{field: 'end', title: '结束周', width: 80,sort:true}
   	            ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
   	          ]]
   	        });
	   	  table.on('tool(demo)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
	      	  console.log(obj.value); //得到修改后的值
	      	  console.log(obj.field); //当前编辑的字段名
	      	  console.log(obj.data); //所在行的所有相关数据  
	      	  var time1s = obj.data.time1.split("-");
	      	  var day = time1s[0];
	      	  var courses = time1s[1];
	      	  for(var i = 0; i < courses.split("").length; i++) {
	      		  console.log($("#" + day + "-" + courses.split("")[i]).remove())
	      	  }
	      	addCard(day,time1s[1],obj.data.course,obj.data.courseCode,obj.data.teacher,obj.data.time1)
	      	  if(obj.data.time2 != null) {
	      		  var time2s = obj.data.time2.split("-");
	      		  day = time2s[0];
		      	  courses = time2s[1];
		      	  for(var i = 0; i < courses.split("").length; i++) {
		      		  console.log($("#" + day + "-" + courses.split("")[i]).remove())
		      	  }
		      	addCard(day,courses,obj.data.course,obj.data.courseCode,obj.data.teacher,obj.data.time2)
	      	  } else if(obj.data.time3 != null) {
	      		  var time3s = obj.data.time3.split("-");
	      		  day = time3s[0];
		      	  courses = time3s[1];
		      	  for(var i = 0; i < courses.split("").length; i++) {
		      		  console.log($("#" + day + "-" + courses.split("")[i]).remove())
		      	  }
		      	addCard(day,courses,obj.data.course,obj.data.courseCode,obj.data.teacher,obj.data.time3)
	      	  }
	      	 $("#findClass").dialog("close")
	      	});
   	    });
    	
    }
    
    function addCard(day,time,course,courseCode,teacher,dayAndTime) {
    	var card = $("<span onclick='onClazzClick(this)'></span>")
    	  card.css({
    		  "width":"160px"
    		  ,"height":80 * time.split("").length + "px"
    		  ,"position":"absolute"
    		  ,"top": 80 * (time.split("")[0] - 1) + 1 * (time.split("")[0] - 1) + "px"
        	  ,"left": (day - 1) * 160 + 1 * (day - 1) + "px"
        	  ,"background":"wheat"
    	  });
    	  card.attr({
    		"class":"clazz"
    		,"day":day
    		,"time":time
    	  })
    	  card.html("<table>"
     		 	+ "<tr>"
     		 		+"<td>课程名:" + course + "</td>"
     		 	+ "</tr>"
     		 	+ "<tr>"
    		 		+"<td>课程代码:" + courseCode + "</td>"
    		 	+ "</tr>"
     		 	+ "<tr>"
     		 		+"<td>教师名:" + teacher + "</td>"
     		 	+ "</tr>"
     		 	+ "<tr>"
     		 		+"<td>课程时间:" + dayAndTime + "</td>"
     		 	+ "</tr>"
       		+"</table>")
    	  $(".class-content").append(card)
    }

    function search() {
    	var college = "%" + $("#college").val() + "%";
    	var teacher = "%" + $("#teacher").val() + "%";
    	var courseCode = "%" + $("#courseCode").val() + "%";
    	var courseName = "%" + $("#courseName").val() + "%";
    	var time = $("#time").val();
    	tableData.reload({
    		  url: 'app/clazz/list/'
    		  ,where: {"time1":time,"college":college,"teacher":teacher,"courseCode":courseCode,"courseName":courseName} //设定异步数据接口的额外参数
    		  ,method:"POST"
    		});
    }
    
    
    </script>
</body>
</html>