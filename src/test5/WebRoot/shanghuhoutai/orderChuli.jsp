<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>
<%
	String shangJiaID=(String)session.getAttribute("shangJiaID");
	if(shangJiaID == null) {
		response.sendRedirect("../view/home.jsp");
		return;
	}
	
	request.setCharacterEncoding("utf-8");
	String orderID = request.getParameter("orderID");
	String chuli = request.getParameter("chuli");
	int flag = Integer.parseInt(chuli);
	//
	Connection conn = ConnectionPool.getInstance().getConnection();
	//
	PreparedStatement rstm = conn.prepareStatement("update orderlist set songcanFlag=? where orderID=?");
	rstm.setInt(1, flag);
	rstm.setString(2, orderID);
	rstm.execute();
	ConnectionPool.getInstance().release(conn);
	response.sendRedirect("order.jsp?from=xin");
%>