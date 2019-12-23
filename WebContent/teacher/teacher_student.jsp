<%@page import="cn.bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑学生名单</title>
</head>
<style>
		#mainbody{
			float: left;
			width: 1200px;
			height: 100%;
		}
		#addstudent{
			text-align: center;
			background: bisque;
			margin-left: 200px;
			width: 700px;
			height: 150px;
			border-radius:15px ;
			border: 1px solid black;
		}
		
		#showstudent{
			border-radius:15px ;
			margin-top: 50px;
			text-align: center;
			background: bisque;
			margin-left: 200px;
			width: 700px;
			height: 400px;
			border: 1px solid black;
		}
		.stutable{
			padding-top:8px;
			width:600px;
			margin-left:100px;
			margin-top:30px
			height: auto;
		}
	</style>
	<body>
		<div id="mainbody">
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<div id="addstudent">					
				<div class="stutable">
					<form action="/ExamSystem/myteacher_managestudent" method="post">
						<h4 style="text-align: center;">添加单个学生</h4>
						<input type="text" name="add_stuid" placeholder="学号*不能为空" size="20" />
						<input type="text" name="add_stuname" placeholder="姓名*" size="20" />
						<input type="text" name="add_stugrade" placeholder="班级" size="20" />
						<button type="submit" class="btn btn-primary"><i class="icon-plus"></i> 添加</button>
					</form>
				</div>				
		</div>
		<%
			ArrayList<Student> students =new ArrayList<Student>();	
			Student student=new Student();
			students=student.qurrystu();
		%>
		<div id="showstudent" style="overflow-x:scroll">
			<table style="margin-top:20px;text-align: center;width:700px" border="1" bordercolor="black"  cellspacing="0" cellpadding="10">
			<thead>
			
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>班级</th>
					
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%for(Student s:students){ %>
				<tr>
					<td id="delid"><%=s.getId() %></td>
					<td><%=s.getName() %></td>
					<td><%=s.getGrade() %></td>
					<td><a href="/ExamSystem/myteacher_deletestu?id=<%=s.getId() %>" style="text-decoration: none;">删除</a></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		</div>
		
	</div>
	</body>
</html>