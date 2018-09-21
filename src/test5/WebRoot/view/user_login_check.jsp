<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uname1 = (String) request.getParameter("uname1");
	String password1 = (String) request.getParameter("password1");
	
	if (uname1.equals("") && password1.equals("")) {
		request.setAttribute("error", "请输入用户名和密码");
		request.getRequestDispatcher("index-custLogin.jsp").forward(request, response);
		return;
	}
	if (uname1.equals("")) {
		request.setAttribute("error", "请输入用户名");
		request.getRequestDispatcher("index-custLogin.jsp").forward(request, response);
		return;
	}
	if (password1.equals("")) {
		request.setAttribute("error", "请输入密码");
		request.getRequestDispatcher("index-custLogin.jsp").forward(request, response);
		return;
	}
	//普通登录
	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery("select * from userinfolist");
	RandomNumber randomID=new RandomNumber();
	while (rs.next()) {
		//用户名存在
		if (rs.getString("uname").equals(uname1)) {
			//密码错误
			if (!rs.getString("idCheck").equals(password1)) {
				ConnectionPool.getInstance().release(conn);
				request.setAttribute("error", "密码错误！");
				request.getRequestDispatcher("index-custLogin.jsp").forward(request, response);
				return;
				
			} else {//正常登录		
				session.setAttribute("userId", rs.getString("userID"));
	            session.setAttribute("uname", uname1);
				ConnectionPool.getInstance().release(conn);
				response.sendRedirect("home.jsp");
				return;
			}
		}
	}
	request.setAttribute("error", "用户不存在，请注册后登录！");
	ConnectionPool.getInstance().release(conn);
	request.getRequestDispatcher("index-custLogin.jsp").forward(request, response);
%>