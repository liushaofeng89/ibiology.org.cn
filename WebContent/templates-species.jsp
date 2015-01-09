<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="宠物，农业，盆栽，生物，动物百科，植物百科，biology，360°生命物语，360度生命物语，三百六十度生命物语 " />
    <meta name="description" content="360°生命物语是一本包含各种生物特征介绍、养殖、物种分布、价值与危害以及病虫防疫的百科全书。我们致力于成为全中国最大的动植物百科网站。" />


    <title>植物介绍之梅花 - 360°生命物语</title>
    
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

    <jsp:include page="header.jsp"></jsp:include>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">植物介绍
                    <small>梅花</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="<%=request.getContextPath()%>">首页</a></li>
                    <li><a href="#">植物介绍</a></li>
                    <li class="active"><a href="#">梅花</a></li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
            	<ul id="myTab" class="nav nav-tabs">
				   <li class="active">
				      <a href="#home" data-toggle="tab"><i class="fa fa-tree"></i> 物种介绍</a>
				   </li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-th-list"></i> 品种分类</a></li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-lemon-o"></i> 生长特性</a></li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-globe"></i> 分布区域</a></li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-warning"></i> 价值与危害</a></li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-bug"></i> 养殖方法</a></li>
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-medkit"></i> 病虫防疫</a></li>
				   <li class="dropdown">
				      <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-ambulance"></i> 寻求帮助<b class="caret"></b></a>
				      <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
				         <li><a href="#jmeter" tabindex="-1" data-toggle="tab"><i class="fa fa-user-md"></i>  医生咨询</a></li>
				         <li><a href="#ejb" tabindex="-1" data-toggle="tab"><i class="fa fa-shopping-cart"></i> 我要购买</a></li>
				      </ul>
				   </li>
				</ul>
				<div id="myTabContent" class="tab-content" style="min-height: 600px;">
				   <div class="tab-pane fade in active" id="home">
				      <p>W3Cschoool菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
				   </div>
				   <div class="tab-pane fade" id="ios">
				      <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
				      TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
				   </div>
				   <div class="tab-pane fade" id="jmeter">
				      <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
				   </div>
				   <div class="tab-pane fade" id="ejb">
				      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				      </p>
				   </div>
				</div>
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

</body>

</html>
