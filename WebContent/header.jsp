<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 百度统计代码 开始-->
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?1c0902d10c803ee5755a17dafded3935";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<!-- 百度统计代码结束 -->

<!-- 品牌宝可信网站开始 -->
<a key ="54880d54efbfb01faf756085" logo_style="fixed"  href="http://www.anquan.org" ><script src="http://static.anquan.org/static/outer/js/aq_auth.js"></script></a>
<!-- 品牌宝可信网站结束 -->

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
			<a class="navbar-brand" style="padding:0;" href="<%=request.getContextPath()%>/index"><img src="resource/img/site/logo.png" /></a>
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
					<a href="<%=request.getContextPath()%>/index"><i class="fa fa-home"></i> 首页</a>
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
					<a href="<%=request.getContextPath()%>/contact"><i class="fa fa-envelope-o"></i> 联系我们</a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>