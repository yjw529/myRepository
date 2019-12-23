<%@page import="cn.bean.Notify"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生主页面</title>

</head>
	<% 		
			ArrayList<Notify> notifies=new ArrayList<Notify>();
			Notify notify=new Notify();
			notifies=notify.qurrynotify();
		%>
	<body>
	<div id="stu_main_picture">
		<table style="width:100%;">
			<tr>
				<td width="100%" height="100px">
					<h1>
						<img src="../img/student.jpg" width="70px" height="70px" />考试进行中
					</h1>
				</td>
			</tr>
		</table>
	</div>
	<div class="stu_maincontent">
		<table>
			<tr>
				<td width="50%" height="300px">
					<h3>试卷下载</h3> <br /> 
						<a class="btn" target="_blank" href="${pageContext.request.contextPath}/myListExamFileServlet">下载查看</a>			
					<p class="exam-info">本次考试没有电子试卷。</p>
				
			</td>
			<td width="50%" height="300px" >
				
	           	<h3>答案上传</h3>
				<br/>
				<p>请按照考试要求将答案文件打包，再次进行上传。同名文件多次上传将会覆盖。</p>
				<form  action="${pageContext.request.contextPath}/myuploadAnswer" enctype="multipart/form-data" method="post">
					<input type="file" name="answer" />
					<input type="submit"  value="上传" />
				</form>
	           	</td>
			</tr>	
		</table>
	</div>
	
	<div id="stu_main_notify">
		<table style="text-align: center;margin-top: 100px;" border="1">
			<thead>
				<tr >
					<th >通知内容</th>
					<th >发起通知人</th>
					<th >发起通知时间</th>
			
				</tr>
			</thead>
			<tbody>		
				<%
					for(Notify notify2:notifies){
				%>	
				<tr>
					<td><%=notify2.getContent() %></td>
					<td><%=notify2.getSneder() %></td>
					<td><%=notify2.getTime() %></td>
			
				</tr>
				<%} %>
			</tbody>
		</table>		
	</div>
		
		
  </body>
  </html>