<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<% 

	//商户登录
	request.setCharacterEncoding("UTF-8");
	String uname1 = (String) request.getParameter("uname1");
	String password1 = (String) request.getParameter("password1");
	
	if (uname1.equals("") && password1.equals("")) {
		request.setAttribute("error", "请输入用户名和密码");
		request.getRequestDispatcher("shanghuLongin.jsp").forward(request, response);
		return;
	}
	if (uname1.equals("")) {
		request.setAttribute("error", "请输入用户名");
		request.getRequestDispatcher("shanghuLongin.jsp").forward(request, response);
		return;
	}
	if (password1.equals("")) {
		request.setAttribute("error", "请输入密码");
		request.getRequestDispatcher("shanghuLongin.jsp").forward(request, response);
		return;
	}
	
	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs1 = stm.executeQuery("select * from shangjialist");
	while (rs1.next()) {
		if (rs1.getString("shangjiaName").equals(uname1)) {
			if (!rs1.getString("idCheck").equals(password1)) {
				ConnectionPool.getInstance().release(conn);
				request.setAttribute("error", "密码错误！");
				request.getRequestDispatcher("shanghuLongin.jsp").forward(request, response);
				return;
			} else {
				session.setAttribute("shangJiaID",rs1.getString("shangJiaID"));
				session.setAttribute("shangjiaName",rs1.getString("shangjiaName"));				
				ConnectionPool.getInstance().release(conn);
				response.sendRedirect("home.jsp");
				return;
			}

		}
	}
	
	ConnectionPool.getInstance().release(conn);
	request.setAttribute("error", "用户不存在，请注册后登录！");
	request.getRequestDispatcher("shanghuLongin.jsp").forward(request, response);
	return;
%>