<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>

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
  <title>订单管理 - 订单详情-orderDetail.jsp</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="description" content="" /> 


  
  


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
  var ma = "profile/index";
  var logined = true;
  var eleme = eleme || {};
  var start_time = new Date().getTime();
  var current_username = 'hjl416148489';
  eleme.logined = eleme.logined || true;
  eleme.ma = eleme.ma || "profile/index";
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
  <div id="background" style="background-position:1px -10689.583333333px;background-color:#C0DEED;" class=" night "> 
   <div id="sun"></div> 
   <div id="moon"></div> 
   <div id="clouds"> 
    <div id="cloudGroup1"> 
     <img src="images/clouds.png" alt="" id="cloudPiece1" class="cloudPiece" /> 
     <img src="images/clouds.png" alt="" id="cloudPiece2" class="cloudPiece" /> 
     <img src="images/clouds.png" alt="" id="cloudPiece3" class="cloudPiece" /> 
    </div> 
    <div id="cloudGroup2"> 
     <img src="images/clouds.png" alt="" id="cloudPiece4" class="cloudPiece" /> 
     <img src="images/clouds.png" alt="" id="cloudPiece5" class="cloudPiece" /> 
     <img src="images/clouds.png" alt="" id="cloudPiece6" class="cloudPiece" /> 
    </div> 
    <div id="cloudGroup3"> 
     <img src="images/clouds.png" alt="" id="cloudPiece7" class="cloudPiece" /> 
     <img src="images/clouds.png" alt="" id="cloudPiece8" class="cloudPiece" /> 
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
       <a class="e_toggle twidget-toggle"> <span id="tcart_total" class="tcart-total twidget-total">1</span> <i class="icon-tcart"></i> </a> 
       <div class="e_dropdown twidget-dropdown"> 
        <div id="tcart_loading" class="twidget-loading"></div> 
        <div id="tcart_wrapper"></div> 
       </div> 
      </div> 
      <div id="topbar_msg" class="eleme_dropdown topbar-widget topbar-msg"> 
       <a class="e_toggle twidget-toggle"> <span id="tmsg_total" class="tmsg-total twidget-total">0</span> <i class="icon-tmsg"></i> </a> 
       <div class="e_dropdown twidget-dropdown"> 
        <div id="tmsg_loading" class="twidget-loading"></div> 
        <div id="tmsg_wrapper"></div> 
       </div> 
      </div> 
      <div class="eleme_dropdown topbar-user-nav"> 
      
  
 
        <li class="divider"></li> 
      
       </ul> 
      </div> 
     </nav> 
    </div> 
  
   </header> 
   <div class="container"> 
    
    <div class="wash-paper clearfix" id="profile"> 
     <nav class="profile-nav"> 
      <ul class="nav nav-list"> 
      <li class="divider"></li> 
              <li class="nav-header">商户后台管理</li> 
       <li> <a href="shanghu_info.jsp"> <i class="icon-file"></i> 商家信息 </a> </li> 
       
       <li class="divider"></li>   
       <li class="nav-header"> 菜品管理</li> 
   	   <li> <a href="displayAll.jsp"> <i class="icon-file"></i> 查看菜单列表 </a> </li>
       <li> <a href="shangpin_add.jsp"> <i class="icon-file"></i> 添加菜品 </a> </li> 
 		
 		
 	   <li class="divider"></li>   
       <li class="nav-header"> 订单管理</li> 
   	   <li> <a href="order.jsp?from=lishi"> <i class="icon-file"></i> 历史订单 </a> </li>
   	   <li> <a href="order.jsp?from=xin"> <i class="icon-file"></i> 新订单 </a> </li>
   	   
   	   <li class="divider"></li>   
       <li class="nav-header"> 收益管理</li> 
   	   <li> <a href="shouyi.jsp"> <i class="icon-file"></i> 查看收益 </a> </li>
   	   
 	   <li class="divider"></li>   
       <li class="nav-header"> 折扣管理</li> 
   	   <li> <a href="zhekou.jsp"> <i class="icon-file"></i> 本店折扣 </a> </li>
       
       <li class="divider"></li> 

     
      </ul> 
     </nav> 
     <%
  	String shangJiaID=(String)session.getAttribute("shangJiaID");
 	if(shangJiaID == null) {
 		response.sendRedirect("../view/home.jsp");
 		return;
 	}	
	request.setCharacterEncoding("utf-8");
	String biaoti = request.getParameter("from");
	String orderID = request.getParameter("orderID");
	
	String username = "";
	ArrayList<String> caipinID=new ArrayList<String>();
	ArrayList<String> caipinName=new ArrayList<String>();
	ArrayList<Integer> Jiage=new ArrayList<Integer>();
	ArrayList<Integer> fenshu=new ArrayList<Integer>();
	String zongE = "";
	String phone = "";
	String address = "";
	String orderTime = "";
	String liuyan = "";
	
	//创建连接
	Connection conn = ConnectionPool.getInstance().getConnection();
	//读取订单表
	PreparedStatement rstm_order = conn.prepareStatement("select * from orderlist where orderID=?");
	rstm_order.setString(1, orderID);
	ResultSet rs_order = rstm_order.executeQuery();
	if (rs_order.next()) {
		phone = rs_order.getString("phone");//订餐电话
		orderTime = rs_order.getString("orderTime");//下单时间
		zongE = rs_order.getString("zongE");//消费总额
		liuyan = rs_order.getString("liuyan");//留言
		
		//start_读取用户表
		String userID = rs_order.getString("userID");//用户ID
		PreparedStatement rstm_user = conn.prepareStatement("select * from userinfolist where userID=?");
		rstm_user.setString(1, userID);
		ResultSet rs_user = rstm_user.executeQuery();
		if(rs_user.next()) {
			username=rs_user.getString("uname");//下单用户名
		}
		rstm_user.close();
		//end
		
		//start_读取地址表
		String addressID = rs_order.getString("addressID");//地址ID
		PreparedStatement rstm_address = conn.prepareStatement("select * from addresslist where addressId=?");
		rstm_address.setString(1, addressID);
		ResultSet rs_address = rstm_address.executeQuery();
		if(rs_address.next()) {
			address=rs_address.getString("address");//送餐地址
		}
		rstm_address.close();
		//end		
	}
	//start_读取订单详情表
	PreparedStatement rstm_orderifo = conn.prepareStatement("select * from orderinfo where orderID=?");
	rstm_orderifo.setString(1, orderID);
	ResultSet rs_orderifo = rstm_orderifo.executeQuery();
	while(rs_orderifo.next()) {	
		String caiID=rs_orderifo.getString("caipingID");//菜品ID
		caipinID.add(caiID);
		//读取菜品表                                                                                                                                                                                                                                                                                                                                                                
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery("select * from caipinglist");
		while(rs.next()) {
			if(caiID.equals(rs.getString("caipingID"))) {
				caipinName.add(rs.getString("caipingName"));//菜品名
				fenshu.add(rs_orderifo.getInt("fenshu"));//份数
				break;
			}
	   	}
		stm.close();	
	}
	rstm_orderifo.close();
	//end
	
	//start_读取订单详情表
	PreparedStatement rstm_caidan = conn.prepareStatement("select * from caidanlist where shangJiaID=?");
	rstm_caidan.setString(1, shangJiaID);
	ResultSet rs_caidan = rstm_caidan.executeQuery();
	while(rs_caidan.next()) {
		String caiID = rs_caidan.getString("caipingID");
		int index = caipinID.indexOf(caiID);
		if(index != -1) {
			Jiage.add(rs_caidan.getInt("jiage"));
		}
	}
	rstm_caidan.close();
	//end
	ConnectionPool.getInstance().release(conn);	
	
	/* System.out.println(username);
	System.out.println(phone);
	System.out.println(address);
	System.out.println(orderTime);
	int size=caipinName.size();
	for(int i=0; i<size; i++) {
		System.out.println(caipinName.get(i));
		System.out.println(Jiage.get(i));
		System.out.println(fenshu.get(i));
	}
	System.out.println(zongE); */
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
       <h2>订单详情</h2> 
       	</div>
    
<div class="content-inner profile-changepwd"> 
       <form name="orderform" class="form-horizontal" method="post" id="changepwd_form" action="#"> 
        <fieldset>
        <div>
		<div class="line-two"> 
        <table class="table table-condensed"> 
         <tbody> 
          <tr> 
           <td class="col1"><span class="item-name">用户名:</span> <%=username %></td> 
           <td class="col2"><span class="item-name">下单时间:</span><span class="om_time" data-time="2015-03-09 23:03:20"><%=orderTime %></span></td> 
           <td class="col3"><span class="item-name">联系电话:</span><%=phone %></td> 
          </tr> 
          <tr> 
           <td class="col1"><span class="item-name">送餐地址:</span> <%=address %></td> 
           <td class="col2" colspan=2><span class="item-name">留言：</span><%=liuyan %></td> 
           
          </tr> 
         </tbody> 
        </table> 
       </div> 
    
      <div class="order-table-wrapper"> 
       <table class="order-table table table-striped"> 
        <thead> 
         <tr> 
          <th class="col-name">菜品</th> 
          <th class="col-rating"></th> 
          <th class="col-price">单价</th> 
          <th class="col-quantity">数量</th> 
          <th class="col-sub-total">小计</th> 
         </tr> 
        </thead> 
        <tbody> 
        <%
        int size=caipinName.size();
        for(int i=0; i<size; i++) {
	         out.print("<tr>");
	         out.print("<td class=\"col-name\"> <span>"+caipinName.get(i)+"</span> </td>"); 
	         out.print("<td class=\"col-rating\"></td> ");
	         out.print("<td class=\"col-price\">￥"+Jiage.get(i)+"</td>"); 
	         out.print("<td class=\"col-quantity\">"+fenshu.get(i)+"</td>"); 
	         out.print("<td class=\"col-sub-total\">￥"+Jiage.get(i)*fenshu.get(i)+"</td> "); 
	         out.print("</tr>"); 
         }
                         
         %>
        </tbody> 
       </table> 
       <table class="order-table total-table table table-striped"> 
        <tfoot> 
         <tr> 
          <td class="col-name">合计</td> 
          <td class="col-rating"></td> 
          <td class="col-price"></td> 
          <td class="col-quantity"></td> 
          <td class="col-sub-total relative">￥<%=zongE %> </td> 
         </tr> 
        </tfoot> 
       </table>  
     </div>
     </div>
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
