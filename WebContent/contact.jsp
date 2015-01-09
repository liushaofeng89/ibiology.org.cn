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
    <meta name="keywords" content="宠物，农业，盆栽，生物，动物百科，植物百科，biology，360°生命物语，360度生命物语，三百六十度生命物语 " />
    <meta name="description" content="360°生命物语是一本包含各种生物特征介绍、养殖、物种分布、价值与危害以及病虫防疫的百科全书。我们致力于成为全中国最大的动植物百科网站。" />


    <title>联系我们 - 360°生命物语</title>
    
    <link rel="shortcut icon" href="resource/img/site/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/ibiology.css" rel="stylesheet">
    
    <!-- Font-Awesome-4.2.0 CSS -->
    <link href="resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="./css/ie/html5shiv.js"></script>
        <script src="./css/ie/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <%@ include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">联系我们
                    <small>联系我们</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="<%=request.getContextPath()%>">首页</a>
                    </li>
                    <li class="active">联系我们</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Service Panels -->
        <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">技术支持</h2>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <img alt="" src="./resource/img/user/default.jpg" class="img-circle">
                    </div>
                    <div class="panel-body">
                        <h4>系统开发</h4>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-envelope-o"></i>: <a href="mailto:liushaofeng89@qq.com">liushaofeng89@qq.com</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-weixin"></i>: <a href="javascript:void(0)">lwx166646</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-weibo"></i>: <a href="javascript:void(0)">1229026644@qq.com</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-github"></i>: <a href="javascript:void(0)">liushaofeng89</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-paper-plane-o"></i>: <a href="javascript:void(0)">四川</a>·<a href="javascript:void(0)">成都</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <img alt="" src="./resource/img/user/default.jpg" class="img-circle">
                    </div>
                    <div class="panel-body">
                        <h4>SEO优化</h4>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-envelope-o"></i>: <a href="mailto:name@example.com">name@example.com</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-paper-plane-o"></i>: <a href="javascript:void(0)">四川</a>·<a href="javascript:void(0)">成都</a></a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <img alt="" src="./resource/img/user/default.jpg" class="img-circle">
                    </div>
                    <div class="panel-body">
                        <h4>美工支持</h4>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-envelope-o"></i>: <a href="mailto:name@example.com">name@example.com</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-paper-plane-o"></i>: <a href="javascript:void(0)">四川</a>·<a href="javascript:void(0)">成都</a></a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <img alt="" src="./resource/img/user/default.jpg" class="img-circle">
                    </div>
                    <div class="panel-body">
                        <h4>数据录入</h4>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-envelope-o"></i>: <a href="mailto:name@example.com">name@example.com</a></p>
                        <p style="margin-left:35px;float: left;"><i class="fa fa-paper-plane-o"></i>: <a href="javascript:void(0)">四川</a>·<a href="javascript:void(0)">成都</a></a></p>
                    </div>
                </div>
            </div>
        </div>


        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8">
                <h3>我想说点什么？</h3>
                <form name="sentMessage" id="contactForm">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>QQ:</label>
                            <input type="tel" class="form-control" id="qq" data-validation-required-message="Please enter your QQ number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>邮箱:</label>
                            <input type="email" class="form-control" id="email" data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>我想说的:</label>
                            <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="button" class="btn btn-primary" onclick="saveData();">发送消息</button>
                </form>
            </div>

        </div>
        <!-- /.row -->

        <jsp:include page="footer.jsp"></jsp:include>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
	<script type="text/javascript">
		function saveData()
		{
			var msg=$("#message").val();
			if($.trim(msg)=="")
			{
				alert("反馈意见不能为空！");
			}else
			{
				$.ajax({
					   type: "POST",
					   url: "/ibiology/UserFeedback",
					   data: "qq="+$("#qq").val()+"&email="+$("#email").val()+"&content="+msg,
					   success: function(msg){
					     if(msg=="true")
					     {
							alert("感谢你的建议/意见！");
							location.href="<%=request.getContextPath()%>/index";
						 }else
						 {
							alert(msg); 
						 }
					   }
				});
			}
		}
	</script>
</body>

</html>
