package cn.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.login.DBConn;

/**
 * Servlet implementation class admin_addTeacher
 */
@WebServlet("/myadmin_addTeacher")
public class admin_addTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_addTeacher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sql;
		DBConn db=new DBConn();
		String username=(String)request.getParameter("username"); 
		String password=(String)request.getParameter("password");
		String realname=(String)request.getParameter("realname");
		
		String [] isadmins=request.getParameterValues("isadmin");
		HttpSession session = request.getSession(); 
		
		if(isadmins==null) {
			sql="INSERT INTO teacherlogin(username, realname, password, isadmin) VALUES ('"+username+"', '"+realname+"','"+password+"','否')";
			db.executeUpdate(sql);
		}
		else {
			sql="INSERT INTO teacherlogin(username, realname, password, isadmin) VALUES ('"+username+"', '"+realname+"','"+password+"','是')";
			db.executeUpdate(sql);
			sql="INSERT INTO adminlogin(username, password) VALUES ('"+username+"', '"+password+"')";
			db.executeUpdate(sql);
		}
		
		response.sendRedirect("/ExamSystem/admin/admin_addTeacher.jsp");  	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
