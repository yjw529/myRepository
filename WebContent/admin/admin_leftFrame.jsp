<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/admin/admin_leftFrame.css" rel="stylesheet" type="text/css" />
</head>
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
	<script src="../js/admin_leftFrame.js"></script>
<body>
	<div class="wrap">
        	<div class="header">管理员登录</div>
        	<div class="nav">
           		<ul>
            		<li class="list">
                    	<h2><i></i>首页</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('m_mainpage')">功能说明</h5>
                    	</div>
                	</li>
                	<li class="list">
                    	<h2><i></i>教师管理</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('m_manageteacher')">管理教师</h5>    
                        	<h5 onclick="mainpage('m_addteacher')">添加教师</h5>                       
                    	</div>
                	</li>
                	<li class="list">
                  	  	<h2><i></i>考试清理</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('m_clearexam')">考试清理</h5>                    
                   		</div>
                	</li>
                	<!-- <li class="list">
                    	<h2><i></i>系统配置</h2>
                    	<div class="hide">
                    		<h5 onclick="mainpage('m_system')">考试管理</h5>
                    	</div>
                	</li> -->
                	<li class="list">
                    	<h2><i></i>账号管理</h2>
                    	<div class="hide">
                        	<h5 onclick="mainpage('m_modifypwd')">更改密码</h5>
                        	<h5 onclick="mainpage('m_exit')">退出登录</h5>                       
                    	</div>
                	</li>
            	</ul>
        	</div>
    	</div>
</body>
</html>