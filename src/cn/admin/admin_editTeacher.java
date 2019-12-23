package cn.admin;

import java.io.IOException;
import java.sql.*;

import java.security.Key;
import java.security.Security;
import javax.crypto.Cipher;

import cn.bean.Teacher;
import cn.login.DBConn;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @author 
 * Servlet implementation class admin_editTeacher
 */
@WebServlet("/myadmin_editTeacher")
public class admin_editTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public admin_editTeacher() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql;
		DBConn db=new DBConn();
		String sqlname=request.getParameter("sqlname");
		String username=(String)request.getParameter("username"); 
		String password=(String)request.getParameter("password");
		String realname=(String)request.getParameter("realname");
		String isadmin=null;
		String [] isadmins=request.getParameterValues("isadmin");
		HttpSession session = request.getSession(); 
		if(isadmins==null) {
			sql="update teacherlogin set username='"+username+"', realname='"+realname+"' ,password='"+password+"' ,isadmin='否' where username='"+sqlname+"' "; 
			db.executeUpdate(sql);
			sql="delete from adminlogin where username='" + username + "'";
			db.executeUpdate(sql);
		}
		else {		
			sql="update teacherlogin set username='"+username+"', realname='"+realname+"' ,password='"+password+"' ,isadmin='是'  where username='"+sqlname+"' "; 
			db.executeUpdate(sql);
			try
			{			
				sql="select*from adminlogin where username='"+username+"'";
				db.rs=db.stmt.executeQuery(sql);			
				if (db.rs.next())
				{				
					sql="update adminlogin set username='"+username+"', password='"+password+"' where username='"+sqlname+"' "; 
					db.executeUpdate(sql);
				}
				else {		
					sql="INSERT INTO adminlogin(username, password) VALUES ('"+username+"', '"+password+"')";
					db.executeUpdate(sql);
				}
				db.con.close();
			} catch (Exception e)
			{			 
				
			}	
		}
		response.sendRedirect("/ExamSystem/admin/admin_manageTeacher.jsp");	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
