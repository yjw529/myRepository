<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改教师账号</title>
<style type="text/css">
.rootPage {
	float: left;
	width: 1200px;
	height: 100%;
}

#infoEdit {
	margin-top: 50px;
	text-align: center;
	background: bisque;
	margin-left: 200px;
	width: 800px;
	height: 400px;
	border-radius:15px ;
	border: 1px solid black;
}
.infoInput{
	height: 30px;
	width: 200px;
	margin-top:30px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<%	
		String username=request.getParameter("username");
		String realname=request.getParameter("realname");
		String password=request.getParameter("password");		
	%>
	<div class="rootPage">
		<div id="infoEdit">
			<h4 style="margin-top:20px">编辑教师信息</h4>
			<form id="infoEditForm" action="/ExamSystem/myadmin_editTeacher?sqlname=<%=request.getParameter("username")%>" method="post">
				<div class="infoInputLine"><label>教师昵称：</label><input class="infoInput" type="text" name="username" value="<%=username %>"/></div>
				<div class="infoInputLine"><label>真实姓名：</label><input class="infoInput" type="text" name="realname" value="<%=realname%>"/></div> 
				<div class="infoInputLine"><label>登录密码：</label><input class="infoInput" name="password" type="text" value="<%=password %>"/></div>
				<div class="infoInputLine"><input type="checkbox" name="isadmin" value="true" style="margin-top:10px;"/> 管理员</div>
				<div class="infoInputLine"><input type="submit" name="action" class="btn btn-primary" value="修改" style="margin-top:30px;height: 40px;width: 50px;border-radius: 10px; background: darkgray;"/></div>
			</form>
		</div>
	</div>
</body>
</html>