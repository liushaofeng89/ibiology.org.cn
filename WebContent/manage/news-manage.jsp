<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>360°生物物语管理系统-新闻管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="../css/ie/html5shiv.js"></script>
        <script src="../css/ie/respond.min.js"></script>
    <![endif]-->
	
	<link href="./css/themes/default/default.css" rel="stylesheet" type="text/css"/>
	<script charset="utf-8" src="./js/kindeditor-min.js"></script>
	<script charset="utf-8" src="./js/lang/zh_CN.js"></script>
	<script>
		var editor;
		KindEditor.ready(function(K) {
			editor = K.create('textarea[name="content"]', {
				resizeType : 1,
				allowPreviewEmoticons : false,
				allowImageUpload : false,
				items : [
					'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
					'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
					'insertunorderedlist', '|', 'image', 'link']
			});
		});
		</script>
	
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index">360°生物物语管理系统</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>admin</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<%=request.getContextPath()%>/manage/manage.jsp"><i class="fa fa-fw fa-home"></i> 管理系统首页</a>
                    </li>
                    <li class="active">
                        <a href="news-manage.jsp"><i class="fa fa-fw fa-bar-chart-o"></i> 新闻维护</a>
                    </li>
                    <li>
                        <a href="tables.html"><i class="fa fa-fw fa-table"></i> 百科资源维护</a>
                    </li>
                    <li>
                        <a href="image-manage.jsp"><i class="fa fa-fw fa-image"></i> 图片维护</a>
                    </li>
                    <li>
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i> 广告维护</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                    </li>
                    <li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

				<!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            	资料更新 <small>新闻更新</small>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
				
                <div class="row">
                    <div class="col-lg-12">
                        <ul id="myTab" class="nav nav-tabs">
						   <li class="active">
						      <a href="#addNews" data-toggle="tab"><i class="fa fa-fw fa-plus"></i> 添加新闻</a>
						   </li>
						   <li><a href="#maintainNews" data-toggle="tab"><i class="fa fa-fw fa-bullhorn"></i> 新闻维护</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
						   <div class="tab-pane fade in active" id="addNews" style="padding:20px;min-height: 600px;">
						      
						      <form class="form-horizontal" role="form">
							   <div class="form-group">
							      <label for="firstname" class="col-sm-2 control-label">文章标题</label>
							      <div class="col-sm-10">
							         <input type="text" class="form-control" id="title" placeholder="请输入文章标题">
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="lastname" class="col-sm-2 control-label">撰稿人</label>
							      <div class="col-sm-10">
							         <input type="text" class="form-control" id="writer" placeholder="请输入撰稿人">
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="lastname" class="col-sm-2 control-label">文章来源</label>
							      <div class="col-sm-10">
							         <input type="text" class="form-control" id="newsFrom" placeholder="请输入文章来源">
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="lastname" class="col-sm-2 control-label">文章内容</label>
							      <div class="col-sm-10">
							      	 <textarea class="form-control" id="newsContent" rows="3" name="content" style="width:100%;height:200px;visibility:hidden;">文章内容编辑区域</textarea>
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <div class="col-sm-offset-2 col-sm-10">
							         <button type="button" onclick="_add_news();" class="btn btn-default"><i class="fa fa-fw fa-save"></i> 保存数据</button>
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <div class="col-sm-offset-2 col-sm-10">
							         <p><code>文章内容最大限制为5000个字符！</code></p>
							      </div>
							   </div>
							</form>
							
						   </div>
						   <div class="tab-pane fade" id="maintainNews" style="padding:20px;min-height: 600px;">
						      <table class="table table-striped">
							   <thead>
							      <tr>
							         <th>ID</th>
							         <th>文章标题</th>
							         <th>撰稿人</th>
							         <th>文章来源</th>
							         <th>添加时间</th>
							         <th>点击量</th>
							         <th>编辑人</th>
							         <th>管理维护</th>
							      </tr>
							   </thead>
							   <tbody>
							      <tr>
							         <td>1</td>
							         <td>Bangalore</td>
							         <td>张三</td>
							         <td>360°生命物语</td>
							         <td>2014-11-19 01:05:45</td>
							         <td>12</td>
							         <td>admin</td>
							         <td>[<a href="#">编辑</a>][<a href="#">删除</a>]</td>
							      </tr>
							      <tr>
							         <td>2</td>
							         <td>Bangalore</td>
							         <td>李四</td>
							         <td>360°生命物语</td>
							         <td>2014-11-19 01:05:45</td>
							         <td>12</td>
							         <td>admin</td>
							         <td>[<a href="#">编辑</a>][<a href="#">删除</a>]</td>
							      </tr>
							   </tbody>
							</table>
						   </div>
						</div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
	<script>
		function _add_news()
		{
			var title=$("#title").val();
			var writer=$("#writer").val();
			var newsFrom=$("#newsFrom").val();
			var newsContent=editor.html();
			if(title==null||writer==null||newsFrom==null||newsContent==null)
			{
				alert("数据填写不完整！");
				return;
			}
			if(newsContent.length>5000)
			{
				alert("文章内容超过5000个字符！");
				return;
			}

			$.ajax({
				   type: "POST",
				   url: "/ibiology/newsService",
				   data: "title="+title+"&writer="+writer+"&newsFrom="+newsFrom+"&newsContent="+newsContent,
				   success: function(msg){
				     if(msg=="SUCCESS")
				     {
					     alert("新闻保存成功！");
				    	 location.reload();
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
