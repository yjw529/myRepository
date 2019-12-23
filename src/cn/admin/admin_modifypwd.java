package cn.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.login.DBConn;

/**
 * Servlet implementation class admin_modifypwd
 */
@WebServlet("/myadmin_modifypwd")
public class admin_modifypwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_modifypwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql;
		DBConn db=new DBConn();
		HttpSession session = request.getSession(); 
		String name=(String)session.getAttribute("admin_username");
		String pwd=request.getParameter("pwd");
		String newpwd=request.getParameter("newpwd");
		String surepwd=request.getParameter("surepwd");
		if(!newpwd.equals(surepwd)) {
			System.out.println("新密码输入不一致!");
			response.sendRedirect("/ExamSystem/teacher/student_modifypwd.jsp");
		}
		
		sql="update adminlogin set password='"+newpwd+"' where username='"+name+"' and password='"+pwd+"' "; 
		db.executeUpdate(sql);
		System.out.println(name+pwd);
		System.out.println("密码修改成功!");
		response.sendRedirect("/ExamSystem/admin/admin_modifypwd.jsp");  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
