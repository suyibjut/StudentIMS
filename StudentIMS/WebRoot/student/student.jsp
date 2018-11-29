
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<style type="text/css">
		body{
			margin:0;
			padding:0;
			background:#84FBBE;
			}
		p{
			font-family: "微软雅黑","宋体";
			font-size:18px;
			color: #48A4EC;
			text-align:center;
			}
		table {
			border: 2px #CFD728 solid;
			width: 780px;
			background:#1D8862;
		}
		
		td, th {
			height: 30px;
			border-right: #CFD728 1px solid;
			border-bottom: #CFD728 1px solid;
			text-align:center;
			font-family: "微软雅黑","宋体";
			color: #fff;
		}
		a{
			font-family: "微软雅黑";
			color: #fff;
		}
	</style>
</head>

<body>
	<%
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select * from 学生表");
	%>
	<br>
	<br>
	<p>某某公司教务信息管理系统</p>
	<table align="center">
		<tr>
			<th>
			<a href='insert.jsp?' >新增学生信息</a></th> 
		</tr>
	</table>
	
	<table align="center">
		<tr>
			<th>学生号</th>
			<th>姓名</th>
			<th>年级</th>
			<th>性别</th>
			<th>联系方式</th>
		</tr>
    <%
while(rs.next())
	{
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
