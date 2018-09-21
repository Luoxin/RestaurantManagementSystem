<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Random_Number_Package.RandomNumber"%>

<%
	String shangJiaID=(String)session.getAttribute("shangJiaID");
	if(shangJiaID == null) {
		response.sendRedirect("../view/home.jsp");
		return;
	}
	request.setCharacterEncoding("utf-8");
	String caipingID = request.getParameter("caipingID");
	Connection conn = ConnectionPool.getInstance().getConnection();
	
	//删除菜单记录
	PreparedStatement stm = conn.prepareStatement("delete from caidanlist where caipingID=? && shangJiaID=?");
	stm.setString(1,caipingID);
	stm.setString(2,shangJiaID);
	stm.execute();
	stm.close(); 
	
	response.sendRedirect("displayAll.jsp");
%>
