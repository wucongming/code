<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户登录</title>
<link rel="stylesheet" href="/MyBlog2/css/lrtk.css">
</head>
<body>
<!-- 代码 开始 -->
<div id="login">
    <div class="wrapper">
        <div class="login">
            <form action="/MyBlog2/userAction_login.action" method="post" class="container offset1 loginform">
                <div id="owl-login">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad">
                    <div class="control-group">
                        <div class="controls">
                            <label for="email" class="control-label fa fa-envelope"></label>
                            <input type="text" name="account" placeholder="账号" tabindex="1" autofocus="autofocus" class="form-control input-medium">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label for="password" class="control-label fa fa-asterisk"></label>
                            <input id="password" type="password" name="passWord" placeholder="密码" tabindex="2" class="form-control input-medium">
                        </div>
                    </div>
                </div>
                <div class="form-actions"><a tabindex="5" class="btn pull-left btn-link text-muted" href="/MyBlog2/register.jsp">Register?</a><a  tabindex="6" class="btn btn-link text-muted">Sign Up</a>
                    <button type="submit" tabindex="4" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
    <script src="/MyBlog2/js/jquery.min.js"></script>
    <script>
    $(function() {

        $('#login #password').focus(function() {
            $('#owl-login').addClass('password');
        }).blur(function() {
            $('#owl-login').removeClass('password');
        });
    });
    </script>
</div>
<!-- 代码 结束 -->

</body>
</html>