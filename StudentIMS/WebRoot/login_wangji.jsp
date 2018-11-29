<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/error.css">
		<link rel="stylesheet" type="text/css" href="css/login_wangji.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
	</head>

	<body>
		<div id="mainbox">
			<%
			String id1 = request.getParameter("studentID");
			%>
			<form name="form3" action='login_wangji.do?' method="post">
				<h3>忘记密码</h3>
				<p>
					<input type="text" name="studentID" id="studentID"class="input-text"placeholder="账号">
				</p>
				<p>
					<input type="text" name="student_name" id="student_name"class="input-text"placeholder="用户名">
				</p>
				<p>
					<input type="submit" name="submit" value="查看密码" class="input-btn">
				</p>
			</form>
		</div>
	</body>

</html>
