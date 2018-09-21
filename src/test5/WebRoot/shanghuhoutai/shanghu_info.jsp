<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <title>商户后台管理 - 商家信息-shanghu_info.jsp</title> 
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
    Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery("select * from shangjialist");
	
	String shangjiaName="";
	String tongYiSheHuiXingYongDaiMa = "";
	String shiPingWeiShengXuKeBianHao = "";
	String tuPian = "";
	String jianJie = "";
	String youXiaoQi = "";
	String address = "";
	String kaiShiYeShiJian = "";
	String jieShuYingYeShiJian = "";
	while(rs.next()) {
		String id = rs.getString("shangJiaID");
		if(id.equals(shangJiaID)) {
			shangjiaName = rs.getString("shangjiaName");
			tongYiSheHuiXingYongDaiMa = rs.getString("tongYiSheHuiXingYongDaiMa");
			shiPingWeiShengXuKeBianHao = rs.getString("shiPingWeiShengXuKeBianHao");
			tuPian = rs.getString("tuPian");
			jianJie = rs.getString("jianJie");
			youXiaoQi = rs.getString("youXiaoQi");
			address = rs.getString("address");
			kaiShiYeShiJian = rs.getString("kaiShiYeShiJian");
			jieShuYingYeShiJian = rs.getString("jieShuYingYeShiJian");
			
			ConnectionPool.getInstance().release(conn);
			break;
		}
	}
	
%>
       
<div class="main-content">
 <div class="content-header"> 
  <h2>商家信息</h2> 
   
 <div class="content-inner profile-changepwd"> 
       <form class="form-horizontal" method="post" id="changepwd_form" action="updataPassword.jsp"> 
        <fieldset>
         
         <div class="control-group clear-fix">     
          <label class="control-label" for=""><span class="required">*</span>商家ID</label> 
          <div class="controls"> 
           <input name="" id="" value=<%=shangJiaID%> disabled="true" />       
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix-->
          
          <div class="control-group">     
          <label class="control-label" for=""><span class="required">*</span>商家名</label> 
          <div class="controls"> 
           <input name="" id="" value=<%=shangjiaName%> disabled="true" />       
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix-->
         
         <div class="control-group">     
          <label class="control-label" for=""><span class="required">*</span>简介</label> 
          <div class="controls"> 
           <input name="" id="" value=<%=jianJie%> disabled="true" />       
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix-->
          
         <div class="control-group"> 
          <label class="control-label" for=""><span class="required">*</span>营业时间</label> 
          <div class="controls"> 
          <input name="" id=""  value=<%=kaiShiYeShiJian%> disabled="true" /> 
          ——<input name="" id=""  value=<%=jieShuYingYeShiJian%> disabled="true" /> 
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix--> 
         
         <div class="control-group clear-fix"> 
          <label class="control-label" for=""><span class="required">*</span>地址</label> 
          <div class="controls"> 
           <input name="repeat_new_password" id="sf_guard_user_repeat_pwd"  value=<%=address%> disabled="true" /> 
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix-->  
         
         <div class="control-group"> 
          <label class="control-label" for=""><span class="required">*</span>统一社会信用代码</label> 
          <div class="controls"> 
          <input name="" id=""  value=<%=tongYiSheHuiXingYongDaiMa%> disabled="true" />  
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix--> 
         
         <div class="control-group"> 
          <label class="control-label" for=""><span class="required">*</span>食品卫生许可编号</label> 
          <div class="controls"> 
          <input name="" id=""  value=<%=shiPingWeiShengXuKeBianHao%> disabled="true" />  
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix--> 
          
          <div class="control-group"> 
          <label class="control-label" for=""><span class="required">*</span>有效期</label> 
          <div class="controls"> 
          <input name="" id=""  value=<%=youXiaoQi%> disabled="true" />  
          </div>
          <!--end input--> 
         </div>
         <!--end clearfix--> 
              
        </fieldset> 
       </form> 
      </div> 

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