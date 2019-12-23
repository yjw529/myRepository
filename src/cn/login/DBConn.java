package cn.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn
{
	String driverName="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/ExamSystem";
	String usename="root";
	String password="";
	public Connection con=null;
	public Statement stmt=null;
	public ResultSet rs=null;
//	String sql=null;
	public DBConn()
	{
		try
		{
			Class.forName(driverName);
			con=DriverManager.getConnection(url,usename,password);
			stmt=con.createStatement();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	} 
	public ResultSet executeQuery(String sql)
	{
		try
		{
			rs=stmt.executeQuery(sql);
		} catch (Exception e)
		{
			// TODO: handle exception
		}
		return rs;
	}
	public PreparedStatement executePreparedStatement(String sql){
		PreparedStatement ps = null;
		try {
			ps = ((Connection) stmt).prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ps;
	}
	public int executeUpdate(String sql)
	{
		int rowCount=0;
		try
		{
			rowCount=stmt.executeUpdate(sql);
		} catch (Exception e)
		{
			// TODO: handle exception
		}
		
		return rowCount;
	}
	public void close()
	{
		try
		{
			con.close();
			con=null;
		} catch (Exception e)
		{
			// TODO: handle exception
		}
	}
}

