<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
  	 <link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet" type="text/css" href="css/admin_student.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
    <style type="text/css">
    #sector{}
    #sector form{width: 430px;height: 270px;margin: 30px auto;}
	</style> 
</head>
  
  <body>
  
    <%
     String id1 = request.getParameter("studentID");
     String sql = "Select * From 学生表 Where StedentID = '" + id1 + "'";
     String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
			Connection con = DriverManager.getConnection(url, "sa", "123456");
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next())
			{
     %>
     <div id="sector" >
		   <form name="form1" action='update.do?studentid=<%=id1%>' method="post"  >
			    <input type="text" name="studentID" id="studentID" value='<%=rs.getString(1)%>' class="input-text"placeholder="学号">
			    <input type="text" name="student_name" id="student_name" value='<%=rs.getString(2)%>' class="input-text"placeholder="姓名">
			    <input type="text" name="student_grade" id="student_grade" value='<%=rs.getString(3)%>' class="input-text"placeholder="年级">
			    <input type="text" name="student_sex" id="student_sex" value='<%=rs.getString(4)%>' class="input-text"placeholder="性别">
			    <input type="text" name="student_num" id="student_num" value='<%=rs.getString(5)%>'class="input-text"placeholder="电话">
			    <input type="text" name="student_password" id="student_password" value='<%=rs.getString(7)%>'class="input-text input-pwd"placeholder="地址">
	        <input type="submit" name="submit" value="确认修改"class="input-btn">
			 </form>  
			<div>
     <% } %>
     
  </body>
</html>
