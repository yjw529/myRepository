<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="cn.bean.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加考试</title>
<link href="../css/teacher/teacher_editexam.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="mainbody">
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<div id="addexam">
			<form action="/ExamSystem/myeditexam" method="post">
				<h4>添加考试</h4>
				<div id="addexamdiv" >
					<input type="text" name="add_examname" placeholder="考试名称*" size="20" style="height: 30px;width: 200px;border-radius: 10px;"/>							
				
					<input class="span2" name="add_examtime" size="16" type="datetime-local"  placeholder="考试时间*" style="height: 30px;width: 200px;border-radius: 10px;margin-top: 20px;" /> 				
				    
					<input type="hidden" id="etime" name="etime" />				
					<input type="checkbox" name="checkbox_examauto" value="true" style="margin-top: 20px;"/> 自动开始&nbsp;				
					<input type="submit"  class="btn btn-primary"  value="添加" style="margin-top: 20px;" />								
				</div>
			</form>
		</div>
		<%		
			ArrayList<Exam> arrexam=new ArrayList<Exam>();
			Exam exam=new Exam();
			arrexam=exam.qurryexamstill();
		%>
		<div id="showexam" style="overflow-x:scroll">				
				<table  class="xtable xodd" style="text-align: center;" border="1" bordercolor="black"  cellspacing="0" cellpadding="10">
					<thead>
						<tr>
							<th class="span3">考试名称</th>
							<th class="span3">考试时间</th>
							<th>创建人</th>
							<th>上传试卷</th>
							<th>自动开始</th>
							<th>进行中</th>
							<th>已结束</th>
							<th>已归档</th>
							<th>已清理</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%				
							for(Exam e : arrexam){%>
						<tr>							
							<td id="name"><%=e.getName() %></td>
							<td id="time"><%=e.getTime()%></td>
							<td id="founder"><%=e.getFounder()%></td>
							<td id="isupload"><%=e.getIsupload() %></td>
							<td id="isautostart"><%=e.getIsautostart() %></td>
							<td id="isbeen"><%=e.getIsbeen()%></td>
							<td id="isend"><%=e.getIsend()%></td>
							<td id="isstorage"><%=e.getIsstorage()%></td>
							<td id="isclear"><%=e.getIsclear()%></td>			
							<td><a href="teacher_manageexam.jsp?name=<%=e.getName()%>&time=<%=e.getTime() %>" style="text-decoration: none;">编辑</a></td>												
						</tr>
						<%}
						%>
					</tbody>
				</table>	
			
		</div>
		
	</div>
</body>
</html>