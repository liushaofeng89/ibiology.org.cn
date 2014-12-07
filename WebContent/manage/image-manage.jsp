<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>360°生物物语管理系统-图片管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    <script src="./js/ajaxfileupload.js"></script>
	<script type="text/javascript">
		function ajaxFileUpload() {
			$("#msg").html("<code>文件上传中,请稍后...</code>");
			$("#uploadBtn").attr("disabled","disabled");
			$.ajaxFileUpload({
				url : "/ibiology/ImageService",   //submit to UploadFileServlet
				secureuri : false,
				fileElementId : 'fileToUpload',
				dataType : 'text', //or json xml whatever you like~
				success : function(data, status) {
					$("#imageURL").append(data);
					$("#msg").html("<code>文件上传完成，请拷贝以下图片访问地址...</code>");
				},
				error : function(data, status, e) {
					$("#msg").html("<code>程序处理出错，错误码为："+status+"</code>");
				}
			});
			return false;
		}
	</script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="../css/ie/html5shiv.js"></script>
        <script src="../css/ie/respond.min.js"></script>
    <![endif]-->
	
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        	<%@ include file="head.jsp"%>
            <%@ include file="menu.jsp"%>
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

				<!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            	图片管理 <small></small>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <!-- /.row -->
				
                <div class="row">
                    <div class="col-lg-12">
                        <ul id="myTab" class="nav nav-tabs">
						   <li class="active">
						      <a href="#addImages" data-toggle="tab"><i class="fa fa-fw fa-upload"></i> 上传图片</a>
						   </li>
						   <li><a href="#maintainImages" data-toggle="tab"><i class="fa fa-fw fa-image"></i> 图片管理</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
						   <div class="tab-pane fade in active" id="addImages" style="padding:20px;min-height: 600px;">
						      
						      <form class="form-horizontal" role="form">
							   <div class="form-group">
							      <label for="firstname" class="col-sm-2 control-label">图片地址：</label>
							      <div class="col-sm-10">
							         <input type="file" id="fileToUpload" name="fileToUpload">
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="firstname" class="col-sm-2 control-label">图片类型：</label>
							      <div class="col-sm-10">
							         <select class="form-control" name="imageType" id="imageType">
								         <option>新闻图片</option>
								      </select>
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="lastname" class="col-sm-2 control-label">上传消息：</label>
							      <div class="col-sm-10">
							      		 <div id="msg"></div>
									   <!-- 
								         <div class="progress progress-striped active">
										   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
										</div>
									    -->
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <label for="lastname" class="col-sm-2 control-label">图片地址：</label>
							      <div class="col-sm-10">
							         <p class="form-control-static" id="imageURL"></p>
							      </div>
							   </div>
							   
							   <div class="form-group">
							      <div class="col-sm-offset-2 col-sm-10">
							         <button type="button" onclick="return ajaxFileUpload();" class="btn btn-default" id="uploadBtn"><i class="fa fa-fw fa-save"></i> 确认上传</button>
							      </div>
							   </div>
							   
							</form>
							
						   </div>
						   <div class="tab-pane fade" id="maintainImages" style="padding:20px;min-height: 600px;">
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
</body>
</html>