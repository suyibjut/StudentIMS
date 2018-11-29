<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
		<style>
		body{font-family: "微软雅黑";}
		form{width: 435px;height: 445px; margin: 50px auto;}
		#sector{width:620px;height: 500px;}
			p{margin:0px 15px 0px 15px;color: #FFFFFF;}
			.input-text {background: none;}
			#tijiao{margin:20px auto ;}
		</style>
	</head>

	<body>
		<div id="headerbox"><img src="img/xiaobiao.png" /></div>
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
		<div id="sector">
			<form name="form1" action='insert_Grade.do?' method="post">
				<p><input type="text" name="stuID"class="input-text" placeholder="学号"></p>
				<p><input type="text" name="stu_name"class="input-text" placeholder="姓名"></p>
				<p><input type="text" name="stu_Chinese"class="input-text" placeholder="数据库技术"></p>
				<p><input type="text" name="stu_math"class="input-text" placeholder="J2EE编程技术"></p>
				<p><input type="text" name="stu_English"class="input-text" placeholder="马克思主义基本原理"></p>
				<p><input type="text" name="stu_zonghe"class="input-text" placeholder="微积分"></p>
				<p><input type="text" name="stu_jingji"class="input-text" placeholder="微观经济学"></p>
				<p><input type="text" name="stu_xinxi"class="input-text" placeholder="信息资源管理概论"></p>
				<p><input type="text" name="stu_zy"class="input-text" placeholder="专业英语"></p>
				<p><input type="submit" name="sub" value="提交" id="tijiao"class="input-btn" placeholder="账号"></p>
			</form>
		</div>
	</body>

</html>