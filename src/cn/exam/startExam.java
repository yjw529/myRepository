package cn.exam;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Exam;
import cn.login.DBConn;

/**
 * Servlet implementation class startExam
 */
@WebServlet("/mystartExam")
public class startExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public startExam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql;
		DBConn db=new DBConn();
		HttpSession session=request.getSession();
		String name=(String) session.getAttribute("examname");
		Exam exam=new Exam();
		Boolean haveexambeen=exam.qurryexamisbeen();
		if(haveexambeen==false) {
			sql="update exam set isbeen='1'  where name='"+name+"' "; 
			db.executeUpdate(sql);			
		}
		else {
			request.setAttribute("haveexambeen", "当前已有考试正在进行");          // 设置错误属性
			
			/* session.setAttribute("haveexam", "已有考试正在进行"); */
		}
		request.getRequestDispatcher("teacher/teacher_manageexam.jsp").forward(request, response);
		//response.sendRedirect("/ExamSystem/teacher/teacher_manageexam.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
