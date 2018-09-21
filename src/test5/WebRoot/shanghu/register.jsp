<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);

    function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <!-- <link href="css/style.css" rel='stylesheet' type='text/css' /> -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <style>
    html,
    body,
    div,
    span,
    applet,
    object,
    iframe,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    p,
    blockquote,
    pre,
    a,
    abbr,
    acronym,
    address,
    big,
    cite,
    code,
    del,
    dfn,
    em,
    img,
    ins,
    kbd,
    q,
    s,
    samp,
    small,
    strike,
    strong,
    sub,
    sup,
    tt,
    var,
    b,
    u,
    i,
    dl,
    dt,
    dd,
    ol,
    nav ul,
    nav li,
    fieldset,
    form,
    label,
    legend,
    table,
    caption,
    tbody,
    tfoot,
    thead,
    tr,
    th,
    td,
    article,
    aside,
    canvas,
    details,
    embed,
    figure,
    figcaption,
    footer,
    header,
    hgroup,
    menu,
    nav,
    output,
    ruby,
    section,
    summary,
    time,
    mark,
    audio,
    video {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    article,
    aside,
    details,
    figcaption,
    figure,
    footer,
    header,
    hgroup,
    menu,
    nav,
    section {
        display: block;
    }

    ol,
    ul {
        list-style: none;
        margin: 0px;
        padding: 0px;
    }

    blockquote,
    q {
        quotes: none;
    }

    blockquote:before,
    blockquote:after,
    q:before,
    q:after {
        content: '';
        content: none;
    }

    table {
        border-collapse: collapse;
        border-spacing: 0;
    }
    /* start editing from here */

    a {
        text-decoration: none;
    }

    .txt-rt {
        text-align: right;
    }
    /* text align right */

    .txt-lt {
        text-align: left;
    }
    /* text align left */

    .txt-center {
        text-align: center;
    }
    /* text align center */

    .float-rt {
        float: right;
    }
    /* float right */

    .float-lt {
        float: left;
    }
    /* float left */

    .clear {
        clear: both;
    }
    /* clear float */

    .pos-relative {
        position: relative;
    }
    /* Position Relative */

    .pos-absolute {
        position: absolute;
    }
    /* Position Absolute */

    .vertical-base {
        vertical-align: baseline;
    }
    /* vertical align baseline */

    .vertical-top {
        vertical-align: top;
    }
    /* vertical align top */

    nav.vertical ul li {
        display: block;
    }
    /* vertical menu */

    nav.horizontal ul li {
        display: inline-block;
    }
    /* horizontal menu */

    img {
        max-width: 80%;
        
    }
    /*end reset*/
    /****-----start-body----****/

    body {
        background: url(images/bg1.jpg) no-repeat 0px 0px;
        font-family: 'Open Sans', sans-serif;
        background-size: cover;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        min-height: 1050px;
    }

    .wrap {
        margin: 0 auto;
        width: 80%;
    }

    body a,
    form li,
    input[type="submit"],
    input[type="text"],
    .sixth-login input[type="submit"],
    .third-login input[type="submit"] {
        transition: 0.1s all;
        -webkit-transition: 0.1s all;
        -moz-transition: 0.1s all;
        -o-transition: 0.1s all;
    }
    /*--back--*/
    .back {
        background: url('images/back.png') no-repeat 0px 0px;
        cursor: pointer;
        width: 20px;
        height: 20px;
        position: absolute;
        left: 10px;
        top: 20px;
        -webkit-transition: color 0.2s ease-in-out;
        -moz-transition: color 0.2s ease-in-out;
        -o-transition: color 0.2s ease-in-out;
        transition: color 0.2s ease-in-out;
    }
    /*--close--*/

    .close {
        background: url('images/close.png') no-repeat 0px 0px;
        cursor: pointer;
        width: 20px;
        height: 20px;
        position: absolute;
        left: 30px;
        top: 20px;
        -webkit-transition: color 0.2s ease-in-out;
        -moz-transition: color 0.2s ease-in-out;
        -o-transition: color 0.2s ease-in-out;
        transition: color 0.2s ease-in-out;
    }
    /*--/close--*/

    h1 {
        font-family: 'Exo 2', sans-serif;
        text-align: center;
        padding-top: 4em;
        font-weight: 400;
        color: #FFF;
        font-size: 2em;
    }

    .login-form {
        background: #2b2b36;
        position: relative;
        width: 30%;
        margin: 3% auto 0 auto;
        text-align: center;
        border-radius: 15px;
        -webkit-border-radius: 15px;
        -moz-border-radius: 15px;
        -o-border-radius: 15px;
    }
	.login-title{
		color: #ffffff;
	}
    .head img {
        width: 100%;
    }

    .avtar img {
        margin: 2em 0 0;
    }

    .head-info {
        padding: 5px 0;
        text-align: center;
        font-weight: 600;
        font-size: 2em;
        color: #fff;
        background: #23232e;
        height: 50px;
        border-top-left-radius: 10px;
        -webkit-border-top-left-radius: 10px;
        -moz-border-top-left-radius: 10px;
        -o-border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        -webkit-border-top-right-radius: 10px;
        -moz-border-top-right-radius: 10px;
        -o-border-top-right-radius: 10p
    }

    input[type="text"] {
        width: 60%;
        padding: 1em 2em 1em 3em;
        color: #9199aa;
        font-size: 18px;
        outline: none;
        background: url(images/adm.png) no-repeat 10px 15px;
        border: none;
        font-weight: 100;
        border-bottom: 1px solid#484856;
        /*margin-top: 2em;*/
    }

    input[type="password"] {
        width: 60%;
        padding: 1em 2em 1em 3em;
        color: #dd3e3e;
        font-size: 18px;
        outline: none;
        background: url(images/key.png) no-repeat 10px 23px;
        border: none;
        font-weight: 100;
        border-bottom: 1px solid#484856;
        /*margin-bottom: 3em;*/
    }

    .key {
        background: url(images/pass.png) no-repeat 447px 17px;
    }

    input[type="submit"] {
        font-size: 30px;
        color: #fff;
        outline: none;
        border: none;
        background: #3ea751;
        width: 100%;
        padding: 18px 0;
        border-bottom-left-radius: 15px;
        -webkit-border-bottom-left-radius: 15px;
        -moz-border-bottom-left-radius: 15px;
        -o-border-bottom-left-radius: 15px;
        border-bottom-right-radius: 15px;
        -webkit-border-bottom-right-radius: 15px;
        -moz-border-bottom-right-radius: 15px;
        -o-border-bottom-right-radius: 15px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background: #ff2775;
        border-bottom-left-radius: 15px;
        -webkit-border-bottom-left-radius: 15px;
        -moz-border-bottom-left-radius: 15px;
        -o-border-bottom-left-radius: 15px;
        border-bottom-right-radius: 15px;
        -webkit-border-bottom-right-radius: 15px;
        -moz-border-bottom-right-radius: 15px;
        -o-border-bottom-right-radius: 15px;
        transition: 1s all;
        -webkit-transition: 1s all;
        -moz-transition: 1s all;
        -o-transition: 1s all;
    }

    label.lbl-1 {
        background: #6756ea;
        width: 20px;
        height: 20px;
        display: block;
        float: right;
        border-radius: 50%;
        margin: 16px 10px 0px 0px;
    }

    label.lbl-2 {
        background: #ea569a;
        width: 20px;
        height: 20px;
        display: block;
        float: right;
        border-radius: 50%;
        margin: 16px 10px 0px 0px;
    }

    label.lbl-3 {
        background: #f1c85f;
        width: 20px;
        height: 20px;
        display: block;
        float: right;
        border-radius: 50%;
        margin: 16px 10px 0px 0px;
    }
    /*--copyrights--*/

    .copy-rights {
        text-align: center;
        margin-top: 8em;
    }

    .copy-rights p {
        color: #FFF;
        font-size: 1em;
        line-height: 1.8em;
    }

    .copy-rights p a {
        color: #ff2a75;
        -webkit-transition: all 0.3s ease-out;
        -moz-transition: all 0.3s ease-out;
        -ms-transition: all 0.3s ease-out;
        -o-transition: all 0.3s ease-out;
        transition: all 0.3s ease-out;
        text-decoration: none;
    }

    .copy-rights p a:hover {
        color: #3faa53;
        text-decoration: none;
        transition: 0.1s all;
        -webkit-transition: 0.1s all;
        -moz-transition: 0.1s all;
        -o-transition: 0.1s all;
    }
    /*--/copyrights--*/
    /*--start-responsive-design--*/

    @media (max-width:1440px) {
        .key {
            background: url(images/pass.png) no-repeat 376px 17px;
        }

        body {
            min-height: 811px;
        }
    }

    @media (max-width:1366px) {
        .key {
            background: url(images/pass.png) no-repeat 358px 19px;
        }
        .copy-rights {
            margin-top: 3em;
        }
        body {
            min-height: 768px;
        }
    }

    @media (max-width:1280px) {
        .key {
            background: url(images/pass.png) no-repeat 336px 18px;
        }
        body {
            min-height: 711px;
        }
        .copy-rights {
            margin-top: 0.5em;
        }
    }

    @media (max-width:1024px) {
        .login-form {
            width: 37%;
        }
        .key {
            background: url(images/pass.png) no-repeat 339px 18px;
        }
        .copy-rights {
            margin-top: 3em;
        }
        h1 {
            padding-top: 2em;
        }
        body {
            min-height: 675px;
        }
    }

    @media (max-width:768px) {
        .login-form {
            width: 50%;
            margin: 12% auto 0 auto;
        }
        .key {
            background: url(images/pass.png) no-repeat 342px 18px;
        }
        body {
            min-height: 929px;
        }
    }

    @media (max-width:640px) {
        .login-form {
            width: 60%;
            margin: 20% auto 0 auto;
        }
        .key {
            background: url(images/pass.png) no-repeat 342px 19px;
        }
    }

    @media (max-width:480px) {
        .login-form {
            width: 80%;
        }
    }

    @media (max-width:320px) {
        h1 {
            padding-top: 1em;
            font-size: 1.5em;
        }
        .login-form {
            width: 90%;
            margin: 10% auto 0 auto;
        }
        input[type="text"] {
            width: 62%;
            padding: 1.2em 2em .5em 2.5em;
            font-size: 17px;
            margin-top: .5em;
        }
        input[type="password"] {
            width: 62%;
            padding: 1.2em 2em .5em 2.5em;
            font-size: 17px;
            margin-top: .5em;
            margin-bottom: 2em;
            background: url(images/key.png) no-repeat 8px 23px;
        }
        .key {
            background: url(images/pass.png) no-repeat 235px 27px;
        }
        .avtar img {
            margin: 1.1em 0 0;
        }
        .head-info {
            height: 35px;
        }
        label.lbl-1 {
            margin: 8px 10px 0px 0px;
        }
        label.lbl-2 {
            margin: 8px 10px 0px 0px;
        }
        label.lbl-3 {
            margin: 8px 10px 0px 0px;
        }
        .back{
        	left: 16px;
            top: 13px;
        }
        .close {
            left: 26px;
            top: 13px;
        }
        .copy-rights {
            margin-top: 2em;
        }
        body {
            min-height: 504px;
        }
        input[type="submit"] {
            font-size: 28px;
            padding: 10px 0;
        }
        .checknum{
        	width: 45%;
            padding: 1.2em 2em .5em 2.5em;
            font-size: 17px;
            margin-top: .5em;
        }
        #check{
        	margin-left: 50px;


        }
    }
    /*--end-responsive-design--*/
    .warning{
    	color: #666666;
    	margin-bottom: 2em;
    	margin-top: 1em;
    }
    </style>
</head>

<body>
    <script>
    $(document).ready(function(c) {
        $('.close').on('click', function(c) {
            $('.login-form').fadeOut('slow', function(c) {
                $('.login-form').remove();
            });
        });
        $('.back').on('click', function(c) {
            history.go(-1);
        });
    });
    </script>
    <h1>Bar&Restaraunt</h1>
    <div class="login-form">
    	<div class="back"> </div>
        <div class="close"> </div>
        <div class="head-info">
            <label class="lbl-1"> </label>
            <label class="lbl-2"> </label>
            <label class="lbl-3"> </label>
        </div>
        <div class="clear"> </div>
        <div class="avtar"><img src="images/avtar.png" /></div>
        <div class="login-title">用户注册</div>
        <form action="user_register_check.jsp" method="post">
     
			<input name="uname" type="text" value="" placeholder="用户名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}">

            <div class="key">
                <input name="password" type="password" value="" placeholder="密码" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';this.placeholder='请输入密码'}">
                <input name="repassword" type="password" value="" placeholder="确认密码" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';this.placeholder='确认密码'}">
                <input name="phone" class="checknum" type="text" value="" placeholder="手机号" onkeyup="value=value.replace(/[^\d]/g,'')" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '手机号';}">
                
                <input name="address" class="checknum" type="text" value="" placeholder="地址" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '地址';}">
                
                 
           
            </div>
             <div class="signin">
        
        
            <input type="submit" value="注册"> <%-- onclick="window.location.href='home.jsp'" --%>
            

        </div>
        </form>
         <p class="warning">温馨提示：未注册过的账号，登录时将自动注册</p>
        <%	
         	String error = "";
			if(request.getAttribute("error") != null) {
				error =(String)request.getAttribute("error");
				out.print("<font color='red'>" + error +"</font>");
			}
 		%>
        <p class="warning">注册过的用户可凭账号密码登录</p>
       
    </div>
    <div class="copy-rights">
        <p>Copyright &copy; 2018.黑龙江大学软件系统分析项目.Bar & Restaraunt系统</p>
    </div>
</body>

</html>
