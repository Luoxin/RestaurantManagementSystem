<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>商户餐品页</title>
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




</head>

<body>
	<div class="main-bg">
		<!-- Header -->
		<header>
			<div class="inner">
				<h1 class="logo">
					<!-- <a href="home.html">餐饮管理系统 - 黑龙江大学</a> -->
					<img src="images/logo.png" alt="logo">

					<div class="clear"></div>
			</div>

		</header>
		<!-- Content -->
		<section id="content">
			<!-- <div class="ic">More Website Templates @ TemplateMonster.com. July 16, 2012!</div> -->
			<div class="container_24">
				<div class="wrapper">
					<div class="grid_24 content-bg">

						<article class="grid_22 suffix_1 prefix_1 alpha omega">
							<h2>外卖商户</h2>
							
								<table>



									<%
										Connection conn = ConnectionPool.getInstance().getConnection();
										Statement stm1 = conn.createStatement();

										ResultSet shanghulist = stm1.executeQuery("select * from shangjialist");

										String shangJiaID = "无";
										String shanghuName = "无";
										int i = 1;
										while (shanghulist.next()) {

											shangJiaID = shanghulist.getString("shangJiaID");
											shanghuName = shanghulist.getString("shangjiaName");

											if (i % 3 == 0) {
									%>
									<tr>
										<div class="wrapper indent-bot">

											<%
												}
											%>
											<td>

												<div class="grid_7 alpha">
													<div class="wrapper">
														<img src="images/page2-img1.png" alt="" class="img-indent">
														<dl class="extra-wrap def-list-1">
															<dt>

																
																	<% 
																
																	%>
																	 <a
																	href="../caipinlist1/caipinglist.jsp?shangJiaID=<%=shangJiaID %>&shanghuName=<%=shanghuName %>" ><%=shanghuName%></a>
															</dt>
															<dd></dd>
														</dl>
													</div>
												</div>
											</td>
											<%
												if (i + 1 % 3 == 0) {
											%>
										</div>
									</tr>
									<%
										}
									%>
									<%
										}
									%>



								</table>
							
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
								<div>
									专业餐饮系统 <a href="http://www.baidu.com" target="_blank">at
										www.baidu.com</a>. | <a href="http://www.google.com/" title="谷歌一下">Google.com</a>.
									餐饮系统 - Bar Restaraunt.
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
	</footer>
	</div>
</body>

</html>