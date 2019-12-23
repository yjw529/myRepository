package cn.teacher;

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
 * Servlet implementation class editexam
 */
@WebServlet("/myeditexam")
public class editexam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editexam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sql;
		DBConn db=new DBConn();
		String add_examname=(String)request.getParameter("add_examname"); 
		String add_examtime=(String)request.getParameter("add_examtime");
		
		String isautostart="";
		String [] isautostarts=request.getParameterValues("checkbox_examauto");
		if(isautostarts==null) {
			isautostart="0";
		}
		else {
			isautostart="1";							
		}
		HttpSession session = request.getSession(); 
		String founder=(String)session.getAttribute("teacher_username");
		sql="INSERT INTO exam(name, time, founder, isupload, isautostart, isbeen, isend, isstorage, isclear) VALUES ('"
				  +add_examname+"', '"+add_examtime+"', '"+founder+"', '0', '"
				  +isautostart+"',  '0', '0', '0', '0')"; 
		db.executeUpdate(sql);
		response.sendRedirect("/ExamSystem/teacher/teacher_editexam.jsp");  	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
