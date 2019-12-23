<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/teacher/teacher_main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="mainbody">
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<div class="content1">
			<div class="contenttitel"><h2>教师管理</h2></div>
			<br/>
			<br/>
			<ul class="contentul">
				<li>可以对教师用户进行增删改查操作，并可以指定特定教师作为系统管理员</li>
				<li>注：
					<ul>
						<li>管理员可以有多个</li>
						<li>如果没有任何一个教师具有管理员身份，则默认管理员登录信息有效</li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="content1">
			<div class="contenttitel"><h2>试卷清理</h2></div>
			<br/>
			<br/>
			<ul class="contentul">
				<li>可以清除考试的相关数据</li>
				<li>注：
					<ul>
						<li>只有在主考教师已经包下载学生提交文件后才可以进行</li>
						<li>清理后的考试可以删除</li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="content1">
    		<div class="contenttitel"><h2>系统配置</h2></div>
			<br/>
			<br/>
			<ul class="contentul">
				<li>可以设置一些全局性的系统选项，包括后台任务的时间周期，分页查询时的每页记录数，手动开启考试的时间阈值，学生上传文件字数的有限范围等</li>
			</ul>
    	</div>    	
	</div>
</body>
</html>