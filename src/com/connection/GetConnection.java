package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	public static Connection con;
	
	public static Connection connection() {
		try {
//			Before Deployment change the url,user,password
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/";	   		
			String user = "root";
			String pass = "";
			
			con = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

}
