<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Keywords" content="关键词">
<meta name="Description" content="描素">
<title>反馈留言</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background: url('images/bg.jpg') no-repeat fixed;
	background-size: cover;
}

.text-main {
	width: 600px;
	background: #fff;
	margin: 100px auto 0;
	border-radius: 5px;
	padding: 10px 20px;
}

.text-main .title {
	color: #666;
	font-size: 12px;
	line-height: 30px;
	font-family: "微软雅黑";
}

.text-main .text {
	width: 598px;
	height: 80px;
	border: 1px solid #ddd;
	margin: 10px 0;
}

.text-main .btn-box {
	position: relative;
}

.text-main .btn-box a {
	float: right;
	padding: 5px 10px;
	background: #ff9966;
	color: #fff;
	border-radius: 5px;
	text-decoration: none;
}

.text-main .btn-box ul {
	width: 390px;
	height: 175px;
	background: #fff;
	border: 1px solid #666;
	padding: 5px;
	position: absolute;
	left: 20px;
	top: 20px;
	display: none;
}

.text-main .btn-box ul li {
	float: left;
	list-style: none;
	margin: 2px;
}

.main {
	width: 640px;
	margin: 0 auto;
}

.main .con {
	width: 600px;
	background: #fff;
	padding: 0 20px;
	margin-top: 10px;
}

.main .con .top {
	width: 600px;
	border-bottom: 1px solid #ddd;
	padding: 10px 0;
}

.main .con .top img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}

.main .con  .content {
	color: #666;
	font-size: 12px;
	line-height: 30px;
}

#list {
	/* border:1px solid red; */
	text-align: "center";
	font-family: "华文行楷","微软雅黑";
	font-size: 25px;
	color: #FBFDFD;
	line-height:25px; 
	margin: 180px auto;
	width:"650px" ;
	text-decoration:none;
	
}
#list th{width:300px;height:50px;color:#DFC9B2;}
#list td{text-align:center;text-decoration:none;}
</style>
</head>
<body>
	<div class="text-main">
		<div class="title">有什么想与大家分享的</div>
		<div class="text" contenteditable='true'></div>
		<div class="btn-box">
			<img id="f-btn" src="images/bba_thumb.gif" width="" height="" alt="" />
			<a id="btn" href="insert_liuyan.jsp">发表</a>
		</div>
	</div>
	<%
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select * from 留言表");
	%>

			<table id="list" align="center" >
				<tr>
					<th>用户名</th>
					<th>留言</th>
					<th>删除</th>
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
						<a href='delete_liuyan.do?stu_name=<%out.print(rs.getString(1));%>'><img alt="" src="img/del.png" title="删除"></a>
					</td>
				</tr>
				<%
					}
				%>
		
			</table>
		</body>
</html>
