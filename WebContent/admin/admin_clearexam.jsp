<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="cn.bean.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>清理考试</title>
<link href="../css/admin/admin_clearexam.css" rel="stylesheet" type="text/css" />
</head>
<!-- <body style="background-image:url(../img/background.jpg);background-size:cover;""/> -->
<div id="mainbody">
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<%		
			ArrayList<Exam> arrexam=new ArrayList<Exam>();
			Exam exam=new Exam();
			arrexam=exam.qurryexam();
		%>
		<div id="showexam" style="overflow-x:scroll">	
		<h4>考试清理</h4>			
				<table style="text-align: center;margin:0 auto;" border="1" bordercolor="black"  cellspacing="0" cellpadding="10">
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
							<td><a href="/ExamSystem/myadmin_clearExam?name=<%=e.getName() %>" style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="清理"/></a></td>			
							<td><a href="/ExamSystem/myDeleteExam?name=<%=e.getName() %>" style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="删除"/></a></td>							
						</tr>
						<%}
						%>
					</tbody>
				</table>	
			
		</div>
		
	</div>
</body>
</html>