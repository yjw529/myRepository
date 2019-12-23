package cn.student;

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
 * Servlet implementation class student_exit
 */
@WebServlet("/mystudent_exit")
public class student_exit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public student_exit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String sql;
		DBConn db=new DBConn();
		HttpSession session = request.getSession(false); 
		String username="";
		username=(String)session.getAttribute("student_username"); 		
		sql="update student set islogin='否' where username='"+username+"' ";
		db.executeUpdate(sql);	
		/*PrintWriter out = response.getWriter();
		//如果成功弹出登陆成功并跳到下一个页面
		out.print("<script>alert('退出成功!');document.parent.href='login.jsp'</script>");
		out.flush();
		
		 * //如果成功弹出登陆失败并跳到下一个页面
		 * out.print("<script>alert('登录成功!');window.location.href='跳到登陆失败后的页面'</script>"
		 * );
		 */

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
