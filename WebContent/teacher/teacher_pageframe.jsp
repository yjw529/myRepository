<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教师登录</title>
<link href="../css/teacher/teacher_pageframe.css" rel="stylesheet" type="text/css" />
</head>
<script>
		function showTime() {
			nowtime = new Date();
			year = nowtime.getFullYear();//年
			month = nowtime.getMonth() + 1;//月
			day = nowtime.getDate();//日
			hour = nowtime.getHours();//时
			minutes = nowtime.getMinutes(); //分
			seconds = nowtime.getSeconds(); //秒
			//文字增加空格
			document.getElementById("div_timer").style = "white-space:pre;";
			//显示时间
			document.getElementById("div_timer").innerText = year + "年" + p(month) + "月" + p(day) + "日" + p(hour) + ":" + p(minutes) + ":" + p(seconds);
			}
			setInterval("showTime()", 1000);
			//月日时分秒小于10补0
			function p(s) {
			return s < 10 ? '0' + s : s;
			}
	</script>
<body>
	<div id="mybody" >
		<div id="head"><div id="title"><h2>欢迎登陆!<%=session.getAttribute("teacher_username") %></h2></div><div id="div_timer"></div></div>		
    	<iframe style="float: left;"   width="260px" height="100%" src="teacher_leftFrame.jsp"></iframe>  	
    	<iframe id="frame_maincontent" style="float: left;"   width="1250px" height="100%" src="teacher_main.jsp"></iframe>
	</div>	
</html>