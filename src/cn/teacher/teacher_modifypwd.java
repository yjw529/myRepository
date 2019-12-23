package cn.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.login.DBConn;

/**
 * Servlet implementation class student_modifypwd
 */
@WebServlet("/myteacher_modifypwd")
public class teacher_modifypwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacher_modifypwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql;
		DBConn db=new DBConn();
		String name=request.getParameter("teacher_username"); 
		String pwd=request.getParameter("pwd");
		String newpwd=request.getParameter("newpwd");
		String surepwd=request.getParameter("surepwd");
		if(!newpwd.equals(surepwd)) {
			System.out.println("新密码输入不一致!");
			response.sendRedirect("/ExamSystem/teacher/student_modifypwd.jsp");
		}
		
		sql="update teacherlogin set password='"+newpwd+"' where username='"+name+"' and password='"+pwd+"' "; 
		db.executeUpdate(sql);
		System.out.println("密码修改成功!");
		response.sendRedirect("/ExamSystem/teacher/teacher_modifypwd.jsp");  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
