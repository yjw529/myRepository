<%@page import="cn.bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理学生名单</title>
</head>
<style>
		#mainbody{
			float: left;
			width: 1200px;
			height: 100%;
		}
		.content{
			width:800px;
			height: 100px;
			margin-top: 30px;
			margin-left: 200px;
			border-radius: 15px;
			background: bisque;
		}
		.showcontent{
			width:800px;
			height: 400px;
			margin-top: 30px;
			margin-left: 200px;
			border-radius: 15px;
			background: bisque;
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
			<div class="content">		
				<div class="stutable">
					<form action="${pageContext.request.contextPath}/myteacher_addstu" method="post">
						<h4 style="text-align: center;">添加单个学生</h4>
						<input type="text" name="add_stuid" placeholder="学号*不能为空" size="20" />
						<input type="text" name="add_stuname" placeholder="姓名*" size="20" />
						<input type="text" name="add_stugrade" placeholder="班级" size="20" />
						<button type="submit" class="btn btn-primary"><i class="icon-plus"></i> 添加</button>
					</form>
				</div>		
				
			</div>	
			<div class="content">
				<div class="stutable">
					<form  action="${pageContext.request.contextPath}/myteacher_selectstu" method="post">
						<h4 style="text-align: center;">查找学生信息</h4>
						<input type="text" name="select_stuid" placeholder="学号 不能为空" size="20" />
						<input type="text" name="select_stuname" placeholder="姓名" size="20" />
						<input type="text" name="select_stugrade" placeholder="班级" size="20" />
						<button type="submit" class="btn btn-primary"><i class="icon-search"></i> 查找</button>
					</form>
				</div>
				
			</div>	
			<%
				ArrayList<Student> arrstu =new ArrayList<Student>();	
			
				arrstu=(ArrayList<Student>)session.getAttribute("selectstu");								
			%>
			<div class="showcontent" style="overflow-x:scroll"  id="showstudentinfo">
				
				<div class="stutable" >										
						<h4 style="text-align: center;">查找结果</h4>
						<table style="text-align: center;width:600px; margin:0 auto;"  border="1" >
							<thead>
								<tr>
									<th style="text-align: center;width:150px;">学号</th>
									<th style="text-align: center;width:150px;">姓名</th>
									<th style="text-align: center;width:150px;">班级</th>
									<th style="text-align: center;width:150px;">是否上传答案</th>
								</tr>
							</thead>
							<tbody>
							<%if(arrstu!=null){
								for(Student stu: arrstu){ %>
								<tr>
									<td id="id"><%=stu.getId() %></td>
									<td id="name"><%=stu.getName() %></td>
									<td id="grade"><%=stu.getGrade() %></td>
									<td id="Isuploadanswer"><%=stu.getIsuploadanswer() %></td>
								</tr>
								<%}} %>
							</tbody>
						</table>	
				</div>
			</div>
		</div>
</body>
</html>