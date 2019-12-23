package cn.teacher;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.crypto.provider.RSACipher;

import cn.listen.CountLineListener;
import cn.login.DBConn;

/**
 * Servlet implementation class examinfo
 */
@WebServlet("/myexaminfo")
public class examinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public examinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int total=0,logincount=0,notlogincount=0,upanswer=0,notupanswer=0;
		//查询当前进行的考试
		String sql;
		DBConn db=new DBConn();
		HttpSession session = request.getSession(false);
		sql="select name from exam where isbeen='1'";
		try {
			db.rs=db.stmt.executeQuery(sql);
			if(db.rs.next()) {					
				session.setAttribute("examname",db.rs.getString("name")+"考试进行情况：" );			
			}
			else {
				session.setAttribute("examname","当前无进行的考试");
			}
					
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//查询学生总人数		
		sql="select count(0) from student"; 		
		try {
			db.rs=db.stmt.executeQuery(sql);
			while(db.rs.next()) {
				total=db.rs.getInt(1);
				session.setAttribute("totalnum",total);
				/*
				 * int line=CountLineListener.getActiveSessions();
				 * session.setAttribute("notloginnum",total-line);
				 */
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//查询学生登录人数
		sql="select count(0) from student where islogin='是'"; 		
		try {
			db.rs=db.stmt.executeQuery(sql);
			while(db.rs.next()) {
				logincount=db.rs.getInt(1);		
				notlogincount=total-logincount;
				session.setAttribute("loginnum",logincount);
				session.setAttribute("notloginnum",notlogincount);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//查询登录学生的答案提交人数
		sql="select count(0) from student where islogin='是' and isuploadanswer='是'"; 		
		try {
			db.rs=db.stmt.executeQuery(sql);
			while(db.rs.next()) {
				upanswer=db.rs.getInt(1);				
				session.setAttribute("upanswerNum",upanswer);
				notupanswer=logincount-upanswer;
				session.setAttribute("notupanswerNum",notupanswer);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("/ExamSystem/teacher/teacher_examinfo.jsp");  	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
