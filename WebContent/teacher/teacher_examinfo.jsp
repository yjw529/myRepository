<%@page import="cn.listen.CountLineListener"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考试信息</title>
</head>
<style>
		#mainbody{
			float: left;
			width: 1200px;
			height: 100%;
		}
		.row-fluid{
			margin-top: 50px;
			width: 400px;
			height: 500px;
			margin-left: 400px;
			background: bisque;
			border-radius: 15px;
			padding-left: 30px;
			padding-top: 30px;
		}
	</style>
	<body>
		<div id="mainbody">
			<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
			<div class="row-fluid">
				<form action="/ExamSystem/myexaminfo" method="post">
					<h4 align="center"><strong><%=session.getAttribute("examname") %></strong></h4>
					<p>参加考试学生总数：<%=session.getAttribute("totalnum") %>  </p>
					<p>已登录学生数量： <%=session.getAttribute("loginnum")%></p>
					<p>未登录学生数量： <%=session.getAttribute("notloginnum") %></p>
					
					<p>已登录学生中</p>
					<p>提交文件学生数量：<%=session.getAttribute("upanswerNum") %> </p>
					<p>未提交文件学生数量： <%=session.getAttribute("notupanswerNum") %></p>
					
					<br>				
					<input type="submit" style="height: 40px;border-radius: 10px; background: darkgray;" value="查看考试情况"/>
				</form>
			</div>
		</div>
</body>
</html>