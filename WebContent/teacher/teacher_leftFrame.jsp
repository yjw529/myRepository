<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/teacher/teacher_leftFrame.css" rel="stylesheet" type="text/css" />
</head>
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
	<script src="../js/teacher_leftFrame.js"></script>
<body>
	<div class="wrap">
        	<div class="header">教师登录</div>
        	<div class="nav">
           		<ul>
            		<li class="list">
                    	<h2><i></i>首页</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('a_mainpage')">功能说明</h5>
                    	</div>
                	</li>
                	<li class="list">
                    	<h2><i></i>考前操作</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('a_editexam')">编辑考试</h5>                        
                    	</div>
                	</li>
                	<li class="list">
                  	  	<h2><i></i>考中管理</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('a_examinfo')">考试概况</h5>
                        	<h5 onclick="mainpage('a_managestudent')">学生信息</h5>
                        	<!-- <h5 onclick="mainpage('a_managebind')">解除锁定</h5> -->
                       	 	<h5 onclick="mainpage('a_managenotify')">通知管理</h5>                     
                   		</div>
                	</li>
                	<li class="list">
                    	<h2><i></i>考后操作</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('a_exammanager')">考试管理</h5>
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