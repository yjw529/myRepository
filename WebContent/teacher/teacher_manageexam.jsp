<%@page import="cn.bean.Exam"%>
<%@page import="cn.login.DBConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑考试</title>
<link href="${pageContext.request.contextPath }/css/teacher/teacher_manageexam.css" rel="stylesheet" type="text/css" />
</head>
 	<%
	String havebeenErrorInfo =(String) request.getAttribute("haveexambeen");         // 获取错误属性
	String havenotbeenErrorInfo =(String) request.getAttribute("examNotbeen");
	if(havebeenErrorInfo != null) {
	%>
	<script >
		alert("<%=havebeenErrorInfo%>");                                            // 弹出错误信息	                          
	</script>
	<%
	}
	%>
	
	<%
		if(havenotbeenErrorInfo != null) {
	%>
		<script >
			alert("<%=havenotbeenErrorInfo%>");                                            // 弹出错误信息		                          
		</script>
	<%
		}
	%>
<body >

	<%	
	String startname="";
		if(request.getParameter("name")!=null){
			session.setAttribute("examname",request.getParameter("name") );				
		}	
	startname=(String) session.getAttribute("examname");
	
	%>
	
	<div class="rootPage">
		<div id="infoEdit">
			<h4 style="margin-top:20px">编辑考试信息</h4>
			<form id="infoEditForm" action="/ExamSystem/myteacher_manageexam?sqlname=<%=request.getParameter("name")%>&sqltime=<%=request.getParameter("time")%>" method="post">
				<div class="infoInputLine"><label>考试名称：</label><input class="infoInput" type="text" name="examName" value="<%=startname%>"/></div>
				<div class="infoInputLine"><label>开始时间：</label><input class="infoInput" name="examStartTime" type="datetime-local" value="<%=request.getParameter("time")%>"/></div>
				<div class="infoInputLine"><label>结束时间：</label><input class="infoInput" name="examStopTime" type="datetime-local" /></div>
				<div class="infoInputLine"><input type="checkbox" name="eautostart" value="true"/> 自动开始</div>
				<div class="infoInputLine"><input type="submit" name="action" class="btn btn-primary" value="修改" /></div>
			</form>
		</div>
		<div id="testPaperUpload">
			<h4 style="margin-top:20px">上传试卷</h4>
			<div class="paperInputLine">
				<p >已经上传过试卷，再次上传将导致原有试卷不可访问！
					<a target="_blank" href="${pageContext.request.contextPath}/myListExamFileServlet"><i>下载查看</i></a>
				</p>
			</div>
			<div class="paperInputLine">
				<form action="${pageContext.request.contextPath}/myUploadHandleServlet?name=<%=startname%>" enctype="multipart/form-data" method="post">
					<input type="file" name="file1" />
					<input type="submit" value="上传" />
				</form>
			</div>
		</div>
		<div id="examStudentSet" >
			<h4 style="margin-top:20px">导入学生名单</h4>
			<div class="infoInputLine">
			<p>目前设定参加此次考试的学生人数：</p>
			</div>			
			<div class="infoInputLine">
				<form action="teacher_student.jsp" method="post">
					<input type="file" name="student" />
					<input type="submit" value="继续导入" />	
				</form>		
			</div>
		</div>
		<div id="examStart">
			<form style="float: left;margin-left: 250px;" action="/ExamSystem/mystartExam">			
				<input type="submit" id="btn_startexam"  name="startexam"   value="开始考试" style="margin-top:20px"/>
			</form >
			<form style="float: left;margin-left: 180px;"  action="/ExamSystem/myendExam">	
				<input type="submit" id="btn_endexam"  name="endexam"  value="结束考试" style="margin-top:20px"/>			
			</form>		
		</div>
		<div></div>
		
		
	</div>	
</body>

</html>