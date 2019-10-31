package cn.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;

public class login extends HttpServlet {
	{
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;	
	// ×¢²áÇý¶¯
	
	try {
		 Class.forName("com.mysql.jdbc.Driver");	
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examsystem","root", "");
		
		st = conn.createStatement();        
		// ²éÑ¯
		String sql = "select * from adminlogin";
		rs = st.executeQuery(sql);
		// ±éÀú
		while (rs.next()) {
			String name = rs.getString("username");
			String password = rs.getString("password");

			System.out.println("name == " + name + "   password == " + password);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	}
}
