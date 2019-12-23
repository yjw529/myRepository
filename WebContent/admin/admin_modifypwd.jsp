<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/admin/admin_modifypwd.css" />
</head>
<script type="text/javascript">
function resetinput(){
	var username=document.getElementById("username"); 
	var pwd=document.getElementById("pwd"); 
	var newpwd=document.getElementById("usernnewpwdame"); 
	var surepwd=document.getElementById("surepwd"); 
	username.innerHTML=null;
	pwd.innerHTML=null;
	newpwd.innerHTML=null;
	surepwd.innerHTML=null;	
}
</script>
<body>
	<div id="mainbody">
			<div id="bodydiv">
				<form action="/ExamSystem/myadmin_modifypwd" method="post">
					<div id="modifytitle">
						<h2>修改密码</h2>
					</div>
					<div id="modifydiv1">
						<div class="modifylabel">
							<label>请输入用户名:</label>
						</div>
						<div class="modifyinput">
							<input name="username" type="text" style="height: 30px;width: 200px;border-radius: 10px;"/>
						</div>
					</div>
					<div class="modifydiv2">
						<div class="modifylabel">
							<label>请输入原密码:</label>
						</div>
						<div class="modifyinput">
							<input name="pwd" type="password" style="height: 30px;width: 200px;border-radius: 10px;"/>
						</div>
					</div>
					<div class="modifydiv2">
						<div class="modifylabel">
							<label>请输入新密码:</label>
						</div>
						<div class="modifyinput">
							<input name="newpwd" type="password" style="height: 30px;width: 200px;border-radius: 10px;"/>
						</div>
					</div>
					<div class="modifydiv2">
						<div class="modifylabel">
							<label>请确认新密码:</label>
						</div>
						<div class="modifyinput">
							<input name="surepwd" type="password" style="height: 30px;width: 200px;border-radius: 10px;"/>
						</div>
					</div>
					<div class="modifydiv2">
						<div id="modifybtnsubmit"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="确认"/></div>
						<div id="modifybtnreset"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="reset" value="重置" onclick="resetinput()"/></div>	
					</div>
				</form>
			</div>
		</div>
</body>
</html>