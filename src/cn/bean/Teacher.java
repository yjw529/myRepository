package cn.bean;

import java.util.ArrayList;

import cn.login.DBConn;

public class Teacher {
	private String username;
	private String password;
	private String realname;
	private String isadmin;
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teacher(String username, String password, String realname, String isadmin) {
		super();
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.isadmin = isadmin;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(String admin) {
		this.isadmin = admin;
	}
	public ArrayList<Teacher> qurrytch() {
		ArrayList<Teacher> arrteacher =new ArrayList<Teacher>();		
		String sql;
		DBConn db=new DBConn();
		try
		{
			sql="select*from teacherlogin";
			db.rs=db.stmt.executeQuery(sql);
			while (db.rs.next())
			{				
				Teacher teacher =new Teacher();
				teacher.username=db.rs.getString("username");				
				teacher.password=db.rs.getString("password");
				teacher.realname=db.rs.getString("realname");
				teacher.isadmin=db.rs.getString("isadmin");
				arrteacher.add(teacher);
			}			 
			db.con.close();
		}			
		catch (Exception e)
		{
			
			
		}
		db.close();	
		return arrteacher;
	}
}
