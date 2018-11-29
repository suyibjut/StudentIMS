<%@ page contentType="text/html;charset=utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
<%-- <base href="<%=basePath%>"> --%>

<title>课程</title>
<link rel="stylesheet" type="text/css" href="css/tuo.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<style>
body{font-family: 微软雅黑}
table{
	width: 1500px;height: 300px;
	margin: 20px auto;
}
th{font-size: 20px;font-weight: 400;border-bottom: 1px solid #252525;color: #414040;text-align: center;line-height: 22px;}
td{font-size: 18px;font-weight: 200px;border-bottom: 1px solid #252525;color: #414040;text-align: center;line-height: 22px;}
td:hover{line-height: 26px;color: #F41C2D;font-weight: 500;}
th:hover{line-height: 26px;color: #F41C2D;font-weight: 500;}
#footer{margin-top: 450px;}
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
							<a href="http://eas.huat.edu.cn/Select/SelectCourse.aspx">课程信息</a>
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
			<table>
				<tr><th>事项</th><th>数据库技术</th><th>J2EE编程技术</th><th>马克思主义基本原理</th><th>微积分</th><th>微观经济学</th><th>信息资源管理概论</th><th>专业英语</th></tr>
				<tr><td>学分</td><td>4</td><td>4</td><td>3</td><td>3</td><td>2.5</td><td>2.5</td><td>2.5</td></tr>
				<tr><td>学时</td><td>36</td><td>30</td><td>36</td><td>25</td><td>25</td><td>25</td><td>25</td></tr>
				<tr><td>任课教师</td><td>李欣</td><td>薛昌春</td><td>习近平</td><td>彭晓珍</td><td>王红</td><td>程曾平</td><td>吴晓晖</td></tr>
				<tr><td>考核方式</td><td>考核</td><td>考试</td><td>考试</td><td>考试</td><td>考试</td><td>考核</td><td>考察</td></tr>
				<tr><td>上课时间</td><td>201602</td><td>201602</td><td>201601</td><td>201601</td><td>201502</td><td>201502</td><td>201701</td></tr>
			</table>
	<div id="box1">
		<div id="box2">
			<a href="http://wpa.qq.com/msgrd?v=3&uin=64802353&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息   src="img/qq.png"></a> 
			<a href="http://wpa.qq.com/msgrd?v=3&uin=1079220655&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息   src="img/qq.png"></a> 
			<a href="http://wpa.qq.com/msgrd?v=3&uin=3352067377&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息   src="img/qq.png"></a>
			<a href="http://wpa.qq.com/msgrd?v=3&uin=3352067377&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息   src="img/qq.png"></a> 
			<a href="http://wpa.qq.com/msgrd?v=3&uin=3352067377&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息    src="img/qq.png"></a>
		</div>
		<img src="img/erwima.png" id="tuo">
	</div>
	
	<div id="footer">
		版权所有&nbsp;&nbsp;苏毅&nbsp;&nbsp;|&nbsp;&nbsp;地址：十堰市车城西路167号&nbsp;&nbsp;|&nbsp;&nbsp;邮箱：suyiChina@162.com
	</div>
</body>
</html>
