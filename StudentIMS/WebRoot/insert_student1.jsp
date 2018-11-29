<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
		<link rel="stylesheet" type="text/css" href="css/admin_student.css">
		<style type="text/css">
			.input-text1 {
				background: #B12424;
				width: 100%;
				height: 100%;
				border: none;
				text-align: center;
				font-size: 18px;
				color: #FFF;
				line-height: 36px;
				border-radius: 5px;
			}
			
			.input-btn {
				display: block;
				width: 430px;
				height: 40px;
				border: 0;
				background: #C54746;
				color: #fff;
				font-family: "微软雅黑", "宋体";
				font-size: 16px;
				font-weight: bold;
				letter-spacing: 5px;
				border-radius: 5px;
				margin: 80px auto;
			}
			
			.input-btn:hover {
				background: #085BC3;
				cursor: pointer;
			}
		</style>
		</style>
		</style>
	</head>

	<body>
		<br /><br /><br /><br /><br /><br />
		<form name="form4" action="insert.do?" method="post">
			<table>
				<tr>
					<th>
						<div>学号</div>
					</th>
					<th>
						<div>姓名</div>
					</th>
					<th>
						<div>年级</div>
					</th>
					<th>
						<div>性别</div>
					</th>
					<th>
						<div>联系电话</div>
					</th>
					<th>
						<div>家庭地址</div>
					</th>
					<th>
						<div>政治面貌</div>
					</th>
				</tr>
				<tr>
					<td><input type="text" name="studentID" class="input-text1"></td>
					<td><input type="text" name="student_name" class="input-text1"></td>
					<td><input type="text" name="student_grade" class="input-text1"></td>
					<td><input type="text" name="student_sex" class="input-text1"></td>
					<td><input type="text" name="student_num" class="input-text1"></td>
					<td><input type="text" name="student_adress" class="input-text1"></td>
					<td><input type="text" name="student_state" class="input-text1"></td>
				</tr>
			</table>
			<input type="submit" name="sub" value="提交" class="input-btn">
		</form>
	</body>

</html>