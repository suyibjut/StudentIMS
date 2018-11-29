<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
  	<link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
		<link rel="stylesheet" type="text/css" href="css/admin_student.css">
    <style type="text/css">
    	.input-text1{background: #B12424;width: 100%;height:100%; border: none;text-align: center;font-size:18px ;color:#FFF;line-height:36px;border-radius: 5px;}
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
			   <br /><br /><br /><br /><br />
			   <form name="form1" action='update.do?studentid=<%=id1%>' method="post"  >
				   <table>
				   	<tr>
				   			<th><div>学号</div></th><th><div>姓名</div></th><th><div>年级</div></th><th><div>性别</div></th><th><div>联系电话</div></th><th><div>家庭地址</div></th><th><div>政治面貌</div></th>
				    </tr>
				    <tr>
				    	<td><input type="text" value='<%=rs.getString(1)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(2)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(3)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(4)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(5)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(7)%>' class="input-text1"></td>
				    	<td><input type="text" value='<%=rs.getString(8)%>' class="input-text1"></td>
				    </tr>
					</table>
				</form>
     <% } %>
     
  </body>
</html>
