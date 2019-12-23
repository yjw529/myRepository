package cn.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.login.DBConn;

/**
 * Servlet implementation class teacher_manageexam
 */
@WebServlet("/myteacher_manageexam")
public class teacher_manageexam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacher_manageexam() {
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
		String name=(String)request.getParameter("examName"); 
		String starttime=(String)request.getParameter("examStartTime");
		//String examStopTime=(String)request.getParameter("examStopTime");
		String sqlname=request.getParameter("sqlname");
		System.out.println(sqlname);
		String isautostart="";
		String [] isautostarts=request.getParameterValues("eautostart");
		if(isautostarts==null) {
			isautostart="0";
		}
		else {
			isautostart="1";
			System.out.println(isautostart);
				
		}
		System.out.println(name+":"+sqlname);
		sql="update exam set name='"+name+"',  isautostart='"+isautostart+"' ,time='"+starttime+"'  where name='"+sqlname+"' "; 
		HttpSession session=request.getSession();
		session.setAttribute("examname", name);
		db.executeUpdate(sql);
		response.sendRedirect("/ExamSystem/teacher/teacher_manageexam.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
