<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<% 	
	session.removeAttribute("shangJiaID");
	session.removeAttribute("shangjiaName");
	session.removeAttribute("userId");
    session.removeAttribute("uname");
	response.sendRedirect("home.jsp");
%>
<%-- <jsp:forward page="home.jsp"></jsp:forward> --%>
