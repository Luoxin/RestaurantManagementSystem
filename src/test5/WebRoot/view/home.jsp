<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>系统首页</title>
<meta charset="utf-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/slider.js"></script>
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
<style>
.hide {
	display: none;
}
</style>

</head>
<%
	String loginhide = "";
	String gerenhide = "hide";
	String qiantai = "hide";
	String username = "";
	if (session.getAttribute("uname") != null) {
		username = (String) session.getAttribute("uname");
		loginhide = "hide";
		gerenhide = "";
	} else if (session.getAttribute("shangjiaName") != null) {
		%>
		<script>
			window.open("../tishikuang/tishikuang.jsp");
		</script> 
		<%
		username = (String) session.getAttribute("shangjiaName");
		loginhide = "hide";
		qiantai = "";
		gerenhide = "";
	}
%>

<body>

	<div class="main-bg">
		<!-- Header -->
		<header>
			<div class="inner">
				<h1 class="logo">
					<!-- <a href="home.html">餐饮管理系统 - 黑龙江大学</a> -->
					<img src="images/logo.png" alt="logo">
				</h1>
				<nav>
					<ul class="sf-menu">
						<li class="current"><a href="home.jsp">系统首页</a></li>
						<li class="<%=loginhide%>"><a href="">登录/注册</a>
							<ul>
								<li><a href="index-custLogin.jsp">用戶登录</a></li>
								<li><a href="shanghuLongin.jsp">商戶登录</a></li>
								<li><a href="register.jsp">用户注册</a></li>
								<li><a href="shanghuRegister.jsp">商户注册</a></li>
							</ul></li>
						<li><a href="shanghulist.jsp">商户列表</a>
							
						<!-- 顾客可以查看订单详情和个人中心  +  普通商家可以进行原料管理 和活动管理 -->
						<!-- <li><a href="#">控制台</a>
							<ul>
								<li><a href="technology.jsp">订单详情</a></li>
								<li><a href="technology.jsp">个人中心</a></li>
								<li><a href="technology.jsp">商户原料管理</a></li>
								<li><a href="technology.jsp">商户活动管理</a></li>
							</ul></li> -->
						<li class="<%=qiantai%>"><a href="#">食堂前台</a>
							<ul>
								<li><a href="pricing.jsp">前台点餐</a></li>
							</ul></li>
						<li><a href="#">系统后台</a>
							<ul>
								<li><a href="back-login.jsp">账户管理</a></li>
								<li><a href="backindex.jsp">商户收益管理</a></li>
								<li><a href="contacts.jsp">商户折扣管理</a></li>

							</ul></li>
						<li class="<%=gerenhide%>"><a><%=username%></a>
							<ul>
								<%
							
									request.setCharacterEncoding("UTF-8");
									String shangJiaID = (String) session.getAttribute("shangJiaID");
									String userId = (String) session.getAttribute("userId");
									String longin = "q";
									if (userId != null) {
										longin = "../shanghu/member_index.jsp";
									}

									else if (shangJiaID != null) {
										longin = "../shanghuhoutai/shanghu_index.jsp";
									}
								%>



								<li><a href=<%=longin%> title="个人中心" target="_blank">个人中心</a></li>
								<li><a href="exit.jsp" onClick="">退出</a></li>
							</ul></li>
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
			<div class="slider-container">
				<div class="mp-slider">
					<ul class="items">
						<li><img src="images/slide-1-1.jpg" alt="" />
							<div class="banner mp-ban-1">
								<span class="row-1">新用户专享</span> <span class="row-2">最高50元红包</span>
								<!-- <span class="row-3">领取</span> -->
							</div></li>
						<li><img src="images/slide-2-2.jpg" alt="" />
							<div class="banner mp-ban-2">
								<span class="row-1">饭后来点小甜点</span> <span class="row-2">好吃又好看的</span>
								<span class="row-3">西红柿蘸白糖</span>
							</div></li>
						<li><img src="images/slide-3-3.jpg" alt="" />
							<div class="banner mp-ban-3">
								<span class="row-1">洋葱炒肉</span> <span class="row-2">味道很不错的哦</span>
								<span class="row-3">了解一下？</span>
							</div></li>
					</ul>
				</div>
			</div>
			<a href="#" class="mp-prev"></a> <a href="#" class="mp-next"></a>
		</header>
		<!-- Content -->
		<section id="content">
			<!-- <div class="ic">More Website Templates @ TemplateMonster.com. July 16, 2012!</div> -->
			<div class="container_24">
				<div class="wrapper">
					<div class="grid_24 content-bg">
						<div class="wrapper">
							<div class="grid_16 suffix_1 prefix_1 alpha">
								<article class="indent-bot">
									<h2>今日推荐菜品</h2>
									<div class="wrapper hr-border-1">
										<div class="grid_4 alpha">
											<img src="images/page1-img1-1.jpg" class="img-indent-bot"
												alt="">
											<dl class="def-list-1">
												<dt>
													<a href="#">番茄炒蛋</a>
												</dt>
												<dd>
													西红柿炒鸡蛋，又名番茄炒蛋，是许多百姓家庭中一道普通的大众菜肴。烹饪方法简单易学，营养搭配合理。鲜艳，口味宜人，爽口、开胃，深受大众喜爱。其营养价值丰富，具有营养素互补的特点以及健美抗衰老的作用。
												</dd>
											</dl>
										</div>
										<div class="grid_4">
											<img src="images/page1-img2-2.jpg" class="img-indent-bot"
												alt="">
											<dl class="def-list-1">
												<dt>
													<a href="#">地三鲜</a>
												</dt>
												<dd>
													地三鲜是一道东北传统名菜，制作材料是三种地里时令新鲜的食材：茄子、土豆和青椒。它不仅在于鲜浓的味道、天然绿色的食材，更胜于它涵盖多种食材的营养，让三味非常普通的食材做成鲜爽无比的佳肴。
												</dd>
											</dl>
										</div>
										<div class="grid_4">
											<img src="images/page1-img3-3.jpg" class="img-indent-bot"
												alt="">
											<dl class="def-list-1">
												<dt>
													<a href="#">爆炒大头菜</a>
												</dt>
												<dd>
													爆炒大头菜是一道家常小炒，营养丰富，鲜香脆爽，是一款不错的下饭小菜。由主要原料大头菜、干辣椒、盐、耗油等组成。</dd>
											</dl>
										</div>
										<div class="grid_4 omega">
											<img src="images/page1-img4-4.jpg" class="img-indent-bot"
												alt="">
											<dl class="def-list-1">
												<dt>
													<a href="#">土豆烧牛肉</a>
												</dt>
												<dd>土豆烧牛肉是中国西北地区的一道家常菜。主要原料有土豆和牛肉等，色泽红润，口感咸香，秋冬两季食用最佳。
												</dd>
											</dl>
										</div>
									</div>
									<div class="alignright">
										<a href="#" class="button">更多</a>
									</div>
								</article>
								<article class="banner-box">
									<div class="inner">
										<h3>如何才能吃的健康？</h3>
										<h4>下面有请我们的厨师长讲解饮食营养</h4>
										<blockquote class="quote indent-right">
											<strong>如何挣脱营养学的桎梏？从理论上来讲很简单——把营养学的各种主张抛诸脑后，该吃啥就吃啥。但是鉴于的“食物环境”，要在现实生活中做到这一点却不太容易。尽管如此，要做到真正的健康饮食，还是有一些简单的原则值得重视和遵循：以吃蔬菜瓜果为主，多吃菜叶；一天吃两顿饭
												最有利健康； 
										</blockquote>
										<div class="alignright indent-right">
											<span class="author">约翰 史密斯<i>(厨师长)</i></span>
										</div>
									</div>
									<img src="images/banner-box-img.png" alt=""
										class="banner-box-img">
								</article>
							</div>
							<div class="grid_5 suffix_1 omega">
								<article class="indent-bot-1">
									<h2 class="heading-1">欢迎登陆</h2>
									<p class="p1">
										<strong> 本系统是由黑龙江大学软件学院15级舒永吉、毕浩宇、朱银松、国家兴等人研发完成。 </strong>
									</p>
									<p class="hr-border-1">本系统的开发是为了给商户和用户提供一个订餐平台，用于普通想要提供外
										卖服务的餐馆以及想要提供送餐服务个别公司内部餐厅提供一个订餐平台。
										本产品为用户提供了订餐、查看菜品、查看商家、订单追踪、差评率等信息。
										为商户提供了接受订单、活动管理、收益查看、原料管理。对于普通商户提供了 前后台的点餐服务，为集团商户提供了供销用户管理。</p>
									<div class="alignright">
										<a href="#" class="button">更多</a>
									</div>
								</article>
								<article>
									<h2>系统功能：</h2>
									<ul class="list-1">
										<li><a href="#">登录注册</a></li>
										<li><a href="#">用户点餐</a></li>
										<li><a href="#">用户订单查询</a></li>
										<li><a href="#">商户管理订单</a></li>
										<li><a href="#">食堂前台点餐</a></li>
										<li><a href="#">商户管理</a></li>
									</ul>
								</article>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Footer -->
		<footer>
			<div class="container_24">
				<div class="wrapper">
					<div class="grid_24 footer-bg">
						<div class="hr-border-2"></div>
						<div class="wrapper">
							<div class="grid_7 suffix_1 prefix_1 alpha">
								<div class="copyright">
									&copy; 2018 <strong class="footer-logo">Bar&Restaraunt</strong>
									<div>
										专业餐饮系统 <a href="http://www.baidu.com" target="_blank">at
											www.baidu.com</a>. | <a href="http://www.google.com/"
											title="谷歌一下">Google.com</a>. 餐饮系统 - Bar Restaraunt.
									</div>
									<div></div>
									<div>
										<a rel="nofollow" href="http://www.baidu.com">百度一下</a> by SBZG
									</div>
								</div>
							</div>
							<div class="grid_4">
								<h5 class="heading-1">升级时间:</h5>
								<ul class="footer-list">
									<li><a href="#">2015九月</a></li>
									<li><a href="#">2016九月</a></li>
									<li><a href="#">2017九月</a></li>
									<li><a href="#">2018九月</a></li>
								</ul>
							</div>
							<div class="grid_4">
								<h5 class="heading-1">相关链接:</h5>
								<ul class="footer-list">
									<li><a href="http://www.foodwang.com/">健康饮食网</a></li>
									<li><a href="http://www.meishij.net/">美食杰</a></li>
									<li><a href="https://www.meishichina.com/">美食天下</a></li>
									<li><a href="http://www.xiachufang.com/">下厨房</a></li>
								</ul>
							</div>
							<div class="grid_4">
								<h5 class="heading-1">支持:</h5>
								<ul class="footer-list">
									<li><a href="#">黑龙江大学</a></li>
									<li><a href="#">软件学院</a></li>
									<li><a href="#">软件工程系统分析</a></li>
								</ul>
							</div>
							<div class="grid_2 suffix_1 omega">
								<ul class="social-list">
									<li><a href="#"><img src="images/social-icon-1.png"
											alt=""></a></li>
									<li><a href="#"><img src="images/social-icon-2.png"
											alt=""></a></li>
									<li><a href="#"><img src="images/social-icon-3.png"
											alt=""></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>