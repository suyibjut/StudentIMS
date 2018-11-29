<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/error.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
</head>

<body>
	<div id="sector">
		<h3>用户注册</h3>
		<form name="form2" action='login_design.do?' method="post">
			<p>
				<input type="text" name="des_num" placeholder="账号" input class="input-text">
			</p>
			<p>
				<input type="text" name="des_name"placeholder="用户名" input class="input-text">
			</p>
			<p>
				<input type="text" name="des_password" placeholder="密码"class="input-text input-pwd">
			</p>
			<p>
				<input type="submit" name="sub" value="提交" id="btn"class="input-btn">
			</p>
		</form>
	</div>
</body>
</html>
