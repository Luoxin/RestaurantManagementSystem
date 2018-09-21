<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
	request.setCharacterEncoding("UTF-8");	
	//普通注册
	String uname = (String) request.getParameter("uname");
	String password = (String) request.getParameter("password");
	String repassword = (String) request.getParameter("repassword");
	String phone = (String) request.getParameter("phone");	
	String address = (String) request.getParameter("address");
			
	if (uname.equals("")) {
		request.setAttribute("error", "请输入用户名");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}
	
	if (password.equals("")) {
		request.setAttribute("error", "请输入密码");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}

	if (repassword.equals("")) {
		request.setAttribute("error", "请确认密码");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}
	if (!password.equals(repassword)) {
		request.setAttribute("error", "两次密码不一致");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}
	if (phone.isEmpty()) {
		request.setAttribute("error", "请输入联系电话");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}
	if (address.equals("")) {
		request.setAttribute("error", "请输入地址");
		request.getRequestDispatcher("register.jsp").forward(request,response);
		return;
	}

	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery("select * from userinfolist");
	RandomNumber randomID=new RandomNumber();	
	while (rs.next()) {
		if (rs.getString("userID").equals(uname)) {
			ConnectionPool.getInstance().release(conn);
			request.setAttribute("error", "用户存在");
			request.getRequestDispatcher("register.jsp").forward(request,response);
			return;
		}
	}
	PreparedStatement restm = conn.prepareStatement("insert into userinfolist(userID,uname,idCheck,addressID) values(?,?,?,?)");
	PreparedStatement restm1 = conn.prepareStatement("insert into orderphone(userID,phone) values(?,?)");
	PreparedStatement restm2 = conn.prepareStatement("insert into addresslist(addressId,address) values(?,?)");
	//生成随机ID	
	String randUserID=randomID.getRandNumber();
	String randAddressid=randomID.getRandNumber();
	restm.setString(1,randUserID );
	//添加进用户信息表
	restm.setString(2, uname);
	restm.setString(3, password);
	restm.setString(4, randAddressid);
	//订单手机
	restm1.setString(1, randUserID);
	restm1.setString(2, phone);
	//添加进地址表
	restm2.setString(1, randAddressid);
	restm2.setString(2, address);
	//执行
	restm.execute();
	restm1.execute();
	restm2.execute();
	
	ConnectionPool.getInstance().release(conn);
	session.setAttribute("userId", randUserID);
	session.setAttribute("uname", uname);
	response.sendRedirect("home.jsp");
	return;
%>