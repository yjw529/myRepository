<%@page import="cn.bean.Notify"%>
<%@page import="cn.bean.FileProperty"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>提交答案</title>

	</head>
	
	<body>
		<table style="width:100%;">
			<tr>
				<td width="100%" height="100px" >
					<h1><img src="../img/student.jpg" width="70px" height="70px" />考试进行中</h1>
				</td>
			</tr>
		</table>
		<h3>已上传文件列表</h3>
		<%
			ArrayList<FileProperty> fileProperties=new ArrayList<FileProperty>(); 
			fileProperties=(ArrayList<FileProperty>)session.getAttribute("fileProperties"); 			
		%>
		<table style="text-align: center;" border="1">
	        <thead>        	
	             <tr>
	                <th class="span4">文件名</th>
                    <th class="span4">文件大小(B)</th>
	                <th class="span4">上传时间</th>
	             </tr>
	             
	        </thead>
	            <tbody>
                   <%	
                   if(fileProperties!=null){
					for(FileProperty f:fileProperties){
					%>
                        <tr>
						    <td><%=f.getName() %></td>
						    <td><%=f.getSizeString() %></td>
						    <td><%=f.getTime() %></td>
                        </tr>
                    <%}} %> 
                </tbody>
        </table>
		<h3>答案上传</h3>
		<form  action="${pageContext.request.contextPath}/myuploadAnswer" enctype="multipart/form-data" method="post">
			<input type="file" name="answer" />
			<input type="submit" value="上传" />
		</form>
		
	</body>
</html>