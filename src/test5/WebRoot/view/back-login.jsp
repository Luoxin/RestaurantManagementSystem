<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>后台登录</title>
    <style type="text/css">
				    	
				body,
				div,
				span,
				header,
				footer,
				nav,
				section,
				aside,
				article,
				ul,
				dl,
				dt,
				dd,
				li,
				a,
				p,
				h1,
				h2,
				h3,
				h4,
				h5,
				h6,
				i,
				b,
				textarea,
				button,
				input,
				select,
				figure,
				figcaption {
				  padding: 0;
				  margin: 0;
				  list-style: none;
				  font-style: normal;
				  text-decoration: none;
				  border: none;
				  font-family: "Microsoft Yahei", sans-serif;
				  -webkit-tap-highlight-color: transparent;
				  -webkit-font-smoothing: antialiased;
				}
				body:focus,
				div:focus,
				span:focus,
				header:focus,
				footer:focus,
				nav:focus,
				section:focus,
				aside:focus,
				article:focus,
				ul:focus,
				dl:focus,
				dt:focus,
				dd:focus,
				li:focus,
				a:focus,
				p:focus,
				h1:focus,
				h2:focus,
				h3:focus,
				h4:focus,
				h5:focus,
				h6:focus,
				i:focus,
				b:focus,
				textarea:focus,
				button:focus,
				input:focus,
				select:focus,
				figure:focus,
				figcaption:focus {
				  outline: none;
				}
				/*定义滚动条高宽及背景 高宽分别对应横竖滚动条的尺寸*/
				::-webkit-scrollbar {
				  width: 0px;
				  height: 0px;
				  background-color: #F5F5F5;
				}
				/*定义滚动条轨道 内阴影+圆角*/
				::-webkit-scrollbar-track {
				  -webkit-box-shadow: inset 0 0 1px rgba(0, 0, 0, 0);
				  border-radius: 10px;
				  background-color: #F5F5F5;
				}
				/*定义滑块 内阴影+圆角*/
				::-webkit-scrollbar-thumb {
				  border-radius: 10px;
				  -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
				  background-color: #555;
				}
				input[type="button"],
				input[type="submit"],
				input[type="search"],
				input[type="reset"] {
				  -webkit-appearance: none;
				}
				textarea {
				  -webkit-appearance: none;
				}
				html,
				body {
				  height: 100%;
				  width: 100%;
				}
				.fillcontain {
				  height: 100%;
				  width: 100%;
				}
				.clear:after {
				  content: '';
				  display: block;
				  clear: both;
				}
				.clear {
				  zoom: 1;
				}
				.back_img {
				  background-repeat: no-repeat;
				  background-size: 100% 100%;
				}
				.margin {
				  margin: 0 auto;
				}
				.left {
				  float: left;
				}
				.right {
				  float: right;
				}
				.hide {
				  display: none;
				}
				.show {
				  display: block;
				}
				.ellipsis {
				  overflow: hidden;
				  text-overflow: ellipsis;
				  white-space: nowrap;
				}

    </style>
    <style type="text/css">
		    	
		.allcover[data-v-1a536808] {
		  position: absolute;
		  top: 0;
		  right: 0;
		}
		.ctt[data-v-1a536808] {
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		}
		.tb[data-v-1a536808] {
		  position: absolute;
		  top: 50%;
		  transform: translateY(-50%);
		}
		.lr[data-v-1a536808] {
		  position: absolute;
		  left: 50%;
		  transform: translateX(-50%);
		}
		.login_page[data-v-1a536808] {
		  background-color: #324057;
		}
		.manage_tip[data-v-1a536808] {
		  position: absolute;
		  width: 100%;
		  top: -100px;
		  left: 0;
		}
		.manage_tip p[data-v-1a536808] {
		  font-size: 34px;
		  color: #fff;
		}
		.form_contianer[data-v-1a536808] {
		  width: 320px;
		  height: 210px;
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  margin-top: -105px;
		  margin-left: -160px;
		  padding: 25px;
		  border-radius: 5px;
		  text-align: center;
		  background-color: #fff;
		}
		.form_contianer .submit_btn[data-v-1a536808] {
		  width: 100%;
		  font-size: 16px;
		}
		.tip[data-v-1a536808] {
		  font-size: 12px;
		  color: red;
		}
		.form-fade-enter-active[data-v-1a536808],
		.form-fade-leave-active[data-v-1a536808] {
		  transition: all 1s;
		}
		.form-fade-enter[data-v-1a536808],
		.form-fade-leave-active[data-v-1a536808] {
		  transform: translate3d(0, -50px, 0);
		  opacity: 0;
		}

    </style>
    <style type="text/css">
		    	
		.allcover[data-v-67695e62] {
		  position: absolute;
		  top: 0;
		  right: 0;
		}
		.ctt[data-v-67695e62] {
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		}
		.tb[data-v-67695e62] {
		  position: absolute;
		  top: 50%;
		  transform: translateY(-50%);
		}
		.lr[data-v-67695e62] {
		  position: absolute;
		  left: 50%;
		  transform: translateX(-50%);
		}

    </style>
    <style type="text/css">
    	.el-input__inner:focus {
    outline: 0;
    border-color: #20a0ff;
}
.el-input__inner {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: #fff;
	background-image: none;
	border-radius: 4px;
	border: 1px solid #bfcbd9;
	box-sizing: border-box;
	color: #1f2d3d;
	font-size: inherit;
	height: 36px;
	line-height: 1;
	outline: 0;
	padding: 3px 10px;
	transition: border-color .2s cubic-bezier(.645,.045,.355,1);
}
.el-input, .el-input__inner {
	width: 100%;
	display: inline-block;
}

.form_contianer .submit_btn[data-v-1a536808] {
	width: 100%;
	font-size: 16px;
}
.el-button--primary:focus, .el-button--primary:hover {
	background: #4db3ff;
	border-color: #4db3ff;
	color: #fff;
}
.el-button {
	display: inline-block;
	line-height: 1;
	white-space: nowrap;
	cursor: pointer;
	background: #fff;
	border: 1px solid #c4c4c4;
	color: #1f2d3d;
	margin: 0;
	padding: 10px 15px;
	border-radius: 4px;
}
.el-button--primary {
	color: #fff;
	background-color: #20a0ff;
	border-color: #20a0ff;
}
.el-form-item {
	margin-bottom: 22px;
}
    </style>
</head>

<body>
    <div id="app" class="fillcontain">
        <div data-v-1a536808="" class="login_page fillcontain">
            <section data-v-1a536808="" class="form_contianer" style="">
                <div data-v-1a536808="" class="manage_tip">
                    <p data-v-1a536808="">后台管理系统</p>
                </div>
                <form action="back-login-check.jsp" method="post" data-v-1a536808="" class="el-form" >
                    <div data-v-1a536808="" class="el-form-item is-required">
                        <!---->
                        <div class="el-form-item__content">
                            <div data-v-1a536808="" class="el-input">
                                <!---->
                                <!---->
                                <input name="backloginID" autocomplete="off" placeholder="用户名" rows="2" validateevent="true" class="el-input__inner" type="text">
                                <!---->
                                <!---->
                            </div>
                            <!---->
                        </div>
                    </div>
                    <div data-v-1a536808="" class="el-form-item is-required">
                        <!---->
                        <div class="el-form-item__content">
                            <div data-v-1a536808="" class="el-input">
                                <!---->
                                <!---->
                                <input name="backloginPWD" autocomplete="off" placeholder="密码" rows="2" validateevent="true" class="el-input__inner" type="password">
                                <!---->
                                <!---->
                            </div>
                            <!---->
                        </div>
                    </div>
                    <div data-v-1a536808="" class="el-form-item">
                        <!---->
                        <div class="el-form-item__content">
                        	<button data-v-1a536808="" type="submit" class="el-button submit_btn el-button--primary">
                           <%--
                            <button data-v-1a536808="" type="button" class="el-button submit_btn el-button--primary" onclick="window.location='contacts.jsp'">
                           --%>
                                <!---->
                                <!----><span>登陆</span></button>
                            <!---->
                        </div>
                    </div>
                </form>
               <%	String error = "";
				if(request.getAttribute("error") != null) {
					error =(String)request.getAttribute("error");
					%>
					<p data-v-1a536808="" class="tip"><%=error %></p>
					<%
					//out.print("<font color='red'>" + error +"</font>");
				}
			 	%>
				
				
                <%--
                <p data-v-1a536808="" class="tip">温馨提示：</p>
                <p data-v-1a536808="" class="tip">未登录过的新用户，自动注册</p>
                <p data-v-1a536808="" class="tip">注册过的用户可凭账号密码登录</p>
                 --%>
            </section>
        </div>
    </div>
    <script type="text/javascript" src="/app.js"></script>
</body>

</html>