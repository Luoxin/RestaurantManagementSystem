<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pricing</title>
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
	<script src="js/jsp5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
<style>
    .bottom{
        margin-left: 50px;
        margin-top: 50px;

    }
</style>
</head>
<%
	String shangJiaID=(String)session.getAttribute("shangJiaID");
	if(shangJiaID == null) {
		response.sendRedirect("../view/home.jsp");
		return;
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
						<li><a href="shanghulist.jsp">商户列表</a>
							
						<!-- 顾客可以查看订单详情和个人中心  +  普通商家可以进行原料管理 和活动管理 -->
						<!-- <li><a href="#">控制台</a>
							<ul>
								<li><a href="technology.jsp">订单详情</a></li>
								<li><a href="technology.jsp">个人中心</a></li>
								<li><a href="technology.jsp">商户原料管理</a></li>
								<li><a href="technology.jsp">商户活动管理</a></li>
							</ul></li> -->
						<li><a href="#">食堂前台</a>
							<ul>
								<li><a href="pricing.jsp">前台点餐</a></li>
							</ul></li>
						<li><a href="#">系统后台</a>
							<ul>
								<li><a href="back-login.jsp">账户管理</a></li>
								<li><a href="backindex.jsp">商户收益管理</a></li>
								<li><a href="contacts.jsp">商户折扣管理</a></li>

							</ul></li>
					</ul>
            </nav>
            <div class="clear"></div>
        </div>
        
    </header>
    <!-- Content -->
    <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com. July 16, 2012!</div>
        <div class="container_24">
            <div class="wrapper">
            	<div class="grid_24 content-bg">
                	<div class="wrapper">
                    	<article class="grid_6 suffix_1 prefix_1 alpha">
                        	<h2>后厨名单</h2>

                            <p class="p1">
                            	<strong class="str-2">
                                	毕浩宇
                                </strong>
                            </p>
                            <img src="images/bihaoyu.jpg" alt="" class="img-indent-bot">
                            <p class="p1">
                            	<i>中餐主厨</i>
                            </p>
                            <p class="p1 hr-border-1">
                                主要负责前菜和主菜部分
                            </p>

                            <p class="p1">
                                <strong class="str-2">
                                    舒永吉
                                </strong>
                            </p>
                            <img src="images/shuyongji.jpg" alt="" class="img-indent-bot">
                            <p class="p1">
                                <i>中餐副厨</i>
                            </p>
                            <p class="p1 hr-border-1">
                                主要负责粥和汤羹
                            </p>

                            <p class="p1">
                                <strong class="str-2">
                                    国家兴
                                </strong>
                            </p>
                            <img src="images/guojiaxing.jpg" alt="" class="img-indent-bot">
                            <p class="p1">
                                <i>西餐主厨</i>
                            </p>
                            <p class="p1 hr-border-1">
                                主要负责甜点
                            </p>

                            <div class="alignright">
                            	<a href="#" class="button">联系客服</a>
                            </div>
                        </article>
                        <article class="grid_15 suffix_1 omega">
                        	<h2>食堂今日菜单:</h2>
                            <div class="wrapper">
                            	<%
                               		
									Connection conn = ConnectionPool.getInstance().getConnection();
									PreparedStatement caidanstm=conn.prepareStatement("select * from caidanlist where shangJiaID=?");
									caidanstm.setString(1, shangJiaID);
									ResultSet caidanSet=caidanstm.executeQuery();
									int length = 18;
									int count=0;
									while(caidanSet.next()) {
										if(count==0 || count==length) {                     											
											out.print("<div class=\"grid_7\">");
											out.print("<ul class=\"price-list\">");
										}										
										String caipinID = caidanSet.getString("caipingID");
										Statement caipinstm=conn.createStatement();
										ResultSet caipinSet=caipinstm.executeQuery("select * from caipinglist");
										while(caipinSet.next()) {
											if(caipinID.equals(caipinSet.getString("caipingID"))) {
												count++;//输出数量
												out.print("<li><a id=\""+caipinID+"\" href=\"#\" class=\"price-item\">"+caipinSet.getString("caipingName")+"</a>");
												out.print("<span class=\"price\">￥"+caidanSet.getString("jiage")+"</span>");
												out.print("<span class=\"filler\">&nbsp;</span></li>");
											}	
										}
										if(count==length) {
											out.print("</ul>");
											out.print("</div>");
			                        	}
									}
									caidanSet.close();																													
								%>
								</ul>
                            	</div>
                                <div class="bottom">
                                    <a href="#" class="button">提交订单</a>
                                </div>
                            </div>
                        </article>
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
                                <div>专业餐饮系统 <a href="http://www.baidu.com" target="_blank">at www.baidu.com</a>. | <a href="http://www.google.com/" title="谷歌一下">Google.com</a>. 餐饮系统 - Bar Restaraunt.</div>
                                <div></div>
                                <div><a rel="nofollow" href="http://www.baidu.com">百度一下</a> by SBZG</div>
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
                                <li><a href="#"><img src="images/social-icon-1.png" alt=""></a></li>
                                <li><a href="#"><img src="images/social-icon-2.png" alt=""></a></li>
                                <li><a href="#"><img src="images/social-icon-3.png" alt=""></a></li>
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