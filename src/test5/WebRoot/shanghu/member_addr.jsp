<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<script type="text/javascript">
    
      
  </script>
<title>个人中心 - 地址管理-member_addr.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="饿了么是中国最专业的网上订餐平台，提供各类中式、日式、韩式、西式等优质美食，如肯德基网上订餐，麦当劳网上订餐等。" />






<link href="css/forward_201503262210.css" type="text/css"
	rel="stylesheet" />
<!--[if (gte IE 7)&( lte IE 9)]>
<link href="css/forward_iehack_201503262210.css" type="text/css" rel="stylesheet" />
<![endif]-->
<link rel="apple-touch-icon-precomposed"
	href="images/apple-touch-icon.png?v=2" />
<link rel="shortcut icon" href="images/favicon.ico?v=2"
	type="image/x-icon" />
<script src="js/cdn_detect.js"></script>
<script>
if(!window.CDNReady){var d=new Date;d.setHours(d.getHours()+6);document.cookie="CDNDown=1; domain=ele.me; expires="+d.toUTCString()+"; path=/";if(!window.localStorage.getItem("CDNBackup")){window.localStorage.setItem("CDNBackup",1);location.reload(true)}}
</script>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
<![endif]-->
<script type="text/javascript">
  var ma = "profile/address";
  var logined = true;
  var eleme = eleme || {};
  var start_time = new Date().getTime();
  var current_username = 'hjl416148489';
  eleme.logined = eleme.logined || true;
  eleme.ma = eleme.ma || "profile/address";
  eleme.place_id = eleme.place_id || "-615736186413943440";
  eleme.sessionId = "1a040c781726139937fd8ce009e95cc1";
  eleme.staticHost = "http://static10.elemecdn.com";
  eleme.host = "ele.me";
  eleme.api_host = "api.ele.me";
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2513347-3']);
  _gaq.push(['_setDomainName', '.ele.me']);
  _gaq.push(['_setAllowHash', false]);
  _gaq.push(['_addIgnoredOrganic', '饿了']);
  _gaq.push(['_addIgnoredOrganic', '饿了么']);
  _gaq.push(['_addIgnoredOrganic', '¶öÁËÃ´']);
  _gaq.push(['_addIgnoredOrganic', '饿了吗']);
  _gaq.push(['_addIgnoredOrganic', '¶öÁËÂð']);
  _gaq.push(['_addIgnoredOrganic', '饿了网']);
  _gaq.push(['_addIgnoredOrganic', '饿了吗?']);
  _gaq.push(['_addIgnoredOrganic', '饿了吧']);
  _gaq.push(['_addIgnoredOrganic', '饿了么网']);
  _gaq.push(['_addIgnoredOrganic', '饿了么网上订餐']);
  _gaq.push(['_addIgnoredOrganic', '饿了么 上海']);
  _gaq.push(['_addIgnoredOrganic', '饿了么 杭州']);
  _gaq.push(['_addIgnoredOrganic', '饿了么 北京']);
  _gaq.push(['_addIgnoredOrganic', '饿了么上海']);
  _gaq.push(['_addIgnoredOrganic', '饿了么网站']);
  _gaq.push(['_addIgnoredOrganic', '饿了么杭州']);
  _gaq.push(['_addIgnoredOrganic', '饿了吗网站']);
  _gaq.push(['_addIgnoredOrganic', 'ele']);
  _gaq.push(['_addIgnoredOrganic', 'eleme']);
  _gaq.push(['_addIgnoredOrganic', 'elema']);
  _gaq.push(['_addIgnoredOrganic', 'ele.me']);
  _gaq.push(['_addIgnoredOrganic', 'ele me']);
  _gaq.push(['_addIgnoredOrganic', 'www.ele.me']);
  _gaq.push(['_addIgnoredOrganic', 'http://ele.me/']);
  _gaq.push(['_addIgnoredOrganic', 'http://www.ele.me/']);

  _gaq.push(["_addOrganic", "sogou", "query"]);
  _gaq.push(["_addOrganic", "so.360.cn", "q"]);
  _gaq.push(["_addOrganic", "so.com", "q"]);
  _gaq.push(["_addOrganic", "baidu", "word"]);
  _gaq.push(['_addOrganic', 'm.baidu', 'word']);
  _gaq.push(['_addOrganic', 'wap.baidu', 'word']);
  _gaq.push(['_addOrganic', 'baidu', 'kw']);
  _gaq.push(['_addOrganic', 'baidu', 'wd']);
  _gaq.push(["_addOrganic", "soso", "w"]);

  _gaq.push(['_trackPageview']);
</script>
<script type="text/javascript" src="js/head_201503262210.js"></script>
</head>
<!--[if IE 8]><body class="lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 9]><body class="lt-ie10"><![endif]-->
<!--[if gt IE 9]><!-->
<body>
	<!--<![endif]-->
	<link href="css/background.css?v=5" type="text/css" rel="stylesheet" />
	<div id="background"
		style="background-position:1px -10667.361111111px;background-color:#C0DEED;"
		class=" night ">
		<div id="sun"></div>
		<div id="moon"></div>
		<div id="clouds">
			<div id="cloudGroup1">
				<img src="images/clouds.png" alt="" id="cloudPiece1"
					class="cloudPiece" /> <img src="images/clouds.png" alt=""
					id="cloudPiece2" class="cloudPiece" /> <img
					src="images/clouds.png" alt="" id="cloudPiece3" class="cloudPiece" />
			</div>
			<div id="cloudGroup2">
				<img src="images/clouds.png" alt="" id="cloudPiece4"
					class="cloudPiece" /> <img src="images/clouds.png" alt=""
					id="cloudPiece5" class="cloudPiece" /> <img
					src="images/clouds.png" alt="" id="cloudPiece6" class="cloudPiece" />
			</div>
			<div id="cloudGroup3">
				<img src="images/clouds.png" alt="" id="cloudPiece7"
					class="cloudPiece" /> <img src="images/clouds.png" alt=""
					id="cloudPiece8" class="cloudPiece" />
			</div>
		</div>
		<div id="bg_stars">
			<div class="star_type_1_big">
				<div class="bg_star" id="star1_1"></div>
				<div class="bg_star" id="star1_2"></div>
				<div class="bg_star" id="star1_3"></div>
				<div class="bg_star" id="star1_4"></div>
				<!--             <div class="bg_star" id="star1_5"></div>
            <div class="bg_star" id="star1_6"></div> -->
			</div>
			<div class="star_type_1_normal">
				<div class="bg_star" id="star1_7"></div>
				<div class="bg_star" id="star1_8"></div>
				<div class="bg_star" id="star1_9"></div>
				<div class="bg_star" id="star1_10"></div>
				<div class="bg_star" id="star1_11"></div>
				<div class="bg_star" id="star1_12"></div>
			</div>
			<div class="star_type_1_small">
				<div class="bg_star" id="star1_13"></div>
				<div class="bg_star" id="star1_14"></div>
				<div class="bg_star" id="star1_15"></div>
				<div class="bg_star" id="star1_16"></div>
				<div class="bg_star" id="star1_17"></div>
				<div class="bg_star" id="star1_18"></div>
			</div>
			<div class="star_type_2_big">
				<div class="bg_star" id="star2_1"></div>
				<div class="bg_star" id="star2_2"></div>
				<div class="bg_star" id="star2_3"></div>
				<div class="bg_star" id="star2_4"></div>
				<!--             <div class="bg_star" id="star2_5"></div>
            <div class="bg_star" id="star2_6"></div> -->
			</div>
			<div class="star_type_2_normal">
				<div class="bg_star" id="star2_7"></div>
				<div class="bg_star" id="star2_8"></div>
				<div class="bg_star" id="star2_9"></div>
				<div class="bg_star" id="star2_10"></div>
				<div class="bg_star" id="star2_11"></div>
				<div class="bg_star" id="star2_12"></div>
			</div>
			<div class="star_type_2_small">
				<div class="bg_star" id="star2_13"></div>
				<div class="bg_star" id="star2_14"></div>
				<div class="bg_star" id="star2_15"></div>
				<div class="bg_star" id="star2_16"></div>
				<div class="bg_star" id="star2_17"></div>
				<div class="bg_star" id="star2_18"></div>
			</div>
		</div>
	</div>
	<div class="full-content-wrapper">
		<header id="topbar" role="banner">
			<div class="container clearfix">

				<div class="mobile-wrap">

					<div id="popup_mobile" class="popup-mobile">
						<div class="arrow"></div>
						<div class="panel">
							<p class="title">扫一扫，手机订餐更方便</p>
							<a class="qrcode" href="mobile.jsp" target="_blank"><img
								src="images/app-qrcode-72.png" alt="扫一扫，手机订餐更方便" />
							</a> <a class="btn-ios" href="http://m.ele.me/download/ios/eleme"
								target="_blank"><span>App Store下载</span>
							</a> <a class="btn-android"
								href="http://m.ele.me/download/android/eleme"><span>Android版</span>
							</a>
						</div>
					</div>
				</div>
				<div id="topbar_search" class="topbar-search" role="search">

					<div id="tsearch_autocomplete" class="tsearch-autocomplete"></div>
				</div>
				<nav class="topbar-nav" role="navigation">
					<ul class="topbar-site-nav">
						<li><a class="tnav-link current" rel="nofollow"
							href="member_order.jsp">我的饿单</a>
						</li>

					</ul>
					<div id="topbar_cart"
						class="eleme_dropdown topbar-widget topbar-cart">
						<a class="e_toggle twidget-toggle"> <span id="tcart_total"
							class="tcart-total twidget-total">1</span> <i class="icon-tcart"></i>
						</a>
						<div class="e_dropdown twidget-dropdown">
							<div id="tcart_loading" class="twidget-loading"></div>
							<div id="tcart_wrapper"></div>
						</div>
					</div>
					<div id="topbar_msg"
						class="eleme_dropdown topbar-widget topbar-msg">
						<a class="e_toggle twidget-toggle"> <span id="tmsg_total"
							class="tmsg-total twidget-total">0</span> <i class="icon-tmsg"></i>
						</a>
						<div class="e_dropdown twidget-dropdown">
							<div id="tmsg_loading" class="twidget-loading"></div>
							<div id="tmsg_wrapper"></div>
						</div>
					</div>
					<div class="eleme_dropdown topbar-user-nav"></div>
				</nav>
			</div>
		</header>
		<div class="container">

			<div class="wash-paper clearfix" id="profile">
				<nav class="profile-nav">
					<ul class="nav nav-list">
						<li><a href="member_index.jsp"> <i class="icon-user"></i>
								个人中心 </a></li>
						<li class="divider"></li>
						<li class="nav-header">饿单中心</li>


						<li><a href="member_order_refund.jsp"> <i
								class="icon-file"></i> 我的订单 </a></li>



						<li class="divider"></li>
						<li class="nav-header">账户相关</li>
						<li class="active"><a href="member_addr.jsp"> <i
								class="icon-list icon-white"></i> 我的地址 </a></li>
						<li class="divider"></li>

						<li class="nav-header">安全中心</li>
						<li><a href="member_pwd.jsp"> <i class="icon-cog"></i>
								修改密码 </a></li>

						<li class="divider"></li>

					</ul>
				</nav>
				<div class="main-content">
					<div class="content-header">
						<h2>管理我的地址</h2>
					</div>
					<div class="content-inner profile-address">
						<% 
      Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm1 = conn.createStatement();
	Statement stm2 = conn.createStatement();
	Statement stm3 = conn.createStatement();
	ResultSet rs1userinfolist = stm1.executeQuery("select * from userinfolist");
	ResultSet rs2orderphone = stm2.executeQuery("select * from orderphone");
	ResultSet rs3addresslist = stm3.executeQuery("select * from addresslist");
	String userId=(String)session.getAttribute("userId");
	System.out.println(userId);
	String address="无";
	String phone="无";
	int flag1=0,flag2=0,i=0;
	while (rs1userinfolist.next()) { 
			if (rs1userinfolist.getString("userId").equals(userId)) {
				while (rs2orderphone.next()) {
					if (rs2orderphone.getString("userId").equals(userId)) {
						phone=rs2orderphone.getString("phone");
						flag1=1;
						break;
					}
				 }
	
				 while (rs3addresslist.next()) {
					if (rs1userinfolist.getString("addressId").equals(rs3addresslist.getString("addressId"))) {
						address=rs3addresslist.getString("address");
						flag2=1;
						break;
					}
				}

			ConnectionPool.getInstance().release(conn);
		
		}
		if(flag1==1&&flag2==1){
			ConnectionPool.getInstance().release(conn);break;
		}
			
		}
	
	%>

						<h3>编辑送餐地址</h3>
						<form  class="ui-form-horizontal" method="post" action="updateAddress.jsp" action="updateAddress.jsp">
							<input type="hidden" name="address[id]" id="address_id" /> <input
								type="hidden" name="address[_csrf_token]"
								value="769532b677c313420e1acb228079d074"
								id="address__csrf_token" /> <input type="hidden"
								name="address[entry_id]" id="address_entry_id" /> <label
								for="address_address"><span class="required-mark">*</span>详细地址</label>
							<input type="text" name="address" id="address_address"
								value=<%=address %> />
							<p>（请填写真实详细的送餐地址）</p>
							<label for="address_phone"><span class="required-mark">*</span>手机号码</label>
							<input type="text" name="phone" id="address_phone"
								value=<%=phone%> />
							<p>（请保证外卖员能打通该号码）</p>

							<div class="ui-form-footer">
								<button  type="submit" class="btn btn-yellow">保存</button>
								 <%
          
         String  updateAddress= (String)session.getAttribute("updateAddress");
         if(updateAddress==null)updateAddress="";
          
          out.print(updateAddress); 
          %>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="site_fixed" class="site-fixed">
			<a id="back_top" class="btn-back-top ui_invisible" role="button"
				title="回顶部"><i class="icon-backtop"></i>
			</a>
			<div class="btn-app-qrcode">
				<i class="icon-qrcode"></i>

			</div>
		</div>

	</div>
	<script type="text/javascript" src="js/foot_201503262210.js"></script>
	<script src="js/profile_201503262210.js"></script>

</body>
</html>