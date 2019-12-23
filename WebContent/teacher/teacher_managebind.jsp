<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			height: 100px;
			padding-top:5px;
			margin-left: 400px;
			background: bisque;
			border-radius: 15px;
		}
		.bindinfo{
			width: 300px;
			height: 70px;
			margin-left: 50px;
			text-alien:center;
		}
	</style>
	<body>
		<div id="mainbody">
			<div class="row-fluid">
				<div class="bindinfo">				
					<h4>已登录学生数量：</h4>
					<p>
						
					</p>
				</div>
			</div>
			<div class="row-fluid">
				<div class="bindinfo">
					
					<h4 >已提交学生数量：</h4>
					<p>
						
					</p>
				</div>
			</div>
			<div class="row-fluid">
				<div class="bindinfo">
					
					<h4>已登录未提交学生数量：</h4>
					<p>
						
					</p>
				</div>
			</div>
			<div class="row-fluid">
				<div class="bindinfo">
					
					<h4>未登录学生数量：</h4>
					<p>
						
					</p>
				</div>
			</div>
		</div>
	</body>
</html>