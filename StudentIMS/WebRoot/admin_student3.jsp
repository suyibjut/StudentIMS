
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/admin_student.css">
<style>
	body{background:#FFFFFF ;font-family: "微软雅黑";}
	p{font-style: normal;color: #4E4C4C;font-size: 30px;}
</style>
</head>
<body>
	<div id="headerbox"><img src="img/xiaobiao.png"/></div>
		</header>
		<div class="nav-box">
				<div class="nav">
					<ul>
						<li id="heaoo">
							<a href="index.jsp" class="active">网站首页</a>
						</li>
						<li>
							<a href="admin_student.jsp">学生信息</a>
						</li>
						<li>
							<a href="admin_class.jsp">本周课程</a>
						</li>
						
						<li>
							<a href="admin_grade.jsp">成绩管理</a>
						</li>
						<li>
							<a href="http://eas.huat.edu.cn/Select/SelectCourse.aspx">课程管理</a>
						</li>
						<li>
							<a href="kecheng.jsp">课程信息</a>
						</li>
						<li>
							<a href="insert_liuyan.jsp">反馈留言</a>
						</li>
						<li id="headee">
							<a href="login.jsp">退出登陆</a>
						</li>
					</ul>
				</div>
			</div>
	<%
	try {
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		String id = request.getParameter("studentID");
		String name = request.getParameter("student_name"); 
		/* System.out.printf(id,name); */
		//List<teacher> list = new ArrayList<teacher>();
		 ResultSet rs = statement.executeQuery("select * from 学生表 "); 
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
			System.out.println(rs.getString(1)); 
	%>
	<br>
	<br>
	<p>湖北汽车工业学院学生信息管理系统</p>

	<table align="center">
		<tr>
			<th>学生号</th>
			<th>姓名</th>
			<th>年级</th>
			<th>性别</th>
			<th>联系方式</th>
			<th>家庭地址</th>
			<th>政治面貌</th>
		</tr>
		 <%-- <%
			if(rs.next()) {
		%> 
		<tr>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(7));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(8));
				%>
			</td>
		</tr>
		<% }%> --%>
	</table>
	
</body>
</html>
