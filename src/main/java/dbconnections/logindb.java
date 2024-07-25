package dbconnections;

import java.sql.Connection;
import java.sql.DriverManager;


public class logindb {
	private static String Driver="com.mysql.cj.jdbc.Driver";
	private static String User="root";
	private static String password="root";
	private static String Url="jdbc:mysql://localhost:3306/zomato";
	private static Connection conn;
	
	public static Connection getconnection() {
		try {
			Class.forName(Driver);
			 conn=DriverManager.getConnection(Url, User, password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	

}
