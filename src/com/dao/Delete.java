package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.connection.GetConnection;
import com.file.ProductImg;

public class Delete {
	public static String value;
	public static String productDetail(String id) {
		try {
			Connection con = GetConnection.connection();
			
			String sql1="select file_nam from ecommerce.product where id=?";
			PreparedStatement prst1=con.prepareStatement(sql1);
			prst1.setString(1,id);
			ResultSet rs1 = prst1.executeQuery();

					
			if(rs1.next()) {
				value=rs1.getString(1);
				String sql2="delete from ecommerce.product where id=?";
				PreparedStatement prst2=con.prepareStatement(sql2);
				prst2.setString(1,id);
				prst2.executeUpdate();
			}
			else {
				value="notexist";
			}		
		}catch(Exception e) {
			value="error";
			System.out.println("error "+e);
		}
		return value;
	}
	public static String productCategory(String category) {
		try {
			Connection con = GetConnection.connection();
			
			String sql1="select file_nam from ecommerce.product where category=?";
			PreparedStatement prst1=con.prepareStatement(sql1);
			prst1.setString(1,category);
			ResultSet rs1 = prst1.executeQuery();
			System.out.println(rs1);
			
			
			String sql3="delete from ecommerce.category where name=?";
			PreparedStatement prst3=con.prepareStatement(sql3);
			prst3.setString(1,category);

					
			if(rs1.next()==false) {			
				prst3.executeUpdate();
				value="deleted";
					
			}
			else {
				String sql2="delete from ecommerce.product where category=?";
				PreparedStatement prst2=con.prepareStatement(sql2);
				prst2.setString(1,category);
				do {
					
					System.out.println(rs1.getString("file_nam"));
					String file_nam=rs1.getString("file_nam");
					
					ProductImg.deleteImg(file_nam);
										
				}while(rs1.next());
								
				prst2.executeUpdate();			
				prst3.executeUpdate();			
				value="deleted";		
			   }
		}catch(Exception e) {
			value="error";
			System.out.println("error "+e);
		}
		
		return value;
	}
	public static String customerEnquiry(String id) {
		try {
			Connection con = GetConnection.connection();
			
			String sql1="select file from ecommerce.enquiry where id=?";
			PreparedStatement prst1=con.prepareStatement(sql1);
			prst1.setString(1,id);
			ResultSet rs1 = prst1.executeQuery();

					
			if(rs1.next()) {
				value=rs1.getString(1);
				System.out.println("hello");
				String sql2="delete from ecommerce.enquiry where id=?";
				PreparedStatement prst2=con.prepareStatement(sql2);
				prst2.setString(1,id);
				prst2.executeUpdate();
			}
			else {
				value="notexist";
			}		
		}catch(Exception e) {
			value="error";
			System.out.println("error "+e);
		}
		return value;
	}
}
