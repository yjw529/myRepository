package cn.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.login.DBConn;

/**
 * Servlet implementation class teacher_addstu
 */
@WebServlet("/myteacher_addstu")
public class teacher_addstu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacher_addstu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String add_stuid=request.getParameter("add_stuid");
		String add_stuname=request.getParameter("add_stuname");
		String add_stugrade=request.getParameter("add_stugrade");
		if(add_stuid==null) {
			System.out.println("学号不能为空");
		}
		else {
			System.out.println(add_stuname);
			String sql;
			DBConn db=new DBConn();	
			  sql="INSERT INTO student(id,name,username,password,grade,islogin,isuploadanswer) VALUES ('"+add_stuid+"','"+add_stuname+"','"+add_stuname+"','123','"+add_stugrade+"','否','否')"; 
			  db.executeUpdate(sql);
		}		
		response.sendRedirect("/ExamSystem/teacher/teacher_managestudent.jsp");  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
