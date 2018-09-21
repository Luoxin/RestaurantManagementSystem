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
	String caipingName=request.getParameter("caipingName");
	String jiage=request.getParameter("jiage");
	String youhujiage=request.getParameter("youhujiage");
	//System.out.println(caipingName+","+jiage);
	if(caipingName.isEmpty()) {
		request.setAttribute("error","请输入菜品名");
		request.getRequestDispatcher("shangpin_add.jsp").forward(request,response);
		return;
	}
	if(jiage.isEmpty()) {
		request.setAttribute("error","请输入价格");
		request.getRequestDispatcher("shangpin_add.jsp").forward(request,response);
		return;
	}
	if(youhujiage.isEmpty()) {
		youhujiage="0";
	}
	
	Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm_tmp=conn.createStatement();
	ResultSet caipinSet=stm_tmp.executeQuery("select * from caipinglist");
	//添加菜品
	String caipingID="";
	boolean flag=true;//默认菜单列表中不存在该菜品
	while(caipinSet.next()) {
		//菜品列表中存在该菜品
		if( caipingName.equals(caipinSet.getString("caipingName")) ) {
			flag=false;//菜单列表中存在
			caipingID=caipinSet.getString("caipingID");
			break;
		}
		
	}
	if(flag) {//不存在该菜品
		boolean b_flag=false;
		do {		
			b_flag=false;
			caipingID=(new RandomNumber()).getRandNumber();//生成ID
			while(caipinSet.next()) {
				if(caipingID.equals(caipinSet.getString("caipingID"))){
					b_flag=true;//如果菜品列表中已经存在该ID；则重新生成ID
					break;
				}
			}
			
		} while(b_flag);
		
		PreparedStatement stm = conn.prepareStatement("insert into caipinglist(caipingID,caipingName)values(?,?)");
		stm.setString(1,caipingID);
		stm.setString(2,caipingName);
		stm.execute();
		stm.close();
	}
	//添加菜单
	//判断菜单列表中是否存在该菜品
	Statement stm=conn.createStatement();	
	ResultSet rs=stm.executeQuery("select * from caidanlist");
	boolean isCunzai=true;
	while(rs.next()) {
		if(shangJiaID.equals(rs.getString("shangJiaID")) && caipingID.equals(rs.getString("caipingID")) ) {
			isCunzai=false;
			request.setAttribute("error","存在该菜品");
			break;
		}
	}
	if(isCunzai) {
		PreparedStatement rstm = conn.prepareStatement("insert into caidanlist(caipingID,shangJiaID,jiage,youhujiage)values(?,?,?,?)");
		rstm.setString(1,caipingID);
		rstm.setString(2,shangJiaID);
		rstm.setFloat(3, Float.valueOf(jiage));
		rstm.setFloat(4, Float.valueOf(youhujiage));
		rstm.execute();
		rstm.close();
		request.setAttribute("error","添加成功");
	}
	
	ConnectionPool.getInstance().release(conn);
	request.getRequestDispatcher("shangpin_add.jsp").forward(request,response);
%>
