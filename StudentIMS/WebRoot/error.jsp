<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*"%>
<html>
<head>
	 <meta charset="UTF-8">
     <title>����ѡ��ϵͳ</title>
			<link rel="stylesheet" type="text/css" href="css/error.css">
</head>
<body>
	<div id="mainbox">
		<% 
		      out.println("<h2>������������µ�¼</h2>");
		      out.println("<h2>2���Ӻ�,�Զ���ת����¼ҳ��!</h2>");
		      response.setHeader("refresh","2;URL=login.jsp");
		%>
	</div>
</body>
</html>