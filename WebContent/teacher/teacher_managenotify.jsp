<%@page import="cn.bean.Notify"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理通知</title>
</head>
<style>
	#mainbody{
		float: left;
		width: 1200px;
		height: 100%;
	}
	#addnotify{
		margin-top: 50px;
		width: 600px;
		height: 100px;
		margin-left: 300px;
		background: bisque;
		border-radius: 15px;
	
	}
	#shownotify{
		margin-top: 50px;
		width: 600px;
		height: 400px;
		margin-left: 300px;
		background: bisque;
		border-radius: 15px;	
	}
</style>
<body>
	<div id="mainbody">
		<form id="addnotify" action="/ExamSystem/myteacher_addnotify" method="post">
			<h4 align="center" style="margin-top:20px">新增通知消息</h4>
			<input type="text" name="add_notify" placeholder="通知消息内容" style="margin-left:100px; height: 30px;width: 300px;border-radius: 10px;"/>
			<button type="submit">发布</button>
		</form>
		<% 		
			ArrayList<Notify> notifies=new ArrayList<Notify>();
			Notify notify=new Notify();
			notifies=notify.qurrynotify();
		%>
		<div id="shownotify">
			<div class="row-fluid">
				<h4 align="center" style="margin-top:20px">已有通知消息</h4>
				<table style="text-align: center;margin:0 auto;" border="1"  >
					<thead>
						<tr>
							<th >通知内容</th>
							<th >通知发起人</th>
							<th >发起通知时间</th>
							<th >&nbsp;</th>
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
							<td><a style="text-decoration: none;" href="/ExamSystem/myteacher_deletenotify?content=<%=notify2.getContent()%>"> 删除</a></td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>	
	</div>
</body>
</html>