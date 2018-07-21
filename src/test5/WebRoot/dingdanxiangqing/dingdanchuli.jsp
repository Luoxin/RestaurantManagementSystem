<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="thread.MyThread2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String addressId, phone;
		String shangJiaID;

		shangJiaID = (String) session.getAttribute("ID");
		//addressId = (String) session.getAttribute("addressId");
		  addressId=(String)  session.getAttribute("addressId");
	
		phone = (String) session.getAttribute("phone");
		int k = 0;
		int h = 0;

		Connection conn = ConnectionPool.getInstance().getConnection();

		Statement stm = conn.createStatement();

		ResultSet rscaipinglist = stm.executeQuery("select * from caipinglist");

		int i = 0;
		String randShangJiaID = "无";
		RandomNumber randomID = new RandomNumber();
		String orderID = randomID.getRandNumber();

		PreparedStatement stmm = conn.prepareStatement("insert into  orderinfo values( ? ,?,? )");
		PreparedStatement stmm2 = conn.prepareStatement("insert into  orderlist values( ? ,?,? ,?,? ,?,? ,?,?)");
		stmm2.setString(1, orderID);
		stmm2.setString(2, (String) session.getAttribute("userId"));
		stmm2.setString(3, addressId);
		stmm2.setString(4, phone);
		stmm2.setString(5, shangJiaID);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		stmm2.setString(6, df.format(System.currentTimeMillis()));
		stmm2.setString(7, (String) session.getAttribute("zonge"));
		stmm2.setString(8, "0");
		String liuyan = (String) request.getParameter("liuyan");
		stmm2.setString(9, liuyan);
		stmm2.execute();
		while (((String) session.getAttribute("shuliang" + String.valueOf(k++))) != null) {
			
			stmm.setString(1, orderID);
			String caipingName = (String) session.getAttribute("caipingName" + String.valueOf(i++));
			session.setAttribute("caipingName" + String.valueOf(i-1), "");
			while (rscaipinglist.next()) {
				if (((String) rscaipinglist.getString("caipingName")).equals(caipingName)) {

					stmm.setString(2, (String) rscaipinglist.getString("caipingID"));
					stmm.setString(3, (String) session.getAttribute("shuliang" + String.valueOf(k-1)));
			
					stmm.execute();
					session.setAttribute("shuliang" + String.valueOf(k-1), "");
					break;
				}

			}

		}
		
		response.sendRedirect("../shanghu/member_order_refund.jsp");
		%>
		
		
	





</body>
</html>