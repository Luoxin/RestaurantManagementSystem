<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>

<%
	String shangJiaID=(String)session.getAttribute("shangJiaID");
	if(shangJiaID == null) {
		response.sendRedirect("../view/home.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String manJianJiaGe=request.getParameter("manJianJiaGe");//满减价格
	String youhujiage=request.getParameter("youhujiage");//优惠价格
	String kaiShiShiJian=request.getParameter("kaiShiShiJian");//开始时间
	String jieShuShiJian=request.getParameter("jieShuShiJian");//结束时间
	if(manJianJiaGe.isEmpty()) {//满减价格
		request.setAttribute("error","请输入满减价格");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	if(youhujiage.isEmpty()) {//优惠价格
		request.setAttribute("error","请输入优惠价格");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	if(kaiShiShiJian.isEmpty()) {//开始时间
		request.setAttribute("error","请输入开始时间");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	if(jieShuShiJian.isEmpty()) {//结束时间
		request.setAttribute("error","请输入结束时间");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}	
	if(Integer.parseInt(manJianJiaGe) < Integer.parseInt(youhujiage)) {//优惠价格超出满减价格
		request.setAttribute("error","优惠价格超出满减价格");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	if(Integer.parseInt(manJianJiaGe) < Integer.parseInt(youhujiage)) {//优惠价格超出满减价格
		request.setAttribute("error","优惠价格超出满减价格");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	Date date = new Date(System.currentTimeMillis());
	DateFormat df = new SimpleDateFormat("yyyyMMdd");//yyyy-MM-dd HH:mm:ss
	java.util.Date startTime = df.parse(kaiShiShiJian);
	java.util.Date endtTime = df.parse(jieShuShiJian);
	
	if(startTime.compareTo(date) <0) {
		request.setAttribute("error","开始时间已过");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	if(startTime.compareTo(endtTime) >0) {
		request.setAttribute("error","开始时间小于结束时间");
		request.getRequestDispatcher("zhekou.jsp").forward(request,response);
		return;
	}
	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm=conn.createStatement();
	ResultSet rs=stm.executeQuery("select * from youhui");
	//添加优惠表
	boolean flag=true;
	while(rs.next()) {
		String id = rs.getString("shangJiaID");
		String Manjian = rs.getString("manJianJiaGe");
		if(id.equals(shangJiaID) && Manjian.equals(manJianJiaGe)) {
			//商家ID 和 满减价格 都存在
			flag = false;
			request.setAttribute("error","该优惠已存在");
			ConnectionPool.getInstance().release(conn);
			request.getRequestDispatcher("zhekou.jsp").forward(request,response);
			return;		
		}
		
	}
	df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//yyyy-MM-dd HH:mm:ss
	if(flag) {//优惠表中没有重复的。 插入该表
		PreparedStatement rstm = conn.prepareStatement("insert into youhui values(?, ?, ?, ?, ?)");
		rstm.setString(1, shangJiaID);
		rstm.setString(2, manJianJiaGe);
		rstm.setString(3, youhujiage);
		rstm.setString(4, df.format(startTime));
		rstm.setString(5, df.format(endtTime));
		rstm.execute();
	}	
	ConnectionPool.getInstance().release(conn);
	response.sendRedirect("zhekou.jsp");
%>
