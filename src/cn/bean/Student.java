package cn.bean;

import java.util.ArrayList;

import cn.login.DBConn;

public class Student {
	private String id;
	private String name;
	private String grade;
	private String isuploadanswer;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Student(String id, String name, String grade, String isuploadanswer) {
		super();
		this.id = id;
		this.name = name;
		this.grade = grade;
		this.isuploadanswer = isuploadanswer;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String getIsuploadanswer() {
		return isuploadanswer;
	}

	public void setIsuploadanswer(String isuploadanswer) {
		this.isuploadanswer = isuploadanswer;
	}

	public ArrayList<Student> qurrystu() {
		ArrayList<Student> students =new ArrayList<Student>();		
		String sql;
		DBConn db=new DBConn();
		try
		{
			sql="select*from student";
			db.rs=db.stmt.executeQuery(sql);
			while (db.rs.next())
			{								
				String id=db.rs.getString("id");				
				String name=db.rs.getString("name");
				String grade=db.rs.getString("grade");				
				String isuploadanswer="没有";
				System.out.println(isuploadanswer+"  jcj"+name);
				Student student =new Student(id,name,grade,isuploadanswer);
				students.add(student);
			}			 
			db.con.close();
		}			
		catch (Exception e)
		{
			
		}
		db.close();	
		return students;
	}
	/*
	 * public ArrayList<Student> qurrystuIsupload() { ArrayList<Student> students
	 * =new ArrayList<Student>(); String sql; DBConn db=new DBConn(); try {
	 * sql="select*from student where "; db.rs=db.stmt.executeQuery(sql); while
	 * (db.rs.next()) { Student student =new Student();
	 * student.id=db.rs.getString("id"); student.name=db.rs.getString("name");
	 * student.grade=db.rs.getString("grade"); students.add(student); }
	 * db.con.close(); } catch (Exception e) {
	 * 
	 * 
	 * } db.close(); return students; }
	 */
}
