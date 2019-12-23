package cn.exam;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.Exam;
import cn.login.DBConn;

@WebServlet("/myDeleteExam")
public class deleteexam extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public deleteexam() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String sql;
		DBConn db=new DBConn();		
		sql="delete from exam where name='" + name + "'";
		db.executeUpdate(sql);
		response.sendRedirect("/ExamSystem/admin/admin_clearexam.jsp");
		
		/*DBConn db=new DBConn();
		String examname = request.getParameter("examname");
		String id = request.getParameter("id");
		Exam exam = DaoFactory.getExamDaoInstance().search(examname);
		exam.setIsclear("1");
		DaoFactory.getExamDaoInstance().update(exam, examname);
		DaoFactory.getExamDaoInstance().delete(examname);
		try {
			String infosql = "delete from information";
			db.executeUpdate(infosql);
			db.close();
			String sql = "delete from student where exam='" + examname + "'";
			db.executeUpdate(sql);
			db.close();
			String savePath = this.getServletContext().getRealPath("/WEB-INF/" + examname);
			File file = new File(savePath);
			// 判断上传文件的保存目录是否存在
			if (file.exists()) {// 判断文件是否存在
				if (file.isFile()) {// 判断是否是文件
					file.delete();// 删除文件
				} 
				if (file.isDirectory()) {// 否则如果它是一个目录
					File[] files = file.listFiles();// 声明目录下所有的文件 files[];
					for (int i = 0; i < files.length; i++) {// 遍历目录下所有的文件
						boolean b=files[i].delete();// 把每个文件用这个方法进行迭代
						System.out.println(files[i].getName()+":"+b);
					}
					System.out.println(file.getName());
					file.delete();// 删除文件夹
				}
			} else {
				System.out.println("所删除的文件不存在");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
			if(id.equals("1"))
				response.sendRedirect("teacher/teacher_afterexam.jsp");
			else
				response.sendRedirect("admin/admin_clearexam.jsp");*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}