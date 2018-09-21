<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String address = (String) request.getParameter("address");

		String phone = (String) request.getParameter("phone");

		if (address.equals("")) {
			session.setAttribute("updateAddress", null);

			request.getRequestDispatcher("member_addr.jsp").forward(request,
					response);

			return;
		}

		if (phone.equals("")) {
			session.setAttribute("updateAddress", null);

			request.getRequestDispatcher("member_addr.jsp").forward(request,
					response);
			return;
		}

		Connection conn = ConnectionPool.getInstance().getConnection();
		Statement stm1 = conn.createStatement();
		Statement stm2 = conn.createStatement();
		Statement stm3 = conn.createStatement();
		ResultSet rs1userinfolist = stm1
				.executeQuery("select * from userinfolist");
		ResultSet rs2orderphone = stm2
				.executeQuery("select * from orderphone");
		ResultSet rs3addresslist = stm3
				.executeQuery("select * from addresslist");
		String userId = (String) session.getAttribute("userId");

		int flag1 = 0, flag2 = 0, i = 0;
		while (rs1userinfolist.next()) {
			if (rs1userinfolist.getString("userId").equals(userId)) {
				while (rs2orderphone.next()) {
					if (rs2orderphone.getString("userId").equals(userId)) {

						PreparedStatement stmm = conn
								.prepareStatement("update orderphone set phone=? where userID=?");
						stmm.setString(1, phone);
						stmm.setString(2, userId);
						stmm.execute();
						flag1 = 1;
						break;
					}
				}

				while (rs3addresslist.next()) {
					if (rs1userinfolist.getString("addressId").equals(
							rs3addresslist.getString("addressId"))) {
						

						PreparedStatement stmm = conn
								.prepareStatement("update addresslist set address=? where addressId=?");
						stmm.setString(1, address);
						stmm.setString(2,
								rs1userinfolist.getString("addressId"));
						stmm.execute();
						flag2 = 1;
						break;
					}
				}

				ConnectionPool.getInstance().release(conn);

			}
			if (flag1 == 1 && flag2 == 1) {
				session.setAttribute("updateAddress", "修改成功！");
				ConnectionPool.getInstance().release(conn);
				break;
			}

		}

	

		ConnectionPool.getInstance().release(conn);
		request.getRequestDispatcher("member_addr.jsp").forward(request,
				response);
		
	%>

</body>
</html>