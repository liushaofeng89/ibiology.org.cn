<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>360°生物物语管理系统-友情链接</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="../css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    
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
                            	友情链接 <small>链接管理</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-home"></i> 首页
                            </li>
			                <li><a href="#">友情链接</a></li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-12">
                    	<a class="btn btn-default" href="#" role="button" data-toggle="modal" data-target="#myModal" style="float: right"><i class="fa fa-plus"></i> 添加链接</a>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px;min-height: 400px;">
                    <div class="col-lg-12">
                         <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>站点名字</th>
                                            <th>站点地址</th>
                                            <th>创建时间</th>
                                            <th>有效时间</th>
                                        </tr>
                                    </thead>
                                    <tbody id="linksData">
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    
    <!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	               	友情链接添加
	            </h4>
	         </div>
	         <div class="modal-body">
	            	<form class="form-horizontal" role="form">
					   <div class="form-group">
					      <label for="firstname" class="col-sm-2 control-label">网站名称</label>
					      <div class="col-sm-10">
					         <input type="text" class="form-control" id="siteName"　placeholder="请输入网站名称">
					      </div>
					   </div>
					   <div class="form-group">
					      <label for="lastname" class="col-sm-2 control-label">网站地址</label>
					      <div class="col-sm-10">
					         <input type="text" class="form-control" id="siteAddress"　placeholder="请输入网站地址">
					      </div>
					   </div>
					   <div class="form-group">
					      <label for="lastname" class="col-sm-2 control-label">有效时间</label>
					      <div class="col-sm-10">
					         <div class="input-group date form_date col-md-12" data-date="2014-12-08T23:30:07Z" data-date-format="yyyy-MM-dd HH:mm:ss">
				             	<input class="form-control" size="16" type="text" value="" readonly>
				             	<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
				             </div>
							 <input type="hidden" id="dtp_input1" value="" />
					      </div>
					   </div>
					</form>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-primary" onclick="saveData()">保存</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->

	<!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- DataTables JavaScript -->
    <script src="../js/jquery.dataTables.js"></script>
    <script src="../js/dataTables.bootstrap.js"></script>
	<script src="../js/bootstrap-datetimepicker.js" type="text/javascript" charset="UTF-8"></script>
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script type="text/javascript">
    $(document).ready(function() {
        $('#dataTables-example').dataTable({        				
			"oLanguage": {
			"sUrl": "../js/datatable_zh_CN.json"
		} 
		});
    });
    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
    function saveData()
    {
        
    }
    </script>

</body>

</html>
