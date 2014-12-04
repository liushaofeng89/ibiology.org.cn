<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>360°生命物语 | 资源未找到</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

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
	<style type="text/css">
		.error-template {padding: 100px 15px;text-align: center;}
		.error-actions {margin-top:15px;margin-bottom:15px;}
		.error-actions .btn { margin-right:10px; }
	</style>

</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
	    <div class="row">
	        <div class="col-md-12">
	            <div class="error-template">
	                <h1>
	                    Oops!</h1>
	                <h2>
	                    404 Not Found</h2>
	                <div class="error-details">
	                   	 对不起，您所请求的资源没有找到!
	                </div>
	                <div class="error-actions">
	                    <a href="<%=request.getContextPath()%>/index" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
	                        	返回首页 </a><a href="#" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> 联系管理员 </a>
	                </div>
	            </div>
	        </div>
	    </div>
	    
	    <!-- Footer -->
    	<jsp:include page="footer.jsp"></jsp:include>
	
	</div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
	