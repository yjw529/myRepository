<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/Login.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" src="js/Login.js"></script>
<body>
		<div id="bodybox" >
			<div id="headpage">
				<!--<div id="headpicture"><img src="img/CollegeIcon.jpg"></img></div>-->
				<div id="headcharacter"><img src="img/titlechar.png"></img></div>
			</div>
			<div id="loginbody">
				<div id="loginbody1">
					<div id="logintab">
						<ul>
            			<li><a href="#" id="studenttab" onclick="clickCard('studenttab','studentlogin')">学生登录</a></li>
            			<li><a href="#" id="teachertab" onclick="clickCard('teachertab','teacherlogin')">教师登录</a></li>
            			<li><a href="#" id="admintab"   onclick="clickCard('admintab','adminlogin')">管理员登录</a></li>
        			</ul>
					</div>
					
					<div id="studentlogin">
						<div class="headpicture"><img src="img/exam-student.png" /></div>						
						<div class="username">用户名:</div>
						<div class="usernameInput">
							<div class="pwdInput1"><input type="text" id="stUsernameInput" value="" placeholder="张三" style="height: 35px;width: 160px;border-radius: 15px;"/></div>
							
						</div>
						<div class="pwd">密码:</div>
						<div class="pwdInput">
							<div class="pwdInput1"><input type="password" id="stpwdInput" value=""  style="height: 30px;width: 160px;border-radius: 15px;"/></div>
							<div class="lookpwd"></div>
						</div>
						<div class="loginbtn"><input type="submit" value="提交" onclick="allLogin('studentlogin')" style="border-radius: 10px;font-size: 20px;"/></div>
						<div class="resetbtn"><input type="reset"  value="重置" onclick="" style="border-radius: 10px;font-size: 20px;"/></div>					
					</div>
					<div id="teacherlogin">
						<div class="headpicture"><img src="img/exam-teacher.png" /></div>
						<div class="username">用户名:</div>
						<div class="usernameInput">
							<div class="pwdInput1"><input type="text" id="tcUsernameInput" value="" placeholder="张三" style="height: 35px;width: 160px;border-radius: 15px;"/></div>
							
						</div>
						<div class="pwd">密码:</div>
						<div class="pwdInput">
							<div class="pwdInput1"><input type="password" id="tcpwdInput" value=""  style="height: 30px;width: 160px;border-radius: 15px;"/></div>
							<div class="lookpwd"></div>
						</div>
						<div class="loginbtn"><input type="submit" value="提交" onclick="allLogin('teacherlogin')" style="border-radius: 10px;font-size: 20px;"/></div>
						<div class="resetbtn"><input type="reset"  value="重置" onclick="" style="border-radius: 10px;font-size: 20px;"/></div>
					</div>
					<div id="adminlogin">
						<div class="headpicture"><img src="img/exam-admin.png" /></div>
						<div class="username">用户名:</div>
						<div class="usernameInput">
							<div class="pwdInput1"><input type="text" id="adUsernameInput" value="" placeholder="张三" style="height: 35px;width: 160px;border-radius: 15px;"/></div>
							
						</div>
						<div class="pwd">密码:</div>
						<div class="pwdInput">
							<div class="pwdInput1"><input type="password" id="adpwdInput" value=""  style="height: 30px;width: 160px;border-radius: 15px;"/></div>
							<div class="lookpwd"></div>
						</div>
						<div class="loginbtn"><input type="submit" value="提交" onclick="allLogin('adminlogin')" style="border-radius: 10px;font-size: 20px;"/></div>
						<div class="resetbtn"><input type="reset"  value="重置" onclick="" style="border-radius: 10px;font-size: 20px;"/></div>
					</div>
				</div>
				
			</div>
			
		</div>
</body>
</html>