<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="cn.bean.Teacher"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询教师</title>
<style>
#mainbody{
	float: left;
	width: 1200px;
	height: 100%;
}
#addexamdiv{
	width: 200px;
	height: 150px;
	margin-left: 300px;
	text-align: center;

}
#showexam{
	border-radius:15px ;
	margin:0 auto;
	text-align: center;
	background: bisque;	
	width: 800px;
	height: 600px;
	border: 1px solid black;
}
</style>
</head>
<body >
	<div id="mainbody" >
		<%		
			ArrayList<Teacher> arrtch=new ArrayList<Teacher>();
			Teacher teacher=new Teacher();
			arrtch=teacher.qurrytch();
		%>
		<hr style="width:1130px;height:2px;margin-left: 40px; margin-top: 30px;color: #000000;"></hr>
		<div id="showexam" style="overflow-x:scroll">	
		
		<h4>教师管理</h4>			
				<table style="text-align: center;margin: 0 auto;width: 80%;" border="1" bordercolor="black"  cellspacing="0" cellpadding="10">
					<thead>
						<tr>
							<th class="span1">用户名</th>
							<th class="span3">教师真实姓名</th>
							<th class="span1">管理员</th>
							<th class="span1">密码</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%				
							for(Teacher t : arrtch){%>
						<tr>							
							<td id="username"><%=t.getUsername() %></td>
							<td id="realname"><%=t.getRealname()%></td>
							<td id="isadmin"><%=t.getIsadmin() %></td> 
							<td id="username"><%=t.getPassword() %></td>	
							<td><a href="admin_editTeacher.jsp?username=<%=t.getUsername()%>&realname=<%=t.getRealname()%>&password=<%=t.getPassword() %>" style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="编辑"/></a></td>		
							<td><a href="/ExamSystem/myadmin_deleteTeacher?username=<%=t.getUsername()%>" style="text-decoration: none;"><input style="height: 40px;width: 50px;border-radius: 10px; background: darkgray;" type="submit" value="删除"/></a></td>								
						</tr>
						<%}
						%>
					</tbody>
				</table>		
		</div>
	</div>
</body>
</html>