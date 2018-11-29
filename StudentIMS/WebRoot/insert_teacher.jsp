<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
body {
	margin: 30px auto;
	padding: 0;
	width:300px;
	height:320px;
	background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#F9FB2E), to(#fafafa));/*谷歌*/ 
}

form {
	background: #1D8862;
	height: 40%;
	border-right: #CFD728 1px solid;
	border-bottom: #CFD728 1px solid;
	text-align: center;
	font-family: "微软雅黑";
	font-size: 16px;
	color: #fff;
	width: 100%;
	height: 100%;
	padding: 60px ;
}

input {
	font-family: "微软雅黑";
	color: #0B0616;
	font-size: 16px;
}
#tijiao{background:#0897DB;border:1px solid #ccc;border-radius: 3px;color:#fff;cursor:pointer;}
</style>
</head>

<body>

	<form name="form5" action='insert_teacher.do?' method="post">
		<br> 姓名：<input type="text" name="stu_Name"><br>
		<br> 性别：<input type="text" name="stu_Sex"><br>
		<br> 科目：<input type="text" name="stu_Kemu"><br>
		<br> <input type="submit" name="sub" value="提交" id="tijiao">
	</form>
</body>
</html>
