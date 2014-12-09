<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
<div class="collapse navbar-collapse navbar-ex1-collapse">
	<ul class="nav navbar-nav side-nav" id="menu">
		<li id="index">
			<a href="<%=request.getContextPath()%>/manage/manage.jsp"><i class="fa fa-fw fa-home"></i> 管理系统首页</a>
		</li>
		<li id="news">
			<a href="news-manage.jsp"><i class="fa fa-fw fa-bar-chart-o"></i> 新闻管理</a>
		</li>
		<li>
			<a href="#"><i class="fa fa-fw fa-table"></i> 百科资源维护</a>
		</li>
		<li id="image">
			<a href="image-manage.jsp"><i class="fa fa-fw fa-image"></i> 图片管理</a>
		</li>
		<li>
			<a href="#"><i class="fa fa-fw fa-edit"></i> 广告维护</a>
		</li>
		<li id="links">
			<a href="links.jsp"><i class="fa fa-fw fa-desktop"></i> 友情链接</a>
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
			<a href="#"><i class="fa fa-fw fa-file"></i> Blank Page</a>
		</li>
	</ul>
</div>

<!-- /.navbar-collapse -->
<script type="text/javascript">
	$(document).ready(function(){
		var title=document.title;
		$("menu").children("li").each(function(){
			$(this).removeClass("active");
			});
		if(title.indexOf("新闻管理")!=-1)
		{
			$("#news").addClass("active");
		}
		else if(title.indexOf("图片管理")!=-1)
		{
			$("#image").addClass("active");
		}
		else if(title.indexOf("友情链接")!=-1)
		{
			$("#links").addClass("active");
		}
		else
		{
			$("#index").addClass("active");
		}
	});
</script>