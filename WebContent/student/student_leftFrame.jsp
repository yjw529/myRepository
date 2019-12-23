<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/student_leftFrame.css" rel="stylesheet" type="text/css" />
	</head>
	
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
	<script src="../js/student_leftFrame.js"></script>
	
	<body>
		
		<div class="wrap">
        	<div class="header">学生登录</div>
        	<div class="nav">
           		<ul>
            		<li class="list">
                    	<h2 onclick="mainpage('a_mainpage')"><i></i>首页</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('a_mainpage')"><i></i>提交试卷</h5>
                    	</div>
                	</li>
                	<li class="list">
                    	<h2 onclick="mainpage('a_looksubmit')"><i></i>查看提交</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('a_looksubmit')"><i></i>查看提交</h5>
                    	</div>
                	</li>
                	<li class="list">
                    	<h2><i></i>账号管理</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('a_modifypwd')">更改密码</h5>
                        	<h5 onclick="mainpage('a_exit')">退出登录</h5>                    
                    	</div>
                	</li>
            	</ul>
        	</div>
    	</div>
	</body>
</html>