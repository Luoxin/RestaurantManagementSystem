<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Contacts</title>
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
</head>
<body>
<div class="main-bg">
              <!-- Header -->
    <header>
        <div class="inner">
            <h1 class="logo">
                <!-- <a href="home.jsp">餐饮管理系统 - 黑龙江大学</a> -->
                <img src="images/logo.png" alt="logo">
            </h1>
            <nav>
                <ul class="sf-menu">
                    <li class="current"><a href="home.jsp">系统首页</a></li>
                    <li>
                    <a href="">登录/注册</a>
                    <ul>
                     <li>
                        <a href="index-custLogin.jsp">用戶登录</a>
                        
                     </li>
                      <li>
                        <a href="shanghuLongin.jsp">商戶登录</a>
                        
                     </li>
                      <li>
                        <a href="register.jsp">用户注册</a>
                        
                     </li>
                     <li>
                        <a href="shanghuRegister.jsp">商户注册</a>
                        
                     </li>
                     </ul>
                    </li> 
                    <li>
                        <a href="">商户餐品总览</a>
                        <ul>
                            <li>
                                <a href="more-products-1.jsp">快餐便当</a>
                                <ul>
                                    <li><a href="#">简餐</a></li>
                                    <li><a href="#">盖浇饭</a></li>
                                    <li><a href="#">米粉面馆</a></li>
                                    <li><a href="#">麻辣烫</a></li>
                                    <li><a href="#">包子粥店</a></li>
                                    <li><a href="#">汉堡</a></li>
                                    <li><a href="#">香锅砂锅</a></li>
                                    <li><a href="#">饺子馄饨</a></li>
                                    <li><a href="#">黄焖鸡米饭</a></li>
                                    <li><a href="#">生煎锅贴</a></li>
                                    <li><a href="#">咖喱饭</a></li>
                                    <li><a href="#">煲仔饭</a></li>
                                    <li><a href="#">烧腊饭</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="more-products-2.jsp">特色菜系</a>
                                <ul>
                                    <li><a href="#">东北菜</a></li>
                                    <li><a href="#">海鲜</a></li>
                                    <li><a href="#">火锅烤鱼</a></li>
                                    <li><a href="#">其他菜系</a></li>
                                    <li><a href="#">川湘菜</a></li>
                                    <li><a href="#">粤菜</a></li>
                                    <li><a href="#">新疆菜</a></li>
                                    <li><a href="#">西北菜</a></li>
                                    <li><a href="#">鲁菜</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="more-products-3.jsp">异国料理</a>
                                <ul>
                                    <li><a href="#">日韩料理</a></li>
                                    <li><a href="#">披萨意面</a></li>
                                    <li><a href="#">西餐</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="more-products-4.jsp">小吃夜宵</a>
                                <ul>
                                    <li><a href="#">炸鸡炸串</a></li>
                                    <li><a href="#">烧烤</a></li>
                                    <li><a href="#">鸭脖卤味</a></li>
                                    <li><a href="#">地方小吃</a></li>
                                    <li><a href="#">小龙虾</a></li>
                                    <li><a href="#">零食</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="more-products-5.jsp">甜品饮品</a>
                                <ul>
                                    <li><a href="#">甜品</a></li>
                                    <li><a href="#">面包蛋糕</a></li>
                                    <li><a href="#">奶茶果汁</a></li>
                                    <li><a href="#">咖啡</a></li>
                                    
                                    
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- 顾客可以查看订单详情和个人中心  +  普通商家可以进行原料管理 和活动管理 -->
                    <li>
                        <a href="#">控制台</a>
                        <ul>
                            <li><a href="technology.jsp">订单详情</a></li>
                            <li><a href="technology.jsp">个人中心</a></li>
                            <li><a href="technology.jsp">商户原料管理</a></li>
                            <li><a href="technology.jsp">商户活动管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">食堂前台</a>
                        <ul>
                            <li><a href="pricing.jsp">前台点餐</a></li>
                        </ul>
                    </li>
                    <li>
                         <a href="#">系统后台</a>
                        <ul>
                            <li><a href="back-login.jsp">账户管理</a></li>
                            <li><a href="contacts.jsp">商户收益管理</a></li>
                            <li><a href="contacts.jsp">商户折扣管理</a></li>

                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        
    </header>
    <!-- Content -->
    <section id="content">
        <div class="container_24">
            <div class="wrapper">
            	<div class="grid_24 content-bg">
                	<div class="wrapper">
                    	
                        	<%
						request.setCharacterEncoding("UTF-8");
						Connection conn = ConnectionPool.getInstance().getConnection();
						Statement stm = conn.createStatement();
						ResultSet rs = stm.executeQuery("select * from userinfolist");
						out.print("<form name=\"myform\" method=\"post\">");
						out.print("<table width=\"90%\" border=1><tr><th>用户ID</th><th>用户验证信息<th>地址</th><th>修改</th><th>删除</th></tr>");
						while(rs.next()) {
				   			out.println("<tr align='center'>");
				   			out.println("<td>"+rs.getString("userID")+"</td>");
					   		out.println("<td>"+rs.getString("idCheck")+"</td>");
					   		out.println("<td>"+rs.getString("addressID")+"</td>");
					   		out.println("<td><input type='button' value='修改' id=\"updatebyid\" name=\""+rs.getString("userID")+"\"></td>");
							out.println("<td><input type='button' value='删除' id=\"deletebyid\" name=\""+rs.getString("userID")+"\"></td>");
					   		out.println("</tr>");
				   		}
				   		//out.print("<tr align='center'><td/><td/><td/>");
				   		//out.print("<td><a href=\"#\" onclick=\"updselect()\">修改选中记录</a></td>");
						//out.print("<td><a href=\"#\" onclick=\"delselect()\">删除选中记录</a></td></tr>");
						out.print("</table>");
						out.print("</form>");
						ConnectionPool.getInstance().release(conn);
						%>
                       <script>
						function updselect() {
							Button bt = (Button)document.getElementById("updatebyid");
							document.myform.action="updateuser.jsp";
							document.myform.submit();
						}
						function delselect() {
							Button bt = (Button)document.getElementById("deletebyid");
							document.myform.action="deleteuser.jsp";
							document.myform.submit();
						}
						</script>
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