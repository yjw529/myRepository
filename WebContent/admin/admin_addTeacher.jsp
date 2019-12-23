<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="cn.bean.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加教师</title>
<link href="../css/admin/admin_addTeacher.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//验证用户名是否规范
function check_username(){	
	//在每个函数中定义check变量是为了在表单提交后，能够逐个验证每个函数是否通过
    var check; 
    var username = document.getElementById("username").value;
    if (username.length == 0){
    	alert("用户名不能为空，请重新输入！");
    	check = false;
    }else if (username.length > 15 || username.length < 2) { 
    	alert("用户名输入不合法，请重新输入！");
      	//若输入错误，则在此处获取焦点，继续输入
      	document.getElementById("username").focus();
      	/* $("#username").val("")； */
      	check = false; 
     } else { 
      	document.getElementById("check_username").innerHTML = "* 用户名输入成功 √"; 
      	check = true; 
     } 
     	return check; 
}

//利用正则表达式判断密码是否符合规范
function check_password() { 
  var check; 
  var reg = /[A-Za-z0-9]+/;
  var password = document.getElementById("password").value; 
  if (password.length < 2 || password.length > 15) { 
    alert("密码长度不合法，请重新输入！");
    document.getElementById("password").focus();
    check = false; 
  } else if(reg.test(password)) { 
    document.getElementById("check_password").innerHTML = "* 密码输入成功 √"; 
    check = true; 
  }else{
	 alert("密码格式不符合要求，请重新输入！");
	 document.getElementById("password").focus();
	 check = false; 
  } 
  return check; 
} 

//验证密码是否一致
function check_confirm_password() { 
  var check; 
  var password = document.getElementById("password").value; 
  var confirm_password = document.getElementById("confirm_password").value; 
  if (password != confirm_password) { 
    alert("两次输入密码不一致，请重新输入！");
    document.getElementById("confirm_password").focus();
    check = false; 
  } else { 
    document.getElementById("check_confirm_password").innerHTML = "* 请再次输入你的密码 √"; 
    check = true; 
  } 
  return check; 
}
	
function check_all() { 
    var check = check_username() && check_name() && check_password(); 
    return check;  
} 
</script>
</head>
<body>
	<div id="mainbody">
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<div id="addteacher">
			<form action="/ExamSystem/myadmin_addTeacher" method="post">
				<h4>添加教师</h4>
				<div id="addteacherdiv" >
					<input type="text" name="username" placeholder="教师用户名*" size="20" style="height: 30px;width: 200px;border-radius: 10px;" onchange="check_username()"/>	
					<input type="text" name="realname" placeholder="教师名称*" size="20" style="height: 30px;width: 200px;border-radius: 10px;margin-top: 20px;" onchange="check_username()"/>							
					<input name="password" size="16" type="text"  placeholder="登录密码" style="height: 30px;width: 200px;border-radius: 10px;margin-top: 20px;" onchange="check_password()"/> 	
					<input  name="confirm_password" size="16" type="text"  placeholder="确认密码" style="height: 30px;width: 200px;border-radius: 10px;margin-top: 20px;" onchange="check_confirm_password()"/> 						
					<input type="checkbox" name="isadmin" value="true" style="margin-top: 20px;"/> 管理员&nbsp;				
					<a href="/ExamSystem/myadmin_addTeacher" style="text-decoration: none;"><input type="submit"  class="btn btn-primary"  value="添加" style="margin-top: 20px;" /></a>					
				</div>
			</form>
		</div>
	</div>
</body>
</html>