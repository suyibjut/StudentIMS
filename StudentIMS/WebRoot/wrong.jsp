<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*"%>
<html>
<head>
     <title>网上选课系统</title>
</head>
<body>
<% 
      out.println("<h2>密码错误，请重新登录</h2>");
      out.println("<h2>2秒钟后,自动跳转到登录页面!</h2>");
      response.setHeader("refresh","2;URL=admin.jsp");
%>

</body>
</html>