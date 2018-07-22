<%@page import="automusic.music"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.Window"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mybeanDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="Random_Number_Package.*"%>
<%@page import="thread.*"%>
<%@page import="java.util.concurrent.Callable"%>
 <%@page import="Tishikuang.*"%>
  <%@page import="java.io.File"%>
<%

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	int i = 100000;
	ArrayList<String> old_orderIDs = new ArrayList<String>();
	while ((i--) != 0) {
		if (i == 2)
			i = 100000;
		
		if (session.getAttribute("shangJiaID") != null) {
			String shangJiaID = (String) session.getAttribute("shangJiaID");
			//System.out.println(shangJiaID);
			
			SubmitTherad submit = new SubmitTherad();
			Thread.sleep(10000);
			ArrayList<String> orderIDs = submit.submitThread(shangJiaID, 1);
	
			if (orderIDs != null || orderIDs.isEmpty()) {
				for (String orderID : orderIDs) {
					//System.out.println(orderID);
					int index = old_orderIDs.indexOf(orderID);
					if (index == -1 || old_orderIDs.isEmpty() || old_orderIDs==null) {
						File music = new File("E:/aa.mp3");
						AudioPlayer player = new AudioPlayer(music);
						BirthTip aa = new BirthTip("您有新订单，请及时处理！");
						player.play();//语音提醒									
					}
				}
				old_orderIDs = (ArrayList<String>)orderIDs.clone();
			}

		} else {
			//System.out.println("aaaaa");
			Thread.interrupted();
			break;
			
		}
	}
%>
<body onload='setTimeout("mm()",0)' >			
	<script>
	function mm() {
	window.opener=null;
	window.close();
	}
	
	</script>
</body>
</html>