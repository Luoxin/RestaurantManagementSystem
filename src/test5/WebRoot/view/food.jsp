<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html ng-app="eleme" perf-error="desktop/">
  <head>
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit" />
    <meta dynamic-meta name="mobile-agent" content="format=html5; url=http://m.ele.me/place/" />

    <title ng-bind="SEO.title">饿了么-网上订餐_外卖_饿了么订餐官网</title>

    <meta dynamic-meta name="description" content="“饿了么”2008年创立于上海，是中国领先的本地生活平台。截至目前，饿了么在线外卖交易平台已覆盖全国2000个城市，加盟餐厅130万家，用户量达2.6亿">
    <meta dynamic-meta name="keywords" content="饿了么，网上订餐，外卖，快餐外卖，外卖网">
    <meta name="format-detection" content="telephone=no, email=no" />

    <meta name="application-name" content="饿了么网上订餐" />
    <meta name="msapplication-tooltip" content="饿了么网上订餐" />
    <meta name="msapplication-starturl" content="./" />
    <meta name="msapplication-tileimage" content="=http://static11.elemecdn.com/apple-touch-icon.png?v=2" />
    <meta name="msapplication-tilecolor" content="#0088ff" />
    <meta name="msapplication-task" content="name=切换地区;action-uri=http://ele.me/home;icon-uri=http://static11.elemecdn.com/apple-touch-icon.png?v=2" />
    <meta name="msapplication-task" content="name=我要订餐;action-uri=http://ele.me?from=IE;icon-uri=http://static11.elemecdn.com/apple-touch-icon.png?v=2" />
    <meta name="msapplication-task" content="name=订单中心;action-uri=http://ele.me/profile?from=IE;icon-uri=http://static11.elemecdn.com/apple-touch-icon.png?v=2" />
    <meta name="msapplication-task" content="name=寻求帮助（HELP）;action-uri=http://ele.me/support?from=IE;icon-uri=http://static11.elemecdn.com/apple-touch-icon.png?v=2" />
    <meta property="qc:admins" content="2263606250655" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="apple-touch-icon-precomposed" href="https://static2.ele.me/apple-touch-icon.png?v=2" />

    <link rel="shortcut icon" href="//static2.ele.me/eleme/desktop/media/img/favicon-16x16.png" type="image/png" />
    <link rel="icon" href="//static2.ele.me/eleme/desktop/media/img/favicon-16x16.png" type="image/png" sizes="16x16" />
    <link rel="icon" href="//static2.ele.me/eleme/desktop/media/img/favicon-32x32.png" type="image/png" sizes="32x32" />
    <link rel="icon" href="//static2.ele.me/eleme/desktop/media/img/favicon.png" type="image/png" sizes="96x96" />

    <link href="//shadow.elemecdn.com/faas/desktop/vendor.606e96.css" rel="stylesheet">
    
    <link href="//shadow.elemecdn.com/faas/desktop/main.153014.css" rel="stylesheet">
    

    <!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

    <script src="//crayfish.elemecdn.com/www.ele.me@ref/api" data-ref="API_CONFIG"></script>
    <script src="//shadow.elemecdn.com/faas/desktop/perf.js" type="text/javascript" crossorigin="anonymous"></script>
    <script src="//shadow.elemecdn.com/faas/desktop/vendor.bb39e7.js" type="text/javascript" crossorigin="anonymous"></script>
    <script src="//shadow.elemecdn.com/faas/desktop/main.cd3e1d.js" type="text/javascript" crossorigin="anonymous"></script>
    <base href="/">
  </head>
  <body cute-title ng-class="{hidesidebar: layoutState && layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}">
  
    <eleme-topbar state="layoutState"></eleme-topbar>
    <eleme-importantnotification></eleme-importantnotification>
    <eleme-sidebar ng-hide="layoutState && layoutState.hideSidebar"></eleme-sidebar>
    <div ng-view role="main"></div>
    <eleme-footer></eleme-footer>
  

  
  
    <script src="//crayfish.elemecdn.com/www.ele.me/home"></script>
  
  </body>
</html>
