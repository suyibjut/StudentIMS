<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
     <title>����ѡ��ϵͳ</title>
</head>
<body>
 <%
   //session.removeAttribute("name");
   session.invalidate();
   response.sendRedirect("login.jsp");
 %>
</body>
</html>
