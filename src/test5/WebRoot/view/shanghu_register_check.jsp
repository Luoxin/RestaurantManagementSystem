<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
	request.setCharacterEncoding("UTF-8");	
	//普通注册
	String shangjiaName = (String) request.getParameter("uname");//商家名
	String password = (String) request.getParameter("password");//密码
	String repassword = (String) request.getParameter("repassword");//确认密码
	String ty = (String) request.getParameter("ty");//统一社会信用代码
	String sp = (String) request.getParameter("sp");//食品卫生许可证编号
	String dianputubiao = (String) request.getParameter("dianputubiao");//店铺图标
	String jianjie = (String) request.getParameter("jianjie");//简介
	String youxiaoqi = (String) request.getParameter("youxiaoqi");//有效期
	String address = (String) request.getParameter("address");//地址
	String begaintime = (String) request.getParameter("begaintime");//开始营业时间
	String endtime = (String) request.getParameter("endtime");//结束营业时间
	
	if (shangjiaName.equals("")) {
		request.setAttribute("error", "请输入商户名");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (password.equals("")) {
		request.setAttribute("error", "请输入密码");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (repassword.equals("")) {
		request.setAttribute("error", "请确认密码");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (ty.equals("")) {
		request.setAttribute("error", "请输入统一社会信用代码");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (sp.equals("")) {
		request.setAttribute("error", "请输入食品卫生许可证编号");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (dianputubiao.equals("")) {
		request.setAttribute("error", "请输入店铺图标");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (jianjie.equals("")) {
		request.setAttribute("error", "请输入简介");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (youxiaoqi.equals("")) {
		request.setAttribute("error", "请输入有效期");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (address.equals("")) {
		request.setAttribute("error", "请输入地址");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (begaintime.equals("")) {
		request.setAttribute("error", "请输入开始营业时间");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	if (endtime.equals("")) {
		request.setAttribute("error", "请输入结束营业时间");
		request.getRequestDispatcher("shanghuRegister.jsp").forward(request, response);
		return;
	}
	
	
	//插入数据库
	Connection conn = ConnectionPool.getInstance().getConnection();
	PreparedStatement restm = conn.
			prepareStatement("insert into shangjialist(shangJiaID,shangjiaName,IdCheck,tongYiSheHuiXingYongDaiMa,shiPingWeiShengXuKeBianHao,tuPian,jianJie,youXiaoQi,address,kaiShiYeShiJian,jieShuYingYeShiJian) values(?,?,?,?,?,?,?,?,?,?,?)");	
	RandomNumber randomID=new RandomNumber();
	String randShangJiaID=randomID.getRandNumber();
	restm.setString(1,randShangJiaID );
	restm.setString(2,shangjiaName);
	restm.setString(3, password);
	restm.setString(4, ty);
	restm.setString(5, sp);
	restm.setString(6, dianputubiao);
	restm.setString(7, jianjie);
	restm.setString(8, youxiaoqi);
	restm.setString(9, address);
	restm.setString(10, begaintime);
	restm.setString(11, endtime);
	//执行
	restm.execute();
	//释放连接
	ConnectionPool.getInstance().release(conn);
	//注册完成自动登录
    session.setAttribute("shangJiaID", randShangJiaID);
	session.setAttribute("shangjiaName", shangjiaName);
	response.sendRedirect("home.jsp");
	return;
%>