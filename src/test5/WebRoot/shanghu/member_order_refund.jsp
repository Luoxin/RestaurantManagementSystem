<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

  <script type="text/javascript">
    
      
  </script>
  <title>个人中心 - 查看订单-member_order_refund.jsp</title>
 
    
<link href="css/forward_201503262210.css" type="text/css" rel="stylesheet" />
<!--[if (gte IE 7)&( lte IE 9)]>
<link href="css/forward_iehack_201503262210.css" type="text/css" rel="stylesheet" />
<![endif]-->
  <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon.png?v=2" />
  <link rel="shortcut icon" href="images/favicon.ico?v=2" type="image/x-icon" />

  <script src="js/cdn_detect.js"></script>
<script>
if(!window.CDNReady){var d=new Date;d.setHours(d.getHours()+6);document.cookie="CDNDown=1; domain=ele.me; expires="+d.toUTCString()+"; path=/";if(!window.localStorage.getItem("CDNBackup")){window.localStorage.setItem("CDNBackup",1);location.reload(true)}}
</script>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
<![endif]-->


<script type="text/javascript">
  var ma = "profile/order";
  var logined = true;
  var eleme = eleme || {};
  var start_time = new Date().getTime();
  var current_username = 'hjl416148489';
  eleme.logined = eleme.logined || true;
  eleme.ma = eleme.ma || "profile/order";
  eleme.place_id = eleme.place_id || "-615736186413943440";
  eleme.sessionId = "1a040c781726139937fd8ce009e95cc1";
  eleme.staticHost = "https://static.ele.me";
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





      <link href="css/background.css?v=5" type="text/css" rel="stylesheet">
<div id="background" style="background-position:1px -10709.027777778px;background-color:#C0DEED;" class=" night ">
    <div id="sun"></div>
    <div id="moon"></div>

    <div id="clouds">
        <div id="cloudGroup1">
            <img src="images/clouds.png" alt="" id="cloudPiece1" class="cloudPiece">
            <img src="images/clouds.png" alt="" id="cloudPiece2" class="cloudPiece">
            <img src="images/clouds.png" alt="" id="cloudPiece3" class="cloudPiece">
        </div>
        <div id="cloudGroup2">
            <img src="images/clouds.png" alt="" id="cloudPiece4" class="cloudPiece">
            <img src="images/clouds.png" alt="" id="cloudPiece5" class="cloudPiece">
            <img src="images/clouds.png" alt="" id="cloudPiece6" class="cloudPiece">
        </div>
        <div id="cloudGroup3">
            <img src="images/clouds.png" alt="" id="cloudPiece7" class="cloudPiece">
            <img src="images/clouds.png" alt="" id="cloudPiece8" class="cloudPiece">
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

       
            <i class="default-logo"></i>
                </a>

    <div class="mobile-wrap">
    
      <div id="popup_mobile" class="popup-mobile">
        <div class="arrow"></div>
       
      </div>
    </div>

    <div id="topbar_search" class="topbar-search" role="search">
    
      <div id="tsearch_autocomplete" class="tsearch-autocomplete"></div>

    </div>

    <nav class="topbar-nav" role="navigation">
      <ul class="topbar-site-nav">
        <li><a class="tnav-link current" rel="nofollow" href="member_order.jsp">我的饿单</a></li>
     
      </ul>

      <div id="topbar_cart" class="eleme_dropdown topbar-widget topbar-cart">
        <a class="e_toggle twidget-toggle">
          <span id="tcart_total" class="tcart-total twidget-total">1</span>
          <i class="icon-tcart"></i>
        </a>
        <div class="e_dropdown twidget-dropdown">
          <div id="tcart_loading" class="twidget-loading"></div>
          <div id="tcart_wrapper"></div>
        </div>
      </div>

            <div id="topbar_msg" class="eleme_dropdown topbar-widget topbar-msg">
        <a class="e_toggle twidget-toggle">
          <span id="tmsg_total" class="tmsg-total twidget-total">0</span>
          <i class="icon-tmsg"></i>
        </a>
        <div class="e_dropdown twidget-dropdown">
          <div id="tmsg_loading" class="twidget-loading"></div>
          <div id="tmsg_wrapper"></div>
        </div>
      </div>

      
      
    </nav>

  </div>
</header>
                <div class="container">
          
          



<div class="wash-paper clearfix" id="profile">
  <nav class="profile-nav">
  <ul class="nav nav-list">
        <li>
      <a href="member_index.jsp">
        <i class="icon-user"></i>
        个人中心
      </a>
    </li>
    <li class="divider"></li>
    
    <li class="nav-header">定单中心</li>
    <li>
 
    </li>
    
    
        <li class="active">
      <a href="member_order_refund.jsp">
        <i class="icon-file icon-white"></i>
        我的订单
      </a>
    </li>
           


    <li class="divider"></li>

    <li class="nav-header">账户相关</li>
    <li>
      <a href="member_addr.jsp">
        <i class="icon-list"></i>
        我的地址
      </a>
    </li>
  
  
    <li class="divider"></li>

    <li class="nav-header">安全中心</li>
    <li>
      <a href="member_pwd.jsp">
        <i class="icon-cog"></i>
        修改密码
      </a>
    </li>
   
            <li class="divider"></li>

   
   
      </ul>
</nav>

   <%
	String userId=(String)session.getAttribute("userId");
	if(userId == null) {
		response.sendRedirect("../view/home.jsp");
		return;
	}
	
	request.setCharacterEncoding("utf-8");
	//String caipingID = request.getParameter("");
	ArrayList<String> orderID = new ArrayList<String>();
	ArrayList<String> shangjianame = new ArrayList<String>();
	ArrayList<String> phone = new ArrayList<String>();
	ArrayList<String> address = new ArrayList<String>();
	ArrayList<Date> orderTime = new ArrayList<Date>();
	ArrayList<String> zongE = new ArrayList<String>();
	ArrayList<Integer> flag = new ArrayList<Integer>();
	ArrayList<String> liuyan = new ArrayList<String>();
	
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//时间格式
	
	//
	Connection conn = ConnectionPool.getInstance().getConnection();
	//
	Statement stm_order = conn.createStatement();
	ResultSet rs_order = stm_order.executeQuery("select * from orderlist");
	
	while(rs_order.next()) {
		if(userId.equals(rs_order.getString("userID"))) {
			orderID.add(rs_order.getString("orderID"));
			Statement stm_shangjia = conn.createStatement();	
			ResultSet rs_shangjia = stm_shangjia.executeQuery("select * from shangjialist");
			//获取用户名
			String shangjiaID = rs_order.getString("shangJiaID");
			while(rs_shangjia.next()) {
				if(shangjiaID.equals(rs_shangjia.getString("shangJiaID"))) {
					//out.print("<td>"+rs_user.getString("uname")+"</td>");//用户表中的用户名
					//out.print("<td>"+rs_order.getString("phone")+"</td>");//订单表中的订餐电话
					shangjianame.add(rs_shangjia.getString("shangjiaName"));
					phone.add(rs_order.getString("phone"));
					break;
				}
			}
			//获取配送地址
			Statement stm_address = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);	
			ResultSet rs_address = stm_address.executeQuery("select * from addresslist");
			String addressId = rs_order.getString("addressId");
			while(rs_address.next()) {
				if(addressId.equals(rs_address.getString("addressId"))) {
					//out.print("<td>"+rs_address.getString("address")+"</td>");
					//out.print("<td>"+rs_order.getString("liuyan")+"</td>");
					//out.print("<td>"+rs_order.getString("zongE")+"</td>");
					//out.print("<td>"+rs_order.getString("orderTime")+"</td>");
					address.add(rs_address.getString("address"));
					liuyan.add(rs_order.getString("liuyan"));
					zongE.add(rs_order.getString("zongE"));
					orderTime.add(df.parse(rs_order.getString("orderTime")));
					flag.add(rs_order.getInt("songcanFlag")); 
					break;
				}
			}
		}
		
	}
	ConnectionPool.getInstance().release(conn);
	//将订单列表按照时间排序
	String getorderID;
	String getshangjianame;
	String getphone;
	String getaddress;
	Date getorderTime;
	String getzongE;
	int getflag;
	String getliuyan;	
	
	int siz=shangjianame.size();
	//按状态排序
	for(int i=1; i<siz; i++) {
		getorderID=orderID.get(i);
		getshangjianame=shangjianame.get(i);
		getphone=phone.get(i);
		getaddress=address.get(i);
		getorderTime=orderTime.get(i);	
		getzongE=zongE.get(i);
		getliuyan=liuyan.get(i);
		
		getflag = flag.get(i);//按状态排序
		int j = i-1;
		while(j>=0 && flag.get(j)>getflag) {
			flag.set(j+1, flag.get(j));		
			orderID.set(j+1, orderID.get(j));
			shangjianame.set(j+1, shangjianame.get(j));
			phone.set(j+1, phone.get(j));
			address.set(j+1, address.get(j));
			orderTime.set(j+1, orderTime.get(j));
			zongE.set(j+1, zongE.get(j));
			liuyan.set(j+1, liuyan.get(j));
			
			j--;
		}
		flag.set(j+1, getflag);	
		orderID.set(j+1, getorderID);
		shangjianame.set(j+1, getshangjianame);
		phone.set(j+1, getphone);
		address.set(j+1, getaddress);
		orderTime.set(j+1, getorderTime);
		zongE.set(j+1, getzongE);
		liuyan.set(j+1, getliuyan);		
	}
	//按时间排序对flag=0
	for(int i=1; i<siz; i++) {
		getorderID=orderID.get(i);
		getshangjianame=shangjianame.get(i);
		getphone=phone.get(i);
		getaddress=address.get(i);
		getzongE=zongE.get(i);
		getliuyan=liuyan.get(i);	
		getflag = flag.get(i);
		
		getorderTime=orderTime.get(i);//按订单时间排序
		int j = i-1;
		while(j>=0 && orderTime.get(j).compareTo(getorderTime)<0 && flag.get(j)==getflag) {
			orderTime.set(j+1, orderTime.get(j));
			
			flag.set(j+1, flag.get(j));		
			orderID.set(j+1, orderID.get(j));
			shangjianame.set(j+1, shangjianame.get(j));
			phone.set(j+1, phone.get(j));
			address.set(j+1, address.get(j));
			zongE.set(j+1, zongE.get(j));
			liuyan.set(j+1, liuyan.get(j));
			
			j--;
		}
		flag.set(j+1, getflag);	
		orderID.set(j+1, getorderID);
		shangjianame.set(j+1, getshangjianame);
		phone.set(j+1, getphone);
		address.set(j+1, getaddress);
		orderTime.set(j+1, getorderTime);
		zongE.set(j+1, getzongE);
		liuyan.set(j+1, getliuyan);		
	}
	
	/* for(int i=0; i<siz; i++) {
		System.out.println(orderID.get(i));
		System.out.println(shangjianame.get(i));
		System.out.println(phone.get(i));
		System.out.println(address.get(i));
		System.out.println(orderTime.get(i));
		System.out.println(zongE.get(i));
		System.out.println(flag.get(i));
		System.out.println(liuyan.get(i));
	}  */
	
	%>    
     <!-- 订单处理 -->
     <script>
     function queren(bt) {//确认订单
    	 document.orderform.action="orderChuli.jsp?orderID="+bt.value+"&chuli=1";
		 document.orderform.submit();

     }
     function quxiao(bt) {//取消订单
    	 document.orderform.action="orderChuli.jsp?orderID="+bt.value+"&chuli=2";
		 document.orderform.submit();
     }
     function  detail(bt) {//查看详情
    	 document.orderform.action="orderChuli.jsp?orderID="+bt.value+"&chuli=2";
		 document.orderform.submit();
     }
     </script>
     <!-- end -->
     <div class="main-content">
       
      <div class="content-header"> 
       <h2>我的订单</h2> 
       	</div>
    
<div class="content-inner profile-changepwd"> 
       <form name="orderform" class="form-horizontal" method="post" id="changepwd_form" action="#"> 
        <fieldset>
		<%
		out.print("<table width='100%' border=1><tr><th>商户名</th><th>订餐电话</th><th>送货地址</th><th>备注</th><th>消费</th><th>下单时间</th><th>状态</th><th></th></tr>");
		int size = shangjianame.size();
		if(size == 0) {
			out.print("<tr align='center'>");
			out.print("<td colspan=8>无订单</td>");
			out.print("</tr>");
		} 		
		else {////状态0位新订单,1为确认订单，1为商家取消订单。-1为用户退单
			for(int i=0; i<size; i++) {
				out.print("<tr align='center'>");
				out.print("<td>"+shangjianame.get(i)+"</td>");
				out.print("<td>"+phone.get(i)+"</td>");
				out.print("<td>"+address.get(i)+"</td>");
				out.print("<td>"+liuyan.get(i)+"</td>");
				out.print("<td>"+zongE.get(i)+"</td>");
				out.print("<td>"+df.format(orderTime.get(i))+"</td>");
				if(flag.get(i)==0) {
					out.print("<td><font color='red'>等待送达</font></td>");
				} else if(flag.get(i)==-1) {
					out.print("<td>已取消订单</td>");
				} else {
					out.print("<td>已完成订单</td>");
				}
				out.print("<td><a href=\"member_order_detail.jsp?orderID="+orderID.get(i)+"\">查看详情</a></td>");
				out.print("</tr>");
			}
		}
		out.print("</table>");	 
		%>
        </fieldset> 
       </form>  

   <div id="site_fixed" class="site-fixed"> 
    <a id="back_top" class="btn-back-top ui_invisible" role="button" title="回顶部"><i class="icon-backtop"></i></a> 
    <div class="btn-app-qrcode"> 
     <i class="icon-qrcode"></i> 
 
    </div> 
	</div>
  <script type="text/javascript" src="js/foot_201503262210.js"></script> 
  <script src="js/profile_201503262210.js"></script>  
 </div>
 </div>
 
 
 
 </body>
</html>


