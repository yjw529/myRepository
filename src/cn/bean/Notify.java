package cn.bean;

import java.sql.SQLException;
import java.util.ArrayList;

import cn.login.DBConn;

public class Notify {
	private String content;
	private String sneder;
	private String time;
	public Notify() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Notify(String content, String sneder, String time) {
		super();
		this.content = content;
		this.sneder = sneder;
		this.time = time;
	}



	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getSneder() {
		return sneder;
	}
	public void setSneder(String sneder) {
		this.sneder = sneder;
	}
	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}

	public ArrayList<Notify> qurrynotify() {
		ArrayList<Notify> notifies=new ArrayList<Notify>();		
		String sql;
		DBConn db=new DBConn();
		sql="select * from notify";
		try {
			db.rs=db.stmt.executeQuery(sql);
			while(db.rs.next()) {
				Notify notify=new Notify(db.rs.getString("content"),db.rs.getString("name"),db.rs.getString("time"));		
				notifies.add(notify);
			}
			db.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		db.close();	
		return notifies;
	}
}
