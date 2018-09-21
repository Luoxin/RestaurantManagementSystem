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
	String caipingID=request.getParameter("caipingID");//网址传
	String caipingName=request.getParameter("caipingName");
	String jiage=request.getParameter("jiage");
	String youhujiage=request.getParameter("youhujiage");
	//System.out.println(caipingName+","+jiage);
	if(caipingName.isEmpty()) {
		request.setAttribute("error","请输入菜品名");
		request.getRequestDispatcher("shangpin_update.jsp").forward(request,response);
		return;
	}
	if(jiage.isEmpty()) {
		request.setAttribute("error","请输入价格");
		request.getRequestDispatcher("shangpin_update.jsp").forward(request,response);
		return;
	}
	if(youhujiage.isEmpty()) {
		request.setAttribute("error","请输入优惠价格");
		request.getRequestDispatcher("shangpin_update.jsp").forward(request,response);
		return;
	}
	//System.out.println(shangJiaID+","+caipingID);
	Connection conn = ConnectionPool.getInstance().getConnection();
	//修改菜品表
	PreparedStatement rstm = conn.prepareStatement("update caipinglist set caipingName=? where caipingID=?");
	rstm.setString(1, caipingName);
	rstm.setString(2, caipingID);
	rstm.execute();
	rstm.close();
	//修改菜单表
	rstm = conn.prepareStatement("update caidanlist set jiage=?,youhujiage=? where caipingID=? && shangJiaID=?");
	rstm.setString(1, jiage);
	rstm.setString(2, youhujiage);
	rstm.setString(3, caipingID);
	rstm.setString(4, shangJiaID);
	rstm.execute();
	rstm.close();
	
	ConnectionPool.getInstance().release(conn);
	response.sendRedirect("displayAll.jsp");
%>
