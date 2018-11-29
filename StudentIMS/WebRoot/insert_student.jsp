
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/admin_student.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<style>
body{background: #FFFFFF;font-family: "微软雅黑";}
#sector{height: 200px;padding: 30px 0 50px 0;}
form{margin-left: 280px;}
input{margin-left:330px;}
#box3 p{display: block;font-style: normal;
color: #4E4C4C;
font-size: 30px;}
#box3 p a{display: block;font-style: normal;color: #4E4C4C;font-size: 20px;font-weight: 200;}
#box3 p a:hover{font-weight: 500;color: #F05B5B;}
</style>
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
		ResultSet rs = statement.executeQuery("select * from 学生表");
	%>
	
	<div id="box3">
		<p>湖北汽车工业学院学生信息管理系统</p>
	</div>
	<form name="form4" action='execuse_student.do?' method="post"class="nav">
		<table>
			<tr><th>学号</th><th>姓名</th><th>年级</th><th>性别</th><th>电话</th><th>家庭住址</th><th>政治面貌</th></tr>
			<tr><td name="studentID"></td><td name="student_name"></td><td name="student_grade"></td><td name="student_sex"></td><td name="student_cod"></td><td name="tudent_adress"></td><td name="student_state"></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		</table>
		<p>
			<input type="submit" name="sub" value="提交" id="btn"class="input-btn">
		</p>
	</form>
	<!--<div id="sector">
		<form name="form4" action='execuse_student.do?' method="post"class="nav">
			<p>
				<input type="text" name="studentID" id="studentID"class="input-text"placeholder="学号">
			</p>
			<p>
				<input type="text" name="student_name" id="student_name"class="input-text"placeholder="姓名">
			</p>
			<p>
				<input type="submit" name="sub" value="查询" id="btn"class="input-btn">
			</p>
		</form>
</div>-->
</body>
</html>
