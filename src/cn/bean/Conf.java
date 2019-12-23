package cn.bean;

import java.sql.*;

import cn.login.DBConn;

public class Conf {
	private String time;
	private String pageSize;
	private String manualTime;
	private String minSize;
	private String maxSize;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPageSize() {
		return pageSize;
	}
	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}
	public String getManualTime() {
		return manualTime;
	}
	public void setManualTime(String manualTime) {
		this.manualTime = manualTime;
	}
	public String getMinSize() {
		return minSize;
	}
	public void setMinSize(String minSize) {
		this.minSize = minSize;
	}
	public String getMaxSize() {
		return maxSize;
	}
	public void setMaxSize(String maxSize) {
		this.maxSize = maxSize;
	}
	
	//修改系统配置
	public void save(){
		String sql = "SELECT * FROM systemconf";
		String time = null;
		System.out.println(sql);
		ResultSet rs;
		DBConn db=new DBConn();	
		try{
			rs = db.executeQuery(sql);
			while(rs.next()){
				time = rs.getString("time");
			}
			db.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		String sqlUpdate = "UPDATE systemconf SET time= '" + getTime() +
				"',pageSize= '" + getPageSize() +
				"',manualTime= '" + getManualTime() +
				"',minSize= '" + getMinSize() +
				"',maxSize= '" + getMaxSize() + "' WHERE time= '" + time + "'";
		try {
			db.executeUpdate(sqlUpdate);
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
