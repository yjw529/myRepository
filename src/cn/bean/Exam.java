package cn.bean;

import java.sql.SQLException;
import java.util.ArrayList;
import cn.login.DBConn;

public class Exam {
	private String name;
	private String time;
	private String founder;
	private String isupload;
	private String isautostart;
	private String isbeen;
	private String isend;
	private String isstorage;
	private String isclear;
	public Exam() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Exam(String name, String time, String founder, String isupload, String isautostart, String isbeen,
			String isend, String isstorage, String isclear) {
		super();
		this.name = name;
		this.time = time;
		this.founder = founder;
		this.isupload = isupload;
		this.isautostart = isautostart;
		this.isbeen = isbeen;
		this.isend = isend;
		this.isstorage = isstorage;
		this.isclear = isclear;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getFounder() {
		return founder;
	}
	public void setFounder(String founder) {
		this.founder = founder;
	}
	
	public String getIsupload() {
		return isupload;
	}

	public void setIsupload(String isupload) {
		this.isupload = isupload;
	}

	public String getIsautostart() {
		return isautostart;
	}

	public void setIsautostart(String isautostart) {
		this.isautostart = isautostart;
	}

	public String getIsbeen() {
		return isbeen;
	}

	public void setIsbeen(String isbeen) {
		this.isbeen = isbeen;
	}

	public String getIsend() {
		return isend;
	}

	public void setIsend(String isend) {
		this.isend = isend;
	}

	public String getIsstorage() {
		return isstorage;
	}

	public void setIsstorage(String isstorage) {
		this.isstorage = isstorage;
	}

	public String getIsclear() {
		return isclear;
	}

	public void setIsclear(String isclear) {
		this.isclear = isclear;
	}

	public int addexam() {
		int result=0;
		return result;
	}
	public ArrayList<Exam> qurryexamstill() {
		ArrayList<Exam> arrexam =new ArrayList<Exam>();		
		String sql;
		DBConn db=new DBConn();
		try
		{
			sql="select*from exam where isclear='0'";
			db.rs=db.stmt.executeQuery(sql);
			while (db.rs.next())
			{				
				Exam exam=new Exam();
				exam.name=db.rs.getString("name");				
				exam.time=db.rs.getString("time");
				exam.founder=db.rs.getString("founder");
				if(db.rs.getString("isupload").equals("1")) {
					exam.isupload="已上传";
				}else {
					exam.isupload="";
				}
				
				if(db.rs.getString("isautostart").equals("1")) {
					exam.isautostart="自动开始";
				}else {
					exam.isautostart="";
				}
				
				if(db.rs.getString("isbeen").equals("1")) {
					exam.isbeen="已开始";
				}else {
					exam.isbeen="";
				}
				
				if(db.rs.getString("isend").equals("1")) {
					exam.isend="已结束";
				}else {
					exam.isend="";
				}
				if(db.rs.getString("isstorage").equals("1")) {
					exam.isstorage="已存档";
				}else {
					exam.isstorage="";
				}
				
				if(db.rs.getString("isclear").equals("1")) {
					exam.isclear="已清理";
				}else {
					exam.isclear="";
				}					
				arrexam.add(exam);
			}			 
			db.con.close();
		}			
		catch (Exception e)
		{			
		}
		db.close();	
		return arrexam;	
	}
	public boolean qurryexamisbeenByname(String name) {
		boolean havebeen=true;				
		String sql;
		DBConn db=new DBConn();
		sql="select * from exam where name ='"+name+"'";
		
		try {
			db.rs=db.stmt.executeQuery(sql);		
			if(db.rs.next()) {		
				if("1".equals(db.rs.getString("isbeen")))
					havebeen=true;
				else {
					havebeen=false;
				}
			}
			else {				
				havebeen=false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return havebeen;
	}
	public boolean qurryexamisbeen() {
		boolean havebeen=true;				
		String sql;
		DBConn db=new DBConn();
		sql="select *from exam where isbeen ='1'";
		
		try {
			db.rs=db.stmt.executeQuery(sql);		
			if(db.rs.next()) {
				System.out.println("156");
				havebeen=true;
			}
			else {
				System.out.println("15126");
				havebeen=false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return havebeen;
	}
	public ArrayList<Exam> qurryexam() {
		ArrayList<Exam> arrexam =new ArrayList<Exam>();		
		String sql;
		DBConn db=new DBConn();
		try
		{
			sql="select*from exam";
			db.rs=db.stmt.executeQuery(sql);
			while (db.rs.next())
			{				
				Exam exam=new Exam();
				exam.name=db.rs.getString("name");
				
				exam.time=db.rs.getString("time");
				exam.founder=db.rs.getString("founder");
				if(db.rs.getString("isupload").equals("1")) {
					exam.isupload="已上传";
				}else {
					exam.isupload="";
				}
				
				if(db.rs.getString("isautostart").equals("1")) {
					exam.isautostart="自动开始";
				}else {
					exam.isautostart="";
				}
				
				if(db.rs.getString("isbeen").equals("1")) {
					exam.isbeen="已开始";
				}else {
					exam.isbeen="";
				}
				
				if(db.rs.getString("isend").equals("1")) {
					exam.isend="已结束";
				}else {
					exam.isend="";
				}
				if(db.rs.getString("isstorage").equals("1")) {
					exam.isstorage="已存档";
				}else {
					exam.isstorage="";
				}
				
				if(db.rs.getString("isclear").equals("1")) {
					exam.isclear="已清理";
				}else {
					exam.isclear="";
				}					
				arrexam.add(exam);
			}			 
			db.con.close();
		}			
		catch (Exception e)
		{
			
			
		}
		db.close();	
		return arrexam;	
	}
}
