<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/index.css">
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background: url('img/back1.jpg') no-repeat fixed;
	background-size:100% 100%;
	background-size: cover;
}



.text-main {
	width: 660px;height:165px;
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
/* 	border: 1px solid #ddd; */
	margin: 10px 0;
}

.text-main .btn-box {
	position: relative;
}

#btn {
clear:both;
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
	color:#444;
	font-weight:400;
	line-height:25px; 
	margin: 120px auto;
	width:"650px" ;
	text-decoration:none;
	line-height:30px;
	background: #FFFFFF;
	filter: alpha(opacity=50);
	/* ie 有效*/
	-moz-opacity: 0.7;
	/* Firefox  有效*/
	opacity: 0.7;
	
}
#list th{width:300px;height:50px;}
#list td{text-align:center;text-decoration:none;}

#iput1 {width:600px;height:50px;border-radius: 5px;}
#iput2 {width:120px;height:25px;border-radius: 5px;}
#ipbox{float:right;font-family:"楷体";font-size:16px;color:#666666;}
</style>
</head>
<body>
<div class="nav-box1">
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
</div>
	<form class="text-main" name="form1" action='insert_liuyan.do?'method="post" >
		<div class="title">有什么想与大家分享的请在这里留言哦！</div>
		<div class="text">
		<input type="text" name="stu_liuyan" id="iput1">
		<div id="ipbox">
		昵称：<input type="text" name="stu_name" id="iput2"><br> <br>
		</div>
		</div>
		<div class="btn-box">
			<img id="f-btn" src="images/bba_thumb.gif" width="" height="" alt="" />
			<input type="submit" name="sub" value="发表" id="btn">
		</div>
		
	</form>
	<%
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select * from 留言表");
	%>

			<table id="list" align="center" id="list">
				<tr>
					<th>用户名</th>
					<th>留言</th>
					<th>操作</th>
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
