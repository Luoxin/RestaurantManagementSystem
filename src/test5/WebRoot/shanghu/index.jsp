<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html >
 <head> 
  <title>店铺列表-shops.html</title> 

  <link href="css/forward_201503262210.css" type="text/css" rel="stylesheet" /> 
 </head> 
 <body > 
   <link href="css/background.css?v=5" type="text/css" rel="stylesheet" /> 
  <div id="background" style="background-position:1px -10810.138888889px;" class=" night "> 
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
  
     <nav class="topbar-nav" role="navigation"> 
      
      <div id="topbar_cart" class="eleme_dropdown topbar-widget topbar-cart empty"> 
       <a class="e_toggle twidget-toggle"> <span id="tcart_total" class="tcart-total twidget-total">0</span> <i class="icon-tcart"></i> </a> 
       <div class="e_dropdown twidget-dropdown"> 
        <div id="tcart_loading" class="twidget-loading"></div> 
        <div id="tcart_wrapper"></div> 
       </div> 
      </div> 
      <div class="topbar-user-nav tnav-link"> 
       <a rel="nofollow" href="../view/home.jsp">返回</a> 
      
      </div> 
     </nav> 
    </div> 
   </header> 

 
  
  
    <div class="row promoted-restaurants restaurants-row"> 
     <div class="span12 row-wrapper"> 
      <div class="row"> 
       <div class="span12 category-restaurant-header with-restaurant-filter"> 
        <div class="row"> 
         <div class="span12"> 
          <div id="filter-btn-wrapper"> 
           <span class="filter-btn" pinyin="tuijian" ubt-change="filter_tuijian"> <input type="checkbox" name="filter" value="tuijian" /><span class="filter-text tuijian">热门餐厅</span> </span> 
           <span class="filter-btn" pinyin="open" ubt-change="filter_open"> <input type="checkbox" name="filter" value="open" /><span class="filter-text open">营业中</span> </span> 
           <span class="filter-divider"></span> 
           <span class="filter-btn activity-filter" pinyin="online_payment" ubt-change="filter_online_payment"> <input type="checkbox" name="filter" /><span class="filter-text online_payment with-icon">在线支付<span class="new_icon"></span></span> </span> 
           <span class="filter-btn activity-filter" pinyin="chaoshipeifu" ubt-change="filter_chaoshipeifu"> <input type="checkbox" name="filter" /><span class="filter-text chaoshipeifu with-icon">超时赔付</span> </span> 
           <div class="flavorblock"> 
            <div class="flavor-dropdown-toggle" data-toggle="dropdown">
             <a>口味<b class="caret"></b></a>
            </div> 
            <ul class="flavor-dropdown-menu" style="display:none"> 
             <li class="flavor all filter-btn"><a>全部</a></li> 
             <li class="flavor filter-btn flavor-filter" pinyin="zhongshi"> <a>中式</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="xishi"> <a>西式</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="gangshi"> <a>港式</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="naichahanbao"> <a>奶茶</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="shaokao"> <a>烧烤</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="rishi"> <a>日式</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="hanshi"> <a>韩式</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="tiandian"> <a>甜点</a> </li> 
             <li class="flavor filter-btn flavor-filter" pinyin="hanbao"> <a>汉堡</a> </li> 
            </ul> 
           </div> 
           <div class="deliver-slider-wrapper "> 
            <span id="deliver-amount-level">全部</span> 
            <div class="slider-wrapper"> 
             <div id="geo_deliver_slider" class="deliver-slider ui-eleme slider tool-tip" title="起送价" level="4" max="4" min="1"></div> 
            </div> 
            <span>起送价</span> 
           </div> 
          </div> 
         </div> 
         <!--<div class="span2">
                      </div>--> 
        </div> 
       </div> 
       <div class="span12 category-restaurant-header with-restaurant-filter area-activities"> 
        <div class="area-activities-other"> 
         <span class="filter-btn activity-filter" pinyin="Activity_14337"> <input type="checkbox" name="filter" /><span class="filter-text Activity_14337">闪电红包</span> </span> 
         <span class="filter-btn activity-filter" pinyin="new_user_discount"> <input type="checkbox" name="filter" /><span class="filter-text new_user_discount">首次下单立减</span> </span> 
         <span class="filter-btn activity-filter" pinyin="extra_discount"> <input type="checkbox" name="filter" /><span class="filter-text extra_discount">满立减</span> </span> 
        </div> 
       </div> 
       <div class="span12"> 
        <table class="restaurant-list-table" align="center"> 
         <tbody> 
          <tr> 
           <td> 
            <div class="restaurant-block  " id="restaurant-31767" rel="31767" data-restaurantid="31767"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="31767">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="31767">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="jichangcaiMenu。jsp" ><img class="restaurant-logo" alt="家常菜馆" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="jichangcaiMenu.jsp" >家常菜馆</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.4星"></div> 
                <span class="rating-number">8577份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-31767"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 家常菜馆
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;美食配送均需要时间，为了不影响您的及时用餐，请大家提前一小时预订，如遇特殊天气请提前至少1-2小时预订。避开订餐高峰期！下订单后请确认地址是否正确，若送去地址错误的加收3—5元外送费！望理解！ 早上10点前下单，且满100元可赠大饮料一瓶。 另本店可提供团体订餐，欢迎来电咨询</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 16元。 （额外说明：周六周日八点半开始送)</p> 
                <p><strong>地址:</strong>&nbsp;西康路1391号</p> 
                <p><strong>营业时间:</strong>&nbsp;08:00 - 23:00</p> 
                <p><strong>简介:</strong>&nbsp;本店以家常菜为主，欢迎预订！百元以上订单请至少提前1至三个小时预订！</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-24226" rel="24226" data-restaurantid="24226"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="24226">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="24226">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/pt-txmlt" target="_blank"><img class="restaurant-logo" alt="天香正宗四川麻辣烫" srcset="http://fuss10.elemecdn.com/4/19/7789cd03e192f90998a9bcb376e05jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/4/19/7789cd03e192f90998a9bcb376e05jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:38分钟">
                 38分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/pt-txmlt" target="_blank">天香正宗四川..</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.7星"></div> 
                <span class="rating-number">4791份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-24226"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 天香正宗四川麻辣烫
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 15元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;新会路375号</p> 
                <p><strong>营业时间:</strong>&nbsp;10:00 - 次日02:00</p> 
                <p><strong>简介:</strong>&nbsp; </p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-36683" rel="36683" data-restaurantid="36683"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="36683">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="36683">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/pt-cphs" target="_blank"><img class="restaurant-logo" alt="乔东家脆皮火烧" srcset="http://fuss10.elemecdn.com/d/1b/a752e688b7596e6b59aa5b9d06eebjpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/d/1b/a752e688b7596e6b59aa5b9d06eebjpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:37分钟">
                 37分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/pt-cphs" target="_blank">乔东家脆皮火烧</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.4星"></div> 
                <span class="rating-number">1455份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-36683"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 乔东家脆皮火烧
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;买一个脆皮火烧，送饮料一杯！</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 10元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;常德路1168弄（近新会路口）</p> 
                <p><strong>营业时间:</strong>&nbsp;09:00 - 23:00</p> 
                <p><strong>简介:</strong>&nbsp;成都卫视、、浙江卫视强力推荐品牌！</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-168750" rel="168750" data-restaurantid="168750"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="168750">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="168750">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ptnh-ngglmf" target="_blank"><img class="restaurant-logo" alt="牛哥桂林米粉" srcset="http://fuss10.elemecdn.com/c/c2/180c05b99865a5c55ff6c6ad849d8jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/c/c2/180c05b99865a5c55ff6c6ad849d8jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ptnh-ngglmf" target="_blank">牛哥桂林米粉</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.4星"></div> 
                <span class="rating-number">4692份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-168750"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 牛哥桂林米粉
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;牛哥桂林米粉</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;胶州路980号</p> 
                <p><strong>营业时间:</strong>&nbsp;09:15 - 24:00</p> 
                <p><strong>简介:</strong>&nbsp;牛哥桂林米粉</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-119301" rel="119301" data-restaurantid="119301"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="119301">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="119301">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="shop_detail.html" target="_blank"><img class="restaurant-logo" alt="开心罗记麻辣烫" srcset="http://fuss10.elemecdn.com/e/61/4b14dc708583d288b62c73491e12cjpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/e/61/4b14dc708583d288b62c73491e12cjpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:37分钟">
                 37分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="shop_detail.html" target="_blank">开心罗记麻辣烫</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.4星"></div> 
                <span class="rating-number">5453份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-119301"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 开心罗记麻辣烫
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;西康路1137号</p> 
                <p><strong>营业时间:</strong>&nbsp;10:00 - 次日02:00</p> 
                <p><strong>简介:</strong>&nbsp;地道老四川麻辣烫！</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
          </tr> 
          <tr> 
           <td> 
            <div class="restaurant-block  " id="restaurant-12753" rel="12753" data-restaurantid="12753"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="12753">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="12753">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-company"></div> 
                <a href="http://r.ele.me/ja-jwlsf" target="_blank"><img class="restaurant-logo" alt="家味螺蛳粉" srcset="http://fuss10.elemecdn.com/5/f9/df085b90dd41393d2ab427f12e188jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/5/f9/df085b90dd41393d2ab427f12e188jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:43分钟">
                 43分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ja-jwlsf" target="_blank">家味螺蛳粉</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.5星"></div> 
                <span class="rating-number">3289份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-12753"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 家味螺蛳粉
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过企业营业资质认证" src="images/passIcon_s_02.png?v=1" /> <span class="desc" title="">该商家已通过企业营业资质认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;安远路621号</p> 
                <p><strong>营业时间:</strong>&nbsp;09:00 - 24:00</p> 
                <p><strong>简介:</strong>&nbsp;家味螺蛳粉</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-13242" rel="13242" data-restaurantid="13242"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="13242">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="13242">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ja-xqzd" target="_blank"><img class="restaurant-logo" alt="心琪粥店（西康路店）" srcset="http://fuss10.elemecdn.com/2/0f/d303844ee7049a668b52fcb60b91ejpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/2/0f/d303844ee7049a668b52fcb60b91ejpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:42分钟">
                 42分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ja-xqzd" target="_blank">心琪粥店（西..</a> 
               </div> 
               <div class="flavors ">
                 中式, 甜点 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.5星"></div> 
                <span class="rating-number">3961份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons invoice tooltip_on" data-toggle="tooltip" title="该餐厅支持开发票，开票订单金额最低100元起，请在下单时填写好发票抬头">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-13242"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 心琪粥店（西康路店）
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons invoice" title="该餐厅支持开发票，开票订单金额最低100元起，请在下单时填写好发票抬头">&nbsp;</span> <span class="desc" title="">该餐厅支持开发票，开票订单金额最低100元起，请在下单时填写好发票抬头</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;1、本店推荐“饿了么”网上订餐！饭口较忙，电话经常占线，建议您通过“饿了么”网上下单，本店优先配送网络订单！2、首次订餐用户，“饿了么”客服会电话联系您确认订单（021区号），订餐后请确保您的手机通畅及铃声状态，以方便外送员能及时联系到您！3、美食制作及配送均需要时间，为了不影响您的及时用餐，请大家提前一小时预订，避开订餐高峰期！“饿了么”全国免费客服电话：4000-557-117</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;西康路1426号</p> 
                <p><strong>营业时间:</strong>&nbsp;09:30 - 22:30</p> 
                <p><strong>简介:</strong>&nbsp;1、本店推荐“饿了么”网上订餐！饭口较忙，电话经常占线，建议您通过“饿了么”网上下单，本店优先配送网络订单！2、首次订餐用户，“饿了么”客服会电话联系您确认订单（021区号），订餐后请确保您的手机通畅及铃声状态，以方便外送员能及时联系到您！3、美食制作及配送均需要时间，为了不影响您的及时用餐，请大家提前一小时预订，避开订餐高峰期！“饿了么”全国免费客服电话：4000-557-117</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-12833" rel="12833" data-restaurantid="12833"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="12833">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="12833">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-company"></div> 
                <a href="http://r.ele.me/ja-zzcqmlt" target="_blank"><img class="restaurant-logo" alt="正宗重庆麻辣烫（安远路店）" srcset="http://fuss10.elemecdn.com/d/e7/bdede631fd371a0474d099a763b0bjpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/d/e7/bdede631fd371a0474d099a763b0bjpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ja-zzcqmlt" target="_blank">正宗重庆麻辣..</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.7星"></div> 
                <span class="rating-number">32410份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-12833"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 正宗重庆麻辣烫（安远路店）
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过企业营业资质认证" src="images/passIcon_s_02.png?v=1" /> <span class="desc" title="">该商家已通过企业营业资质认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;麻辣烫</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;安远路625号</p> 
                <p><strong>营业时间:</strong>&nbsp;10:40 - 次日01:00</p> 
                <p><strong>简介:</strong>&nbsp;麻辣烫</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-44827" rel="44827" data-restaurantid="44827"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="44827">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="44827">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ja-xdcg1" target="_blank"><img class="restaurant-logo" alt="兄弟餐馆" srcset="http://fuss10.elemecdn.com/7/8e/ccd746c48f25660a2e8bd133d7e34jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/7/8e/ccd746c48f25660a2e8bd133d7e34jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ja-xdcg1" target="_blank">兄弟餐馆</a> 
               </div> 
               <div class="flavors "> 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.9星"></div> 
                <span class="rating-number">281份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-44827"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 兄弟餐馆
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;各种经典小炒美食</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 20元。 （额外说明：提前30分钟预订)</p> 
                <p><strong>地址:</strong>&nbsp;安远路614弄3号</p> 
                <p><strong>营业时间:</strong>&nbsp;11:00 - 次日01:00</p> 
                <p><strong>简介:</strong>&nbsp;各种经典小炒美食</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-21738" rel="21738" data-restaurantid="21738"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="21738">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="21738">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-company"></div> 
                <a href="http://r.ele.me/ja-jhc" target="_blank"><img class="restaurant-logo" alt="聚浩吃煲仔饭黄焖鸡" srcset="http://fuss10.elemecdn.com/0/64/0cdb6869047a86c56647a53fb46fbjpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/0/64/0cdb6869047a86c56647a53fb46fbjpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:40分钟">
                 40分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ja-jhc" target="_blank">聚浩吃煲仔饭..</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.5星"></div> 
                <span class="rating-number">1007份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-21738"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 聚浩吃煲仔饭黄焖鸡
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过企业营业资质认证" src="images/passIcon_s_02.png?v=1" /> <span class="desc" title="">该商家已通过企业营业资质认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;1、本店推荐“饿了么”网上订餐！饭口较忙，电话经常占线，建议您通过“饿了么”网上下单，本店优先配送网络订单！2、首次订餐用户，“饿了么”客服会电话联系您确认订单（021区号），订餐后请确保您的手机通畅及铃声状态，以方便外送员能及时联系到您！3、美食制作及配送均需要时间，为了不影响您的及时用餐，请大家提前一小时预订，避开订餐高峰期！“饿了么”全国免费客服电话：4000-557-117</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 25元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;安远路627号</p> 
                <p><strong>营业时间:</strong>&nbsp;09:00 - 24:00</p> 
                <p><strong>简介:</strong>&nbsp;1、本店推荐“饿了么”网上订餐！饭口较忙，电话经常占线，建议您通过“饿了么”网上下单，本店优先配送网络订单！2、首次订餐用户，“饿了么”客服会电话联系您确认订单（021区号），订餐后请确保您的手机通畅及铃声状态，以方便外送员能及时联系到您！3、美食制作及配送均需要时间，为了不影响您的及时用餐，请大家提前一小时预订，避开订餐高峰期！“饿了么”全国免费客服电话：4000-557-117</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
          </tr> 
          <tr> 
           <td> 
            <div class="restaurant-block  " id="restaurant-17037" rel="17037" data-restaurantid="17037"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="17037">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="17037">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ptq-fjsxxc" target="_blank"><img class="restaurant-logo" alt="福建沙县特色小吃" srcset="http://fuss10.elemecdn.com/5/cb/24a0970dcc248fd709772fa56b2cejpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/5/cb/24a0970dcc248fd709772fa56b2cejpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:30分钟">
                 30分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ptq-fjsxxc" target="_blank">福建沙县特色..</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r9 rating-star" title="餐厅评价：4.4星"></div> 
                <span class="rating-number">995份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-17037"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 福建沙县特色小吃
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 25元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;澳门路185号</p> 
                <p><strong>营业时间:</strong>&nbsp;10:00 - 次日00:30</p> 
                <p><strong>简介:</strong>&nbsp;福建沙县特色小吃</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-25064" rel="25064" data-restaurantid="25064"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="25064">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="25064">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/cxmlt-pt" target="_blank"><img class="restaurant-logo" alt="川香麻辣烫" srcset="http://fuss10.elemecdn.com/2/63/6dad4eae745544681b8324bf9e089jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/2/63/6dad4eae745544681b8324bf9e089jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:42分钟">
                 42分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/cxmlt-pt" target="_blank">川香麻辣烫</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.7星"></div> 
                <span class="rating-number">7670份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-25064"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 川香麻辣烫
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;20元起送。不含饮料 。点餐必点打包盒。谢谢</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 15元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;西康路1391号-5</p> 
                <p><strong>营业时间:</strong>&nbsp;10:30 - 次日02:00</p> 
                <p><strong>简介:</strong>&nbsp;658658</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-58309" rel="58309" data-restaurantid="58309"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="58309">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="58309">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ksmy" target="_blank"><img class="restaurant-logo" alt="咔萨迷娅意大利西餐厅" srcset="http://fuss10.elemecdn.com/5/e1/8c21336e93d171bf26dd1f12ea8acjpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/5/e1/8c21336e93d171bf26dd1f12ea8acjpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ksmy" target="_blank">咔萨迷娅意大..</a> 
               </div> 
               <div class="flavors ">
                 西式 
               </div> 
               <div class="ratings "> 
                <div class="r7 rating-star" title="餐厅评价：3.3星"></div> 
                <span class="rating-number">103份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons invoice tooltip_on" data-toggle="tooltip" title="该餐厅支持开发票，请在下单时填写好发票抬头">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-58309"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 咔萨迷娅意大利西餐厅
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons invoice" title="该餐厅支持开发票，请在下单时填写好发票抬头">&nbsp;</span> <span class="desc" title="">该餐厅支持开发票，请在下单时填写好发票抬头</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;本餐厅推出外卖套餐和单点，让顾客可以足不出户，一样能享受到最美味的食物。以最快捷的送餐速度给您带来方便。请选择咔萨迷娅西餐厅。</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 70元。 （额外说明：70元以上三公里内免费外送。70元以下加收五元。三公里以上超过一公里加收一元。)</p> 
                <p><strong>地址:</strong>&nbsp;上海普陀区宜昌路57号</p> 
                <p><strong>营业时间:</strong>&nbsp;11:30 - 22:00</p> 
                <p><strong>简介:</strong>&nbsp;各种来自于意大利各种美食：披萨，肉盘 ，色拉。海鲜，火腿。意式咖啡......</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-165066" rel="165066" data-restaurantid="165066"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="165066">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="165066">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/ptnh-dbrj" target="_blank"><img class="restaurant-logo" alt="东北人家" srcset="http://fuss10.elemecdn.com/6/fa/5834b3092a6c7996203a9d62bfc83png.png?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/6/fa/5834b3092a6c7996203a9d62bfc83png.png?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper busy tooltip_on" data-toggle="tooltip" title="餐厅送餐时间超过45分钟">
                 45+分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/ptnh-dbrj" target="_blank">东北人家</a> 
               </div> 
               <div class="flavors ">
                 中式 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.6星"></div> 
                <span class="rating-number">1241份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
                <span class="restaurant-icons extra-discount tooltip_on" data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> 
                <span class="restaurant-icons new-user-discount tooltip_on" data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-165066"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 东北人家
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                 <li> <span class="restaurant-icons extra-discount" title="在线支付满20减10">&nbsp;</span> <span class="desc" title="">在线支付满20减10</span> </li> 
                 <li> <span class="restaurant-icons new-user-discount" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span> <span class="desc" title="">饿了么新用户在该餐厅下首单，可立减15元</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;本店消费满100元免外送餐盒费！！</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 30元。 （额外说明：)</p> 
                <p><strong>地址:</strong>&nbsp;长寿路432号</p> 
                <p><strong>营业时间:</strong>&nbsp;10:30 - 23:00</p> 
                <p><strong>简介:</strong>&nbsp;各种美味，欢迎品尝</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
           <td> 
            <div class="restaurant-block  " id="restaurant-110720" rel="110720" data-restaurantid="110720"> 
             <div class="favor-book"> 
              <span class="favor-icon hidden"></span> 
              <a href="#" class="hover-add-favor hidden entry-favor" rel="110720">收藏</a> 
              <a href="#" class="hover-un-favor hidden entry-un-favor" rel="110720">取消收藏</a> 
             </div> 
             <div class="line-one"> 
              <div class="logo-wrapper"> 
               <div class="logo"> 
                <div class="conform-logo-person"></div> 
                <a href="http://r.ele.me/sh-cslaync" target="_blank"><img class="restaurant-logo" alt="阿姨奶茶" srcset="http://fuss10.elemecdn.com/a/15/d4d03634e757d65579087295f4491jpeg.jpeg?w=42&amp;h=42 1x, http://fuss10.elemecdn.com/a/15/d4d03634e757d65579087295f4491jpeg.jpeg?w=84&amp;h=84 2x" /></a> 
               </div> 
               <div class="deliver-time-wrapper tooltip_on" data-toggle="tooltip" title="平均送餐时间:37分钟">
                 37分钟 
               </div> 
              </div> 
              <div class="info"> 
               <div class="name"> 
                <a class="restaurant-link" href="http://r.ele.me/sh-cslaync" target="_blank">阿姨奶茶</a> 
               </div> 
               <div class="flavors ">
                 中式, 奶茶 
               </div> 
               <div class="ratings "> 
                <div class="r10 rating-star" title="餐厅评价：4.7星"></div> 
                <span class="rating-number">3715份</span> 
               </div> 
               <div class="icons"> 
                <span class="restaurant-icons online-payment tooltip_on" data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> 
               </div> 
              </div> 
             </div> 
             <div class="hidden line-hover-dlg" id="restaurant-hover-dlg-content-110720"> 
              <div class="restaurant-panel"> 
               <span class="favor-icon hidden"></span> 
               <div class="restaurant-more-info"> 
                <div style="font-size:15px; margin-left:10px;">
                 阿姨奶茶
                </div> 
                <div class="divider hidden"></div> 
                <ul class="icons"> 
                 <li> <img class="restaurant-icons certification" title="该商家已通过个人身份认证" src="images/passIcon_s_01.png?v=1" /> <span class="desc" title="">该商家已通过个人身份认证</span> </li> 
                 <li> <span class="restaurant-icons online-payment" title="该餐厅支持在线支付">&nbsp;</span> <span class="desc" title="">该餐厅支持在线支付</span> </li> 
                </ul> 
                <div class="divider hidden"></div> 
                <p class="ann"><strong>公告:</strong>&nbsp;本店500米外30元起送~！！！ 本餐厅买10杯赠送1杯，下单请备注热饮或冷饮，少冰或去冰，全糖或半糖或无糖</p> 
                <p class="restaurant-deliver-desc"><strong>起送价:</strong>&nbsp;到登科保洁(长寿路店) 30元。 （额外说明：30元起送)</p> 
                <p><strong>地址:</strong>&nbsp;上海长寿路517号靠近胶州路口</p> 
                <p><strong>营业时间:</strong>&nbsp;10:30 - 23:30</p> 
                <p><strong>简介:</strong>&nbsp;阿姨奶茶二十年磨一剑，口味始终如一，真材实料精心熬制，不添加任何添加剂，现煮才是最健康的，淘最上海人气美食推荐，沪上最好喝的血糯米奶茶，为您提供美味的同时，对您的健康保证是我们的责任。</p> 
               </div> 
              </div> 
             </div> 
            </div> </td> 
          </tr> 
         </tbody> 
        </table> 
       </div> 
      </div> 
     </div> 
    </div> 
  
          
 </body>

</html>