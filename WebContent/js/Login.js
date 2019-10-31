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
							window.location.href='new_file.html';
		case "teacherlogin":userNameInput=document.getElementById("tcUsernameInput");
							pwdInput=document.getElementById("tcpwdInput");
							window.location.href='new_file.html';
		case "adminlogin":  userNameInput=document.getElementById("adUsernameInput");
							pwdInput=document.getElementById("adpwdInput");	
							window.location.href='new_file.html';
	}
}
