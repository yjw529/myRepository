package cn.teacher;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bean.Student;
import cn.login.DBConn;

/**
 * Servlet implementation class teacher_selectstu
 */
@WebServlet("/myteacher_selectstu")
public class teacher_selectstu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacher_selectstu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Student> arrstu=new ArrayList<Student>();
		String sql;DBConn db=new DBConn();	
		String select_stuid=request.getParameter("select_stuid");
		HttpSession session=request.getSession();
		/*
		 * String select_stuname=request.getParameter("select_stuname"); String
		 * select_stugrade=request.getParameter("select_stugrade");
		 */
		if("".equals(select_stuid)) {
			sql="select * from student"; 
			try {
				db.rs=db.stmt.executeQuery(sql);
				while (db.rs.next()) {
					Student student=new Student();
					student.setId(db.rs.getString("id"));
					student.setName(db.rs.getString("name"));
					student.setGrade(db.rs.getString("grade"));
					student.setIsuploadanswer(db.rs.getString("isuploadanswer"));
					arrstu.add(student);					
				}				
				
				session.setAttribute("selectstu", arrstu);							
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {						
			sql="select * from student where id="+select_stuid+""; 
			try {
				db.rs=db.stmt.executeQuery(sql);
				while (db.rs.next()) {
					Student student=new Student();
					student.setId(db.rs.getString("id"));
					student.setName(db.rs.getString("name"));
					student.setGrade(db.rs.getString("grade"));
					student.setIsuploadanswer(db.rs.getString("isuploadanswer"));
					arrstu.add(student);					
				}								
				session.setAttribute("selectstu", arrstu);							
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
