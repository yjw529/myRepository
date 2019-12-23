package cn.admin;

import java.io.IOException;
import java.sql.*;

import cn.login.DBConn;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myadmin_deleteTeacher")
public class admin_deleteTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_deleteTeacher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String sql;
		DBConn db=new DBConn();		
		sql="delete from teacherlogin where username='" + username + "'";
		db.executeUpdate(sql);
		try
		{			
			sql="select*from adminlogin where username='"+username+"'";
			db.rs=db.stmt.executeQuery(sql);			
			if (db.rs.next())
			{				
				sql="delete from adminlogin where username='" + username + "'";
				db.executeUpdate(sql);
			}
			else {		
			}
			db.con.close();
		} catch (Exception e)
		{			 
			
		}	
		response.sendRedirect("/ExamSystem/admin/admin_manageTeacher.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
