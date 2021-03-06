<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录 - 360°生物物语管理系统</title>
    
    <link rel="shortcut icon" href="resource/img/site/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
    <link href="./css/bootstrap.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="./resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="./css/ie/html5shiv.js"></script>
        <script src="./css/ie/respond.min.js"></script>
    <![endif]-->
	<style type="text/css">
		body{
			background: #eee url(./resource/img/site/bg.png);
		}
		.form-signin
		{
		    max-width: 330px;
		    padding: 15px;
		    margin: 0 auto;
		}
		.form-signin .form-signin-heading, .form-signin .checkbox
		{
		    margin-bottom: 10px;
		}
		.form-signin .checkbox
		{
		    font-weight: normal;
		}
		.form-signin .form-control
		{
		    position: relative;
		    font-size: 16px;
		    height: auto;
		    padding: 10px;
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		    box-sizing: border-box;
		}
		.form-signin .form-control:focus
		{
		    z-index: 2;
		}
		.form-signin input[type="text"]
		{
		    margin-bottom: -1px;
		    border-bottom-left-radius: 0;
		    border-bottom-right-radius: 0;
		}
		.form-signin input[type="password"]
		{
		    margin-bottom: 10px;
		    border-top-left-radius: 0;
		    border-top-right-radius: 0;
		}
		.account-wall
		{
		    margin-top: 20px;
		    padding: 40px 0px 20px 0px;
		    background-color: #f7f7f7;
		    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		}
		.login-title
		{
		    color: #555;
		    font-size: 18px;
		    font-weight: 400;
		    display: block;
		}
		.profile-img
		{
		    width: 96px;
		    height: 96px;
		    margin: 0 auto 10px;
		    display: block;
		    -moz-border-radius: 50%;
		    -webkit-border-radius: 50%;
		    border-radius: 50%;
		}
		.need-help
		{
		    margin-top: 10px;
		}
		.new-account
		{
		    display: block;
		    margin-top: 10px;
		}
	</style>
</head>

<body>

     <div class="container">
	    <div class="row">
	        <div class="col-sm-6 col-md-4 col-md-offset-4">
	            <h1 class="text-center login-title"><a href="www.ibiology.org.cn">360°生物物语</a></h1>
	            <div class="account-wall">
	                <img class="profile-img" src="resource/img/user/default.jpg" alt="">
	                <form class="form-signin">
		                <input type="text" id="name" class="form-control" placeholder="账号" required autofocus>
		                <input type="password" id="pwd" class="form-control" placeholder="密码" required>
		                <button class="btn btn-lg btn-primary btn-block" type="button" onclick="_login();">登录</button>
		                <label class="checkbox pull-left" id="loginMsg">请输入登录信息</label>
		                	<a href="javascript:void(0)" data-toggle="modal" data-target="#myModal" class="pull-right need-help">帮助? </a><span class="clearfix"></span>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	               	帮助信息
	            </h4>
	         </div>
	         <div class="modal-body">
	            	目前后台系统处于开发测试阶段，账号申请请发送邮件至：<code>liushaofeng89@qq.com</code>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->

    <!-- jQuery Version 1.11.0 -->
    <script src="./js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function _login()
		{
			$.ajax({
				   type: "POST",
				   url: "<%=path%>/login",
				   data: "name="+$("#name").val()+"&pwd="+$("#pwd").val(),
				   success: function(msg){
				     if(msg=="SUCCESS")
				     {
					     window.location.href="manage/manage.jsp";
					 }else
					 {
						 alert(msg);
					 }
				   }
				});
		}
	</script>
</body>

</html>