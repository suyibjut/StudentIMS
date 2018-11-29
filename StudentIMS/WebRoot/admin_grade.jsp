<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/admin_student.css">
	<%--   <base href="<%=basePath%>"> --%>

<title>成绩查询</title>
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
							<a href="admin_student2.jsp">学生信息</a>
						</li>
						<li>
							<a href="admin_class.jsp">本周课程</a>
						</li>
						
						<li>
							<a href="http://eas.huat.edu.cn/Select/SelectCourse.aspx">成绩管理</a>
						</li>
						<li>
							<a href="http://www.huat.edu.cn/">课程管理</a>
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
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select * from 成绩表");
	%>
	<br>
	<br>
	<table align="center">
		<tr>
			<th><a href='insert_Grade.jsp?'>信息141班2016-2017第二学期学生成绩表</a></th>
		</tr>
	</table>

	<table align="center">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>数据库技术</th>
			<th>J2EE编程技术</th>
			<th>马克思主义基本原理</th>
			<th>微积分</th>
			<th>微观经济学</th>
			<th>信息资源管理概论</th>
			<th>专业英语</th>
		</tr>
		<%
			while (rs.next()) {
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
					out.print(rs.getString(6));
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
			<td>
				<%
					out.print(rs.getString(9));
				%>
			</td>
		</tr>
		<%
			}
		%>

	</table>
	<div align="center">
		<br> <br> <br>

	</div>
</body>
</html>
