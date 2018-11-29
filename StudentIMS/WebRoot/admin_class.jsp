<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/admin_student.css">
</head>
<body>
	<div id="headerbox"><img src="img/xiaobiao.png"/></div>
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
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select * from 课程表");
		while (rs.next()) {
	%>
	<p class="data">信息141班2016-2017第二学期课程表</p>
	<table id="table1">
		<tr>
			<th>时间</th>
			<th>周一</th>
			<th>周二</th>
			<th>周三</th>
			<th>周四</th>
			<th>周五</th>
		</tr>
		<tr>
			<td><br>第一节<br>（上午8:10-9:45）<br><br>
			</td>
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

		</tr>
		<tr>
			<td><br>第二节<br>（上午10:05-11:40）<br><br>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
		</tr>
		<tr>
			<td><br>第三节<br>（下午2:30-5:05）<br><br>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
		</tr>
		<tr>
			<td><br>第四节<br>（晚上6:40-8:15）<br><br>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
		</tr>
		<tr>
			<td><br>第五节<br>（晚上7:50-8:30）<br><br>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
		</tr>
	</table>
	<p class="data">周末自习课安排</p>
	<table id="table2">
		<tr>
			<td></td>
			<td><br>上午9:30-11:30<br><br></td>
			<td><br>下午3:00-6:00<br><br></td>
		</tr>
		<tr>
			<td><br><br>星期六<br><br></td>
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
		</tr>
		<tr>
			<td><br><br>星期天<br><br></td>
			<td>
				<%
					out.print(rs.getString(7));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(6));
				%>
			</td>
		</tr>
	</table>
</body>
<%
	}
%>
</html>

