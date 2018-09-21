<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%
	request.setCharacterEncoding("UTF-8");
	String backloginID = request.getParameter("backloginID");
	String backloginPWD = request.getParameter("backloginPWD");
	//System.out.println(backloginID+", "+backloginPWD);
	if(backloginID.equals("") && backloginPWD.equals("")) {
		request.setAttribute("error","请输入用户名和密码");
		request.getRequestDispatcher("back-login.jsp").forward(request, response);
		return;
	}
	if(backloginID.equals("")) {
		request.setAttribute("error","请输入用户名");
		request.getRequestDispatcher("back-login.jsp").forward(request, response);
		return;
	}
	if(backloginPWD.equals("")) {
		request.setAttribute("error","请输入密码");
		request.getRequestDispatcher("back-login.jsp").forward(request, response);
		return;
	}
	//用户名、密码不为空
	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery("select * from manager");
	while(rs.next()) {
		if(rs.getString("userName").equals(backloginID) && rs.getString("password").equals(backloginPWD)) {
			//登录成功
			ConnectionPool.getInstance().release(conn);
			request.getRequestDispatcher("contacts.jsp").forward(request, response);
			return;
		}
		else if(rs.getString("userName").equals(backloginID) && !rs.getString("password").equals(backloginPWD)){
			ConnectionPool.getInstance().release(conn);
			request.setAttribute("error","密码错误,请重新输入密码");
			request.getRequestDispatcher("back-login.jsp").forward(request, response);
			return;
		}
	}
	ConnectionPool.getInstance().release(conn);
	request.setAttribute("error","无此用户,请注册后再登录");
	request.getRequestDispatcher("back-login.jsp").forward(request, response);
	return;
 %>