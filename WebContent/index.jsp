<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.org.ibiology.util.DateUtil,cn.org.ibiology.util.IbiologyIDUtil"%>
<%@ page import="cn.org.ibiology.service.IbiologyIndexService,cn.org.ibiology.hbm.model.IbiologyIndexModel,cn.org.ibiology.hbm.model.IbiologySpeciesModel"%>
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
    <meta name="keywords" content="宠物，农业，盆栽，养殖，生物，栽培，动物百科，植物百科，biology，360°生命物语，360度生命物语，三百六十度生命物语 " />
    <meta name="description" content="360°生命物语是一本包含各种生物特征介绍、养殖、物种分布、价值与危害以及病虫防疫的百科全书。我们致力于成为全中国最大的动植物百科网站。" />

    <title>360°生命物语</title>
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
	<style type="text/css">
		.panel-heading small{
			font-size:16px;
			float: right;
		}
		.panel-body{
			min-height: 160px;
		}
		.new-time{
			color:#CDCDCD;
			font-size:12px;
			float:right;
		}
		.hide-bullets {
			list-style:none;
			margin-left: -40px;
			margin-top:20px;
		}
		#toTop{
			position: fixed;
			bottom: 10px;
			right: 10px;
			cursor: pointer;
			display: none;
		}
		blockquote{
			margin-left: 10px;
			padding-left: 10px;
			font-size: 16pt;
		}
		
		/* boxgrid */
		.boxgrid{width:170px;height:100px;margin:0 12px 12px 12px;float:left;background:#161613;overflow:hidden;position:relative;cursor: pointer;}
		.boxgrid h5{margin:10px 10px 0 10px;color:#FFF;letter-spacing:-1px;font-weight:bold;}
		.boxgrid img{position:absolute;top:0;left:0;border:0;}
		.boxcaption{float:left;position:absolute;background:#000;height:100px;width:100%;opacity:.8;/* For IE 5-7 */filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=80);/* For IE 8 */-MS-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=80)";}
		.captionfull .boxcaption{top:260px;left:0px;}
		.caption .boxcaption {top:220px;left:0px;}
		</style>
</head>

<body>

	<%@ include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

        <!-- Heading Row -->
        <div class="row">
            <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-8" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0">
                                        <img src="resource/img/site/Nipic_20100717162651005706.jpg"></div>

                                        <div class="item" data-slide-number="1">
                                         <img src="resource/img/site/Nipc_20120228173452268165.jpg"></div>

                                        <div class="item" data-slide-number="2">
                                        <img src="resource/img/site/Nipic_20120209073713400000.jpg"></div>

                                        <div class="item" data-slide-number="3">
                                        <img src="resource/img/site/Nipic_20141026172032198548.jpg"></div>

                                    </div><!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                    </a>                                
                                    </div>
                            </div>

                            <div class="col-sm-4" id="carousel-text"></div>

                            <div id="slide-content" style="display: none;">
                                <div id="slide-content-0">
                                    <h2>梅花</h2>
                                    <p>梅花，又名梅，别名：春梅、干枝梅、酸梅、乌梅, 蔷薇科、杏属小乔木，稀灌木，树皮浅灰色或带绿色，平滑；小枝绿色，光滑无毛。叶片卵形或椭圆形，梅原产我国南方，已有三千多年的栽培历史，无论作观赏或果树均有许多品种。许多类型不但露地栽培供观赏，还可以栽为盆花，制作梅，与兰、竹、菊并称为“四君子”。还与松、竹并称为“岁寒三友”。梅以它的高洁、坚强、谦虚的品格，给人以立志奋发的激励。在严寒中，梅开百花之先，独天下而春。</p>
                                    <p class="sub-text" style="float:right;"><a href="templates-species.jsp">查看更多</a></p>
                                </div>

                                <div id="slide-content-1">
                                    <h2>蒲公英</h2>
                                    <p>蒲公英（拉丁学名：Taraxacum mongolicum Hand.-Mazz.）菊科，蒲公英属多年生草本植物。根圆锥状，表面棕褐色，皱缩，叶边缘有时具波状齿或羽状深裂，基部渐狭成叶柄，叶柄及主脉常带红紫色，花葶上部紫红色，密被蛛丝状白色长柔毛；头状花序，总苞钟状，瘦果暗褐色，长冠毛白色，花果期4～10月。蒲公英别名黄花地丁、婆婆丁、华花郎等。菊科多年生草本植物。头状花序，种子上有白色冠毛结成的绒球，花开后随风飘到新的地方孕育新生命。</p>
                                    <p class="sub-text" style="float:right;"><a href="templates-species.jsp">查看更多</a></p>
                                </div>

                                <div id="slide-content-2">
                                    <h2>三角梅</h2>
                                    <p>Lorem Ipsum Dolor</p>
                                    <p class="sub-text" style="float:right;"><a href="templates-species.jsp">查看更多</a></p>
                                </div>

                                <div id="slide-content-3">
                                    <h2>玫瑰花</h2>
                                    <p>Lorem Ipsum Dolor</p>
                                    <p class="sub-text" style="float:right;"><a href="templates-species.jsp">查看更多</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
        <!-- /.row -->

        <hr>
            
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4">
            	<div class="panel panel-default">
	            	<div class="panel-heading">
	              		<h2 class="panel-title"><i class="fa fa-fw fa-bullhorn"></i> 通知新闻<small><a href="">more&nbsp;&raquo;</a></small></h2>
	            	</div>
		            <div class="panel-body">
		            	<ul class="list-unstyled">
                        	<li><a href="show-news.jsp">360°生命物语上线</a><span class="new-time">[10-16 22:24]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 22:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 23:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 20:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 20:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 20:22]</span></li>
                        </ul>
		            </div>
            	</div>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
            	<div class="panel panel-default">
	            	<div class="panel-heading">
	              		<h2 class="panel-title"><i class="fa fa-database"></i> 数据更新<small><a href="/ibiology/species/">more&nbsp;&raquo;</a></small></h2>
	            	</div>
		            <div class="panel-body">
		            	<ul class="list-unstyled">
		            		<%
		            			IbiologyIndexModel indexModel=(IbiologyIndexModel)getServletContext().getAttribute(IbiologyIndexService.INDEX_DATA_KEY);
		            			List<IbiologySpeciesModel> speciesList = indexModel.getSpeciesList();
		            			if(!speciesList.isEmpty())
		            			{
		            				int tmp=speciesList.size()>6?6:speciesList.size();
		            			    for(int i=0;i<tmp;i++)
		            			    {
		            			    	out.println("<li><a href='./species/"+IbiologyIDUtil.compile(speciesList.get(i).getId())+".html'>"+speciesList.get(i).getSpeciesName()+"</a><span class='new-time'>["+DateUtil.dateToStr(speciesList.get(i).getSpeciesUpdateTime(),"MM-dd HH:mm")+"]</span></li>");
		            			    }
		            			}
		            			else
		            			{
		            				out.print("<li>没有查询到相关数据！</li>");
		            			}
		            		%>
                        </ul>
		            </div>
            	</div>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
            	<div class="panel panel-default">
	            	<div class="panel-heading">
	              		<h2 class="panel-title"><i class="fa fa-newspaper-o"></i> 相关文章<small><a href="">more&nbsp;&raquo;</a></small></h2>
	            	</div>
		            <div class="panel-body">
		            	<ul class="list-unstyled">
                        	<li><a href="#">数据库欠缺"绿萝"的资料</a><span class="new-time">[10-16 22:24]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 22:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 23:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 20:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 12:22]</span></li>
                        	<li><a href="#">测试数据</a><span class="new-time">[10-16 12:22]</span></li>
                        </ul>
		            </div>
            	</div>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->
        
        <hr>
        
        <!-- Our Customers -->
        <div class="row">
            <div class="col-lg-12" style="padding: 0">
            	<blockquote>
            		植物点击榜
            	</blockquote>
            	
            	<div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top1.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>梅花</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top2.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>银杏</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top3.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>未知</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top4.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>竹子</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top5.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>荷花</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/top6.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>滴水观音</h5>
					</div>
	            </div>
            </div>
        </div>
        <!-- /.row -->
        
        <hr/>
        
         <!-- Our Customers -->
        <div class="row">
            <div class="col-lg-12" style="padding: 0">
            	<blockquote>
            		动物点击榜
            	</blockquote>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top1.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>萨摩耶</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top2.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>哈士奇</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top3.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>博美</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top4.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>猫</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top5.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>麻雀</h5>
					</div>
	            </div>
	            <div class="boxgrid captionfull col-md-2 col-sm-4 col-xs-6">
	                <img class="img-responsive customer-img" src="resource/img/site/animal_top6.jpg" alt="">
	                <div class="cover boxcaption">
						<h5>鹦鹉</h5>
					</div>
	            </div>
	    	</div>
        </div>
        <!-- /.row -->

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
	  jQuery(document).ready(function($) {
		  
	        $('#myCarousel').carousel({
	                interval: 5000
	        });
	 
	        $('#carousel-text').html($('#slide-content-0').html());
	 
	        //Handles the carousel thumbnails
	        $('[id^=carousel-selector-]').click( function(){
	                var id_selector = $(this).attr("id");
	                var id = id_selector.substr(id_selector.length -1);
	                var id = parseInt(id);
	                $('#myCarousel').carousel(id);
	        });
	 
	 
	        // When the carousel slides, auto update the text
	        $('#myCarousel').on('slid.bs.carousel', function (e) {
	                 var id = $('.item.active').data('slide-number');
	                $('#carousel-text').html($('#slide-content-'+id).html());
	        });


	        //skip to top
	        $('body').append('<div id="toTop" class="btn btn-default"><span class="glyphicon glyphicon-chevron-up"></span></div>');
	    	$(window).scroll(function () {
				if ($(this).scrollTop() != 0) {
					$('#toTop').fadeIn();
				} else {
					$('#toTop').fadeOut();
				}
			}); 
		    $('#toTop').click(function(){
		        $("html, body").animate({ scrollTop: 0 }, 600);
		        return false;
		    });

		  //Full Caption Sliding (Hidden to Visible)
			$('.boxgrid.captionfull').hover(function(){
				$(".cover", this).stop().animate({top:'65px'},{queue:false,duration:160});
			}, function() {
				$(".cover", this).stop().animate({top:'160px'},{queue:false,duration:160});
			});
	});
	</script>
</body>

</html>
