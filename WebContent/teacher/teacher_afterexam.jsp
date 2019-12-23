<%@page import="cn.bean.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考后管理</title>
</head>
<style>
		#mainbody{
			float: left;
			width: 1200px;
			height: 100%;
		}
		.row-fluid{
			margin-top: 50px;
			width: 400px;
			height: 500px;
			margin-left: 400px;
			background: bisque;
			border-radius: 15px;
			padding-left: 30px;
			padding-top: 30px;
		}
	</style>
	<%		
			ArrayList<Exam> arrexam=new ArrayList<Exam>();
			Exam exam=new Exam();
			arrexam=exam.qurryexam();	
			
		%>
	<body>
		<div id="mainbody">
		
			<table style="width:90%; text-align: center;margin:0 auto;" border="1" >
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
						<th></th><th></th>
					</tr>
				</thead>
				<tbody>
					<%				
						for(Exam e : arrexam){
							
					%>
					<tr>
					<td id="name"><%=e.getName() %></td>
					<td id="time"><%=e.getTime()%></td>
					<td id="founder"><%=e.getFounder()%></td>
					<td id="isupload"><%=e.getIsupload() %></td>
					<td id="isautostart"><%=e.getIsautostart() %></td>
					<td id="isbeen"><%=e.getIsbeen() %></td>
					<td id="isend"><%=e.getIsend() %></td>
					<td id="isstorage"><%=e.getIsstorage() %></td>
					<td id="isclear"><%=e.getIsclear() %></td>			
					<td><a href="${pageContext.request.contextPath}/myListAnswerFileServlet?name=<%=e.getName() %>"  style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="存档"/></a></td>
					<td><a href="/ExamSystem/myClearExam?name=<%=e.getName() %>" style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="清理"/></a></td>							
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
</body>
</html>