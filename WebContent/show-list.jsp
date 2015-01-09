<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="宠物，农业，盆栽，生物，动物百科，植物百科，biology，360°生命物语，360度生命物语，三百六十度生命物语 " />
    <meta name="description" content="360°生命物语是一本包含各种生物特征介绍、养殖、物种分布、价值与危害以及病虫防疫的百科全书。我们致力于成为全中国最大的动植物百科网站。" />


    <title>新闻中心 - 360°生命物语</title>
    
    <link rel="shortcut icon" href="resource/img/site/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/ibiology.css" rel="stylesheet">
    
    <!-- DataTables CSS -->
    <link href="css/dataTables.bootstrap.css" rel="stylesheet">
    
    <!-- Font-Awesome-4.2.0 CSS -->
    <link href="resource/Font-Awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="./css/ie/html5shiv.js"></script>
        <script src="./css/ie/respond.min.js"></script>
    <![endif]-->
	<style type="text/css">
	</style>
</head>

<body>

	<!-- 引入导航，请求时才引入 -->
    <jsp:include page="header.jsp"/>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">新闻活动
                    <small>新闻中心</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="<%=request.getContextPath()%>">首页</a>
                    </li>
                    <li class="active">新闻列表</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
            	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>文章标题</th>
                                            <th>更新部门</th>
                                            <th>访问次数</th>
                                            <th>添加时间</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>admin</td>
                                            <td class="center">4</td>
                                            <td class="center">2014-10-10 12:30:23</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>2</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>admin</td>
                                            <td class="center">5</td>
                                            <td class="center">2014-05-19 12:30:23</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>3</td>
                                            <td>Internet Explorer 5.5</td>
                                            <td>admin</td>
                                            <td class="center">5.5</td>
                                            <td class="center">2014-01-19 12:30:23</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>4</td>
                                            <td>Internet Explorer 6</td>
                                            <td>admin</td>
                                            <td class="center">6</td>
                                            <td class="center">2014-10-15 15:30:23</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>5</td>
                                            <td>Internet Explorer 7</td>
                                            <td>admin</td>
                                            <td class="center">7</td>
                                            <td class="center">2014-10-11 09:30:23</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>6</td>
                                            <td>AOL browser (AOL desktop)</td>
                                            <td>admin</td>
                                            <td class="center">6</td>
                                            <td class="center">2014-08-19 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>7</td>
                                            <td>Firefox 1.0</td>
                                            <td>admin</td>
                                            <td class="center">1.7</td>
                                            <td class="center">2014-10-16 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>8</td>
                                            <td>Firefox 1.5</td>
                                            <td>admin</td>
                                            <td class="center">1.8</td>
                                            <td class="center">2014-10-14 11:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>9</td>
                                            <td>Firefox 2.0</td>
                                            <td>admin</td>
                                            <td class="center">1.8</td>
                                            <td class="center">2014-10-14 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>10</td>
                                            <td>Firefox 3.0</td>
                                            <td>admin</td>
                                            <td class="center">1.9</td>
                                            <td class="center">2014-10-13 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>11</td>
                                            <td>Camino 1.0</td>
                                            <td>admin</td>
                                            <td class="center">1.8</td>
                                            <td class="center">2014-10-12 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>12</td>
                                            <td>Camino 1.5</td>
                                            <td>admin</td>
                                            <td class="center">1.8</td>
                                            <td class="center">2014-10-11 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>13</td>
                                            <td>Netscape 7.2</td>
                                            <td>admin</td>
                                            <td class="center">1.7</td>
                                            <td class="center">2014-10-18 11:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>14</td>
                                            <td>Netscape Browser 8</td>
                                            <td>admin</td>
                                            <td class="center">1.7</td>
                                            <td class="center">2014-10-14 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>15</td>
                                            <td>Netscape Navigator 9</td>
                                            <td>admin</td>
                                            <td class="center">1.8</td>
                                            <td class="center">2014-10-18 12:30:23</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>16</td>
                                            <td>Mozilla 1.0</td>
                                            <td>admin</td>
                                            <td class="center">1</td>
                                            <td class="center">2014-10-19 12:30:23</td>
                                        </tr>
                                    </tbody>
                                </table>
            </div>                
            <!-- /.panel-group -->
		</div>
		<!-- /.col-lg-12 -->
        
		<jsp:include page="footer.jsp"></jsp:include>
        
	</div>
	<!-- /.row -->
    
		
    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
    
    <!-- Script to Activate the Carousel -->
    <script type="text/javascript">
	    $('.carousel').carousel({
	        interval: 5000 //changes the speed
	    });
	    $(document).ready(function() {
	        $('#dataTables-example').dataTable({
	        	"language": {                 
	        	"sProcessing":   "处理中...",
	            "sLengthMenu":   "每页 _MENU_ 条记录",
	            "sZeroRecords":  "没有匹配的记录",
	            "sInfo":         "显示第 _START_ 至 _END_ 项记录，共 _TOTAL_ 项",
	            "sInfoEmpty":    "显示第 0 至 0 项记录，共 0 项",
	            "sInfoFiltered": "(由 _MAX_ 项记录过滤)",
	            "sInfoPostFix":  "",
	            "sSearch":       "搜索:",
	            "sUrl":          "",
	            "oPaginate": {
	                "sFirst":    "首页",
	                "sPrevious": "上页",
	                "sNext":     "下页",
	                "sLast":     "末页"
	            }             
	        }
		  });
	    });
    </script>
</body>

</html>