<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
     <title>网上选课系统</title>
</head>
<body>
 <%
   //session.removeAttribute("name");
   session.invalidate();
   response.sendRedirect("login.jsp");
 %>
</body>
</html>
