<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String old_password = (String) request.getParameter("old_password");

	String new_password = (String) request.getParameter("new_password");
	String repeat_new_password = (String)request.getParameter("repeat_new_password");

    String userId=(String)session.getAttribute("userId");

Connection conn = ConnectionPool.getInstance().getConnection();
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery("select * from userinfolist");
	
       if (old_password.equals("")) {
			session.setAttribute("xiugaizhuangtai", "请输入旧密码！");
			ConnectionPool.getInstance().release(conn);

			
			request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
			
			return;
		}
		
		if ( new_password.equals("")) {
			session.setAttribute("xiugaizhuangtai", "请输入新密码！");
			ConnectionPool.getInstance().release(conn);

			
			request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
			return;
		}
		
		if (new_password.equals(old_password)) {
			session.setAttribute("xiugaizhuangtai","新密码不能和旧密码一致！");
			ConnectionPool.getInstance().release(conn);

			
			request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
			return;
		}
		if (!new_password.equals(repeat_new_password)) {
			session.setAttribute("xiugaizhuangtai","两次新密码不一致！");
			ConnectionPool.getInstance().release(conn);

			request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
			return;
		}
		
  while (rs.next()) {
			if (rs.getString("userId").equals(userId)) {
				if (!rs.getString("idCheck").equals(old_password)) {
					ConnectionPool.getInstance().release(conn);
					session.setAttribute("xiugaizhuangtai", "旧密码错误！");
					request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
					return;
				} else {
				
    PreparedStatement stmm = conn.prepareStatement("update userinfolist set idCheck=? where userID=?");
	stmm.setString(1,new_password);
	stmm.setString(2,userId);
	stmm.execute();
				
					session.setAttribute("xiugaizhuangtai", "修改成功！");
				
					ConnectionPool.getInstance().release(conn);
					request.getRequestDispatcher("member_pwd.jsp").forward(request,
				response);
					return;
				}
			}
		}
%>

</body>
</html>