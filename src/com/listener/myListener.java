package com.listener;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.connection.GetConnection;

public class myListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("Destroy");
    }

    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("Intialized");
    	PreparedStatement pstmt;
    	Connection con=null;
		String sql; 
		
		try {
			con = GetConnection.connection();
			sql = "CREATE DATABASE ecommerce";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("Database-> ecommerce -- Created");
		} catch (Exception e) {
			System.out.println("Already exist database 'ecommerce'");
		} finally { 

			sql = "CREATE TABLE ecommerce.product(" 
					+ "id varchar(10) NOT NULL PRIMARY KEY,"
					+ "  name varchar(25) NOT NULL,"
					+ "  description varchar(1000) NOT NULL," + "  price int(11) NOT NULL,"
					+ "  quantity int(11) NOT NULL," + "  ability varchar(30) NOT NULL,"
					+ "  delivery varchar(30) NOT NULL," + "  market varchar(50) NOT NULL,"
					+ "  category varchar(50) NOT NULL," + "  file_nam varchar(50) NOT NULL UNIQUE)";
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.executeUpdate();
				System.out.println("Table-> ecommerce/product -- Created");
			} catch (Exception e) {
				System.out.println("Table 'product' already exists in database ecommerce");
			}finally {

				sql = "CREATE TABLE ecommerce.users(sr_num int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY," 
						+ "  name varchar(15),"
						+ "  mob_num varchar(15) NOT NULL UNIQUE,"
						+ "  email varchar(50) NOT NULL UNIQUE," 
						+ "  password varchar(15) NOT NULL,"
						+ "  question varchar(50) NOT NULL,"
						+ "  answer varchar(15) NOT NULL)";
				try {
					pstmt = con.prepareStatement(sql);
					pstmt.executeUpdate();
					System.out.println("Table-> ecommerce/users -- Created");
				} catch (Exception e) {
					System.out.println("Table 'users' already exists in database ecommerce");
				} finally {

					sql = "CREATE TABLE ecommerce.category ("
							+ "name varchar(15) NOT NULL PRIMARY KEY," + "  description varchar(500) NOT NULL)";
					try {
						pstmt = con.prepareStatement(sql);
						pstmt.executeUpdate();
						System.out.println("Table-> ecommerce/category -- Created");
					} catch (Exception e) {
						System.out.println("Table 'category' already exists in database ecommerce");
					} finally {

						sql = "CREATE TABLE ecommerce.admin (" 
								+ "id varchar(15) NOT NULL PRIMARY KEY,username varchar(30) NOT NULL,"
								+ "password varchar(20) NOT NULL,role varchar(20) NOT NULL)";
						try {
							pstmt = con.prepareStatement(sql);
							pstmt.executeUpdate();
							System.out.println("Table-> ecommerce/admin -- Created");
						} catch (Exception e) {
							System.out.println("Table 'admin' already exists in database ecommerce");
						} finally {
							
							sql="INSERT INTO ecommerce.admin (id,username,password,role) VALUES"+
									"(1, 'vijay', '12345','admin')";
							try
							{
								pstmt = con.prepareStatement(sql);
								pstmt.executeUpdate();
								System.out.println("Username-> ecommerce/admin -- Inserted");							 
							}catch (Exception e) {
								// TODO: handle exception
								System.out.println("Id Already exist in ecommerce.admin");
							}finally{
								sql = "CREATE TABLE ecommerce.enquiry (" + "  id int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY," 
										+ "  name varchar(20) NOT NULL,"+ "  email varchar(30) NOT NULL,"
										+ "  subject varchar(50) NOT NULL," + "description varchar(1000) NOT NULL,"
										+ "  file varchar(100) UNIQUE,"
										+ "  date timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() )";
								try {
									pstmt = con.prepareStatement(sql);
									pstmt.executeUpdate();
									System.out.println("Table-> ecommerce/enquiry -- Created");
								}catch(Exception e) {
									System.out.println("Table 'enquiry' already exists in database ecommerce");
								}finally {
//									System.out.println("done");
								}
							}
						}
					}
				}
			}
		}
    }	
}
