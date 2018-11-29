
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="Keywords" content="关键词,关键词">
		<meta name="Description" content="描述">
		<title>网页的标题</title>
		<link rel="stylesheet" type="text/css" href="mingshi.css">
		<link rel="stylesheet" type="text/css" href="yand.css">
		<link rel="stylesheet" type="text/css" href="tuo.css">
		<style>
		.table1{background:#1D8862;border-radius: 5px;position: relative;top:-620px;left:415px;font-family:"微软雅黑";font-size:16px;text-align:center;color:#E8E6E9;}
		.table1 tr:hover {background: #5C307D;width:60px;height:40px; }
		</style>
		<script>
			window.onload=function(){
				var btn=document.getElementById("btn");
				var imgs=document.querySelectorAll("img");
				var on=true;
				
				btn.onclick=function(){
					if(!on){
						return;
					}
					on=false;
					
					var endNum=0;	
					var allEnd=0;
					for(var i=0;i<imgs.length;i++){
						(function(i){
							setTimeout(function(){
								montion(imgs[i],'10ms',function(){
									this.style.transform='scale(0)';
								},function(){
									
									montion(this,'1s',function(){
										this.style.transform='scale(1)';
										this.style.opacity=0;
									},function(){
										endNum++;
								//		
										if(endNum==imgs.length){
											toBig();
										}
									});
								});
							},Math.random()*1000);
						})(i)
					}
				
					function toBig(){
						
						for(var i=0;i<imgs.length;i++){
							imgs[i].style.transition='';
							imgs[i].style.transform='rotateY(0deg) translateZ(-'+Math.random()*500+'px)';
						(function(i){
							setTimeout(function(){
								montion(imgs[i],'2s',function(){
									this.style.opacity=1
									this.style.transform='rotateY(-360deg) translateZ(0)';
								},function(){
									allEnd++;
									if(allEnd==imgs.length){
										on=true;
									}
								})
							},Math.random()*1000)
							})(i);
						}
					};
				};
				
				function montion(obj,time,doFn,callBack){
					obj.style.transition=time;
					doFn.call(obj);
					
					var called=false;
					
					obj.addEventListener('transitionend',function(){
						if(!called){
							callBack&&callBack.call(obj);
							called=true;
						}
					},false)
				}
			};
		</script>
	</head>
	<body>
		<div class="header">
		<div class="nav-box">
		<div class="nav">
			<ul>
				<li><a href="welcome.jsp" class="active">首页</a></li>
				<li><a href="admin_student.jsp">我的信息</a></li>
				<li><a href="admin_class.jsp">本周课程</a></li>
				<li><a href="mingshi.jsp">名师风采</a></li>
				<li><a href="admin_grade.jsp">成绩查询</a></li>
				<li><a href="http://www.huat.edu.cn/">选课系统</a></li>
				<li><a href="kecheng.jsp">课程信息</a></li>
				<li><a href="insert_liuyan.jsp">反馈留言</a></li>
				<li><a href="login.jsp">退出登陆</a></li>
			</ul>
		</div>
	</div>
		<div id="imgWrap">
			<img src="img/35.jpg" style="width: 80px; height: 80px;">
			<img src="img/2.jpg" alt="" />
			<img src="img/3.jpg" alt="" />
			<img src="img/4.jpg" alt="" />
			<img src="img/5.jpg" alt="" />
			<img src="img/6.jpg" alt="" />
			<img src="img/7.jpg" alt="" />
			<img src="img/8.jpg" alt="" />
			<img src="img/9.jpg" alt="" />
			<img src="img/10.jpg" alt="" />
			<img src="img/11.jpg" alt="" />
			<img src="img/12.jpg" alt="" />
			<img src="img/13.jpg" alt="" />
			<img src="img/14.jpg" alt="" />
			<img src="img/15.jpg" alt="" />
			<img src="img/16.jpg" alt="" />
			<img src="img/17.jpg" alt="" />
			<img src="img/18.jpg" alt="" />
			<img src="img/19.jpg" alt="" />
			<img src="img/20.jpg" alt="" />
			<img src="img/21.jpg" alt="" /> 
			<img src="img/22.jpg" alt="" />
			<img src="img/23.jpg" alt="" />
			<img src="img/24.jpg" alt="" />
			<img src="img/25.jpg" alt="" />
			<img src="img/26.jpg" alt="" />
			<img src="img/27.jpg" alt="" />
			<img src="img/28.jpg" alt="" />
			<img src="img/29.jpg" alt="" />
			<img src="img/30.jpg" alt="" />
			<img src="img/31.jpg" alt="" />
			<img src="img/32.jpg" alt="" />
			<img src="img/33.jpg" alt="" />
			<img src="img/34.jpg" alt="" />
			<img src="img/35.jpg" alt="" />
			<img src="img/1.jpg" alt="" />
			<img src="img/2.jpg" alt="" />
			<img src="img/3.jpg" alt="" />
			<img src="img/4.jpg" alt="" />
			<img src="img/5.jpg" alt="" />
			<img src="img/6.jpg" alt="" />
			<img src="img/7.jpg" alt="" />
			<img src="img/8.jpg" alt="" />
			<img src="img/9.jpg" alt="" />
			<img src="img/10.jpg" alt="" />
			<img src="img/11.jpg" alt="" />
			<img src="img/12.jpg" alt="" />
			<img src="img/13.jpg" alt="" />
			<img src="img/14.jpg" alt="" />
			<img src="img/15.jpg" alt="" />
			</div>
			<div id="btn">
				点击查看效果
			</div>
			<%
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		Class.forName(driveName);
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
		Connection con = DriverManager.getConnection(url, "sa", "123456");
		Statement statement = con.createStatement();
		//List<teacher> list = new ArrayList<teacher>();
		ResultSet rs = statement.executeQuery("select TeacherName,TeacherSex,TeacherCourse from 教师表");
	%>
	<br>
	<br>

	<table align="center" border="0"; class="table1">
	<tr>
			<th colspan="3"><a href='insert_teacher.jsp?'>新增教师信息</a></th>
		</tr>
		<tr>
			<th>姓名</th>
			<th>性别</th>
			<th>科目</th>
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
				<%
					out.print(rs.getString(3));
				%>
			</td>

			
		</tr>
		<%
			}
		%>

	</table>
		<div id="box1">
		<div id="box2">
			<a href="http://wpa.qq.com/msgrd?v=3&uin=3352067377&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
			<img title=点击这里给我发消息 border=0 alt=点击这里给我发消息   src="img/qq.png"></a> 
			<a href="http://wpa.qq.com/msgrd?v=3&uin=3352067377&Site=%E5%AD%A6%E6%97%A0%E5%A2%83&Menu=yes">
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
		</body>
</html>
