package cn.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class teacher_loginCheck
 */
@WebServlet("/myteacherloginCheck")
public class teacher_loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacher_loginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql;
		DBConn db=new DBConn();
		String username=request.getParameter("username"); 
		String pwd=request.getParameter("pwd");
		System.out.println(username+pwd);
		if(username==null||pwd==null) {
			request.setAttribute("loginError", "账号或密码不能为空");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
			response.sendRedirect("Login.jsp");
		}
		else {
			try
			{			
				sql="select*from teacherlogin where username='"+username+"' and password='"+pwd+"'";
				db.rs=db.stmt.executeQuery(sql);			
				if (db.rs.next())
				{				
					System.out.println(db.rs.getString("username")+" "+db.rs.getString("password"));
					HttpSession session = request.getSession(); 
					session.setAttribute("teacher_username", username);	
					session.setAttribute("isupload", "0");
					response.sendRedirect("teacher/teacher_pageframe.jsp");
				}
				else {		
					request.setAttribute("loginError", "账号或密码错误，请重新输入");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
					response.sendRedirect("Login.jsp");
				}
				db.con.close();
			} catch (Exception e)
			{			 
				
			}
			db.close();	
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}
}
