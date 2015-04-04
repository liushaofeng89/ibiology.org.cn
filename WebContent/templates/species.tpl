<!DOCTYPE html><html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="宠物，农业，盆栽，生物，动物百科，植物百科，biology，360°生命物语，360度生命物语，三百六十度生命物语 " />
    <meta name="description" content="360°生命物语是一本包含各种生物特征介绍、养殖、物种分布、价值与危害以及病虫防疫的百科全书。我们致力于成为全中国最大的动植物百科网站。" />
    <title>{SPECIES} - 360°生命物语</title>
    
    <link rel="shortcut icon" href="../resource/img/site/favicon.ico" type="image/x-icon" />
    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/ibiology.css" rel="stylesheet">
    
    <!-- Font-Awesome-4.2.0 CSS -->
    <link href="../resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="../css/ie/html5shiv.js"></script>
        <script src="../css/ie/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="{LINK_HOME}">360°生命物语</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				
				<ul class="nav navbar-nav navbar-right">
					<!-- <li>
						<form class="navbar-form" role="search">
					        <div class="input-group">
					            <input type="text" class="form-control" placeholder="搜索" name="q">
					            <div class="input-group-btn">
					                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
					            </div>
					        </div>
			        	</form>
					</li> -->
					<li>
						<a href="{LINK_HOME}"><i class="fa fa-home"></i> 首页</a>
					</li>
					<li>
						<a href="florid.jsp"><i class="fa fa-gift"></i> 花语</a>
					</li>
					<li class="dropdown dropdown-large">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-heart-o"></i> 盆栽/宠物 <b class="caret"></b></a>
						
						<ul class="dropdown-menu dropdown-menu-large row">
							<li class="col-sm-4">
								<ul>
									<li class="dropdown-header">家（盆栽）</li>
									<li><a href="#">绿萝</a></li>
									<li><a href="#">富贵竹</a></li>
									<li><a href="#">常春藤</a></li>
									<li><a href="#">仙人球</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">家（宠物）</li>
									<li><a href="#">萨摩耶</a></li>
									<li><a href="#">哈士奇</a></li>
									<li><a href="#">博美</a></li>
								</ul>
							</li>
							<li class="col-sm-4">
								<ul>
									<li class="dropdown-header">办公室(盆栽)</li>
									<li><a href="#">绿萝</a></li>
									<li><a href="#">仙人球</a></li>
									<li><a href="#">芦荟</a></li>
									<li><a href="#">富贵竹</a></li>
									<li><a href="#">文竹</a></li>
									<li><a href="#">滴水观音</a></li>
									<li><a href="#">吊篮</a></li>
								</ul>
							</li>
							<li class="col-sm-4">
								<ul>
									<li class="dropdown-header">园区(盆栽)</li>
									<li><a href="#">发财树</a></li>
									<li><a href="#">雪松</a></li>
									<li><a href="#">龙爪槐</a></li>
									<li><a href="#">万年青</a></li>
									<li><a href="#">铁树</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li>
						<a href="{LINK_HOME}/contact"><i class="fa fa-envelope-o"></i> 联系我们</a>
					</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">植物介绍
                    <small>{SPECIES}</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="{LINK_HOME}">首页</a></li>
                    <li><a href="#">植物介绍</a></li>
                    <li class="active"><a href="#">{SPECIES}</a></li>
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
				   <li><a href="#ios" data-toggle="tab"><i class="fa fa-warning"></i> 价值危害</a></li>
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
        <hr/>
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>&copy; 2014-2015 IBIOLOGY.ORG.CN, <a href="{LINK_HOME}/FAQ">All Rights Reserved</a> | <a href="http://www.miitbeian.gov.cn/">蜀ICP备14026954号</a></p>
				</div>
			</div>
		</footer>
    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>