<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
	<meta charset="UTF-8">
<title>登陆</title>
<link rel="stylesheet" type="text/css" href="css/login.css">

<body>
	<div id="sector">
		<form action="Login.do?" method="post" name="form1"
			onsubmit="return check()" class="nav">
			<h3>用户登录</h3>
			
			<p>
				<input class="input-text" type="text" name="userID" placeholder="用户名">
			</p>
			<p>
				<input class="input-text input-pwd" type="password"
					name="userPassword" placeholder="密码" required>
			</p>
			<p>
				<input class="input-btn" type="submit" value="登陆" name="submit">
			</p>
	
			<h6>
				<a href="login_wangji.jsp" class="btn">忘记密码 </a><a href="login_design.jsp" class="btn">免费注册</a>
			</h6>
		</form>
		<%
		session.setAttribute("name", "login");
	%>
	</div>
</html>
<script type="text/javascript">
	function check(){
		if(form1.userName.value==""||form1.userPassworrd==""){
		alert("用户名或密码不允许为空！")
		form1.userName.focus();
		return false;
		}
	return true
	}
</script>
