<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <meta name="description" content="">
    <meta name="author" content="">

    <title>玫瑰花花语- 360°生命物语</title>
    
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

    <!-- Navigation -->
    <%@ include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

       <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">360°生命物语花语
                    <small>用花儿表达的语言</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="<%=request.getContextPath()%>">首页</a>
                    </li>
                    <li class="active">花语目录</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active">玫瑰花</a>
                    <a href="#" class="list-group-item">牡丹花</a>
                    <a href="#" class="list-group-item">蔷薇花</a>
                    <a href="#" class="list-group-item">菊花</a>
                    <a href="#" class="list-group-item">兰花</a>
                    <a href="#" class="list-group-item">菊花</a>
                    <a href="#" class="list-group-item">百合花</a>
                    <a href="#" class="list-group-item">郁金香</a>
                    <a href="#" class="list-group-item">康乃馨</a>
                    <a href="#" class="list-group-item">石竹花</a>
                    <a href="#" class="list-group-item">樱花</a>
                    <a href="#" class="list-group-item">水仙花</a>
                    <a href="#" class="list-group-item">风信子</a>
                    <a href="#" class="list-group-item">金鱼草</a>
                    <a href="#" class="list-group-item">荷花</a>
                    <a href="#" class="list-group-item">梅花</a>
                    <a href="#" class="list-group-item">杜鹃花</a>
                </div>
            </div>
            <!-- Content Column -->
            <div class="col-md-9">
                <table class="table table-striped table-hover">
                	<tr>
                		<th style="width: 150px;">玫瑰(朵)</th>
                		<th>含义（版本 1）</th>
                		<th>含义（版本 2）</th>
                		<th>蓝色妖姬</th>
                	</tr>
                	<tr>
                		<td>1 朵玫瑰</td><td> 我的心中只有你！ </td>
                		<td> 我的心中只有你 </td>
                		<td> 相守是一种承诺 </td>
                	</tr>
                	<tr>
                		<td> 2 朵玫瑰</td>
                		<td> 这世界只有我俩！</td>
                		<td> 这世界只有我俩</td>
                		<td> 相遇是一种宿命 （相遇是一种宿命，心灵的交汇让我们有诉不尽的浪漫情怀。）</td>
                	</tr>
                	<tr>
                		<td> 3 朵玫瑰 </td>
                		<td> 我爱你！</td>
                		<td> 我爱你</td>
                		<td> 你是我最深的爱恋 （你是我最深的爱恋希望永远铭记我们这段美丽的爱情故事！）</td>
                	</tr>
                	<tr>
                		<td> 4 朵玫瑰</td>
                		<td> 至死不渝！</td>
                		<td> 至死不渝</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 5 朵玫瑰</td>
                		<td> 由衷欣赏！</td>
                		<td> 由衷欣赏</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 6 朵玫瑰 </td>
                		<td> 互敬，互爱，互谅！</td>
                		<td> 互敬，互爱，互谅</td>
                		<td> 你是我的最爱</td>
                	</tr>
                	<tr>
                		<td> 7 朵玫瑰 </td>
                		<td> 我偷偷地爱著你！</td>
                		<td> 初恋</td>
                		<td> 无尽的祝福</td>
                	</tr>
                	<tr>
                		<td> 8 朵玫瑰</td>
                		<td> 感谢你的关怀扶持及鼓励！</td>
                		<td> 感谢你的关怀扶持及鼓励</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 9 朵玫瑰</td>
                		<td> 长久！</td>
                		<td> 想和你一辈子</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 10 朵玫瑰 </td>
                		<td> 十全十美无懈可击！</td>
                		<td> 十全十美、无懈可击</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 11 朵玫瑰 </td>
                		<td> 最爱只在乎你一人！ </td>
                		<td> 一生一世只爱你一个</td>
                		<td> 一心一意</td>
                	</tr>
                	<tr>
                		<td> 12 朵玫瑰 </td>
                		<td> 对你的爱与日俱增！</td>
                		<td> 对你的爱与日俱增！</td>
                		<td> 12枝+满天星： 哦，我的玫瑰情人，我要挑逗你、诱惑你、宠爱你、纵容你！</td>
                	</tr>
                	<tr>
                		<td> 13 朵玫瑰 </td>
                		<td> 我暗恋着你！</td>
                		<td> 你是我暗恋的人</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 14 朵玫瑰</td>
                		<td> 骄傲！</td>
                		<td> 骄傲</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 15 朵玫瑰 </td>
                		<td> 对你感到歉意</td>
                		<td> 月圆之夜</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 16 朵玫瑰 </td>
                		<td> 多变不安的爱情！</td>
                		<td> 拜倒在你的石榴裙下</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 17 朵玫瑰 </td>
                		<td> 绝望无可挽回的爱！</td>
                		<td> 你是我的妻子</td><td>　</td>
                	</tr>
                	<tr>
                		<td> 18 朵玫瑰 </td>
                		<td> 真诚与坦白！</td>
                		<td> 祝你永远青春美丽</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 19 朵玫瑰 </td>
                		<td> 忍耐与期待！</td>
                		<td> 期待长久</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 20 朵玫瑰 </td>
                		<td> 我仅一颗赤诚的心！</td>
                		<td> 我仅一颗赤诚的心</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 21 朵玫瑰 </td>
                		<td> 真诚的爱！</td>
                		<td> 真诚的爱</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 22 朵玫瑰 </td>
                		<td> 祝你好运！</td>
                		<td> 祝你好运</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td>24 朵玫瑰</td>
                		<td>时刻想念你</td>
                		<td>时刻想念你</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 25 朵玫瑰 </td>
                		<td> 祝你幸福！</td>
                		<td> 请你也爱我</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 27 朵玫瑰</td>
                		<td>一辈子长久陪伴</td>
                		<td> 老婆～我爱你</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 30 朵玫瑰</td>
                		<td> 信是有缘！</td>
                		<td> 爱上你是我最大的光荣</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 37 朵玫瑰 </td>
                		<td>　</td>
                		<td> 我在心里说我爱你</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 40 朵玫瑰 </td>
                		<td> 誓死不渝的爱情！</td>
                		<td> 誓死不渝的爱情</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 47 朵玫瑰</td>
                		<td>　</td>
                		<td> 你是我的唯一</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 50 朵玫瑰</td>
                		<td> 邂逅不期而遇！</td>
                		<td> 邂逅不期而遇</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 99 朵玫瑰</td>
                		<td> 天长地久 </td>
                		<td> 天长地久 FOREVER！</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 100 朵玫瑰</td>
                		<td> 百分之百的爱 </td>
                		<td> 百分百的爱 </td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 101 朵玫瑰</td>
                		<td> 最……最爱！</td>
                		<td> 最爱</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 108 朵玫瑰 </td>
                		<td> 求婚！ </td>
                		<td> 求婚 </td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 144 朵玫瑰 </td>
                		<td> 爱你生生世世</td>
                		<td> 爱你生生世世</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 365 朵玫瑰 </td>
                		<td> 天天想你</td>
                		<td> 天天想你</td>
                		<td>　</td>
                	</tr>
                	<tr>
                		<td> 999 朵玫瑰 </td>
                		<td> 天长地久</td>
                		<td> 天长地久</td>
                		<td>　　</td>
                	</tr>
                	<tr>
                		<td> 1001 朵玫瑰 </td>
                		<td> 直到永远</td>
                		<td> 直到永远</td>
                		<td></td>
                	</tr>
                	<tr>
                		<td> 1314 朵玫瑰 </td>
                		<td> 爱你一生一世</td>
                		<td> 爱你一生一世</td>
                		<td></td>
                	</tr>
                </table>
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
