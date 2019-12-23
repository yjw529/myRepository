$(function(){
var winWidth,winHeight;
Resize = function(){
winWidth = $(window).width(),
winHeight= $(window).height();
}
});
function clickCard(id1,id2) {
	
	var studentlogin=document.getElementById("studentlogin");
	var teacherlogin=document.getElementById("teacherlogin");
	var adminlogin=document.getElementById("adminlogin");
	
	studentlogin.style.display="none";	
	teacherlogin.style.display="none";
	adminlogin.style.display="none";
	
//	e.background='floralwhite';
	var studenttab=document.getElementById("studenttab");
	var teachertab=document.getElementById("teachertab");
	var admintab=document.getElementById("admintab");

	studenttab.style.background="bisque";
	teachertab.style.background="bisque";
	admintab.style.background="bisque";
	
	var selecttab =document.getElementById(id1);
	selecttab.style.background="floralwhite";
	
    var selectlogin =document.getElementById(id2); 
    selectlogin.style.display="block"; 
}
function allLogin(id){
	var userNameInput;
	var pwdInput;
	switch(id){
		case "studentlogin":userNameInput=document.getElementById("stUsernameInput");
							pwdInput=document.getElementById("stpwdInput");
							if(userNameInput==null||pwd==null){
								alter("账号或密码不能为空");
							}
							window.location.href='Login.jsp';
							break;
		case "teacherlogin":userNameInput=document.getElementById("tcUsernameInput");
							pwdInput=document.getElementById("tcpwdInput");
							if(userNameInput==null||pwd==null){
								alter("账号或密码不能为空");
							}
							window.location.href='Login.jsp';				
							break;
		case "adminlogin":  userNameInput=document.getElementById("adUsernameInput");
							pwdInput=document.getElementById("adpwdInput");	
							window.location.href='admin/admin_about.jsp';break;
	}
}
function resetinput(){
	var usernameinput; 
	var pwdInput; 
	switch(id){
		case "studentlogin":userNameInput=document.getElementById("stUsernameInput");
							pwdInput=document.getElementById("stpwdInput");
							userNameInput.innerHTML=null;pwdInput.innerHTML=null;break;
		case "teacherlogin":userNameInput=document.getElementById("tcUsernameInput");
							pwdInput=document.getElementById("tcpwdInput");
							userNameInput.innerHTML="";pwdInput.innerHTML="";break;
		case "adminlogin":  userNameInput=document.getElementById("adUsernameInput");
							pwdInput=document.getElementById("adpwdInput");	
							userNameInput.innerHTML="";pwdInput.innerHTML="";break;
	}
}