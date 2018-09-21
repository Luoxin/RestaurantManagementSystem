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
	String manJianJiaGe = request.getParameter("manJianJiaGe");
	
	Connection conn = ConnectionPool.getInstance().getConnection();	
	//删除菜单记录
	PreparedStatement stm = conn.prepareStatement("delete from youhui where shangJiaID=? && manJianJiaGe=?");
	stm.setString(1,shangJiaID);
	stm.setString(2,manJianJiaGe);
	stm.execute();
	stm.close(); 
	
	response.sendRedirect("zhekou.jsp");
%>