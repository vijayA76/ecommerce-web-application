package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.GetConnection;

public class Create {
	public static String value;
	public static String userDetails(String name,String mob_num,String email,String pass,String question,String answer) {
		try{			
			Connection con = GetConnection.connection();
			
			String str="insert into ecommerce.users(name,mob_num,email,password,question,answer)values(?,?,?,?,?,?)";
			PreparedStatement prst=con.prepareStatement(str);
			 
			prst.setString(1, name);
			prst.setString(2, mob_num);
			prst.setString(3, email);
			prst.setString(4, pass);
			prst.setString(5,question);
			prst.setString(6, answer);
			int a=prst.executeUpdate();
			
			if(a==1) {
				value="inserted";
			}
			else {
				value="notinserted";
			}
			}catch(Exception e) {
				value="error";
				System.out.println("error"+e);
			}
		return value;
	}
	public static String productDetail(String id,String name,String description,String price,String quantity,String ability,String delivery,String market,String category,String file_nam) {
		try{
			Connection con = GetConnection.connection();
			
			String str="insert into ecommerce.product(id,name,description,price,quantity,ability,delivery,market,category,file_nam)values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement prst=con.prepareStatement(str);
			 
			prst.setString(1, id);
			prst.setString(2, name);
			prst.setString(3, description);
			prst.setString(4, price);
			prst.setString(5,quantity);
			prst.setString(6, ability);
			prst.setString(7, delivery);
			prst.setString(8, market);
			prst.setString(9, category);
			prst.setString(10, file_nam);
			int a=prst.executeUpdate();
			
			if(a==1) {
				value="inserted";
			}
			else {
				value="notinserted";
			}
		}catch(Exception e) {
			value="error";
			System.out.println("error"+e);
		}
		return value;
	}
	public static String productCategory(String name,String description) {
		try{
			
			Connection con = GetConnection.connection();
			
			String str="insert into ecommerce.category(name,description)values(?,?)";
			PreparedStatement prst=con.prepareStatement(str);
			 
			prst.setString(1, name);
			prst.setString(2, description);

			int a=prst.executeUpdate();
			
			if(a==1) {
				value="inserted";
			}
			else {
				value="notinserted";
			}
			}catch(Exception e) {
				value="error";
				System.out.println("error"+e);
			}
		return value;
	}
	public static String enquiryDetail(String name,String email,String subject,String description,String file_nam) {
		try{
			
			Connection con = GetConnection.connection();
			
			String str="insert into ecommerce.enquiry(name,email,subject,description,file)values(?,?,?,?,?)";
			PreparedStatement prst=con.prepareStatement(str);
			 
			prst.setString(1, name);
			prst.setString(2, email);
			prst.setString(3, subject);		
			prst.setString(4, description);
			prst.setString(5, file_nam);

			int a=prst.executeUpdate();
			
			if(a==1) {
				value="inserted";
			}
			else {
				value="notinserted";
			}
			}catch(Exception e) {
				value="error";
				System.out.println("error"+e);
			}
		return value;
	}
	public static String enquiryDetailz(String name,String email,String subject,String description) {
		try{
			
			Connection con = GetConnection.connection();
			
			String str="insert into ecommerce.enquiry(name,email,subject,description)values(?,?,?,?)";
			PreparedStatement prst=con.prepareStatement(str);
			 
			prst.setString(1, name);
			prst.setString(2, email);
			prst.setString(3, subject);		
			prst.setString(4, description);

			int a=prst.executeUpdate();
			
			if(a==1) {
				value="inserted";
			}
			else {
				value="notinserted";
			}
			}catch(Exception e) {
				value="error";
				System.out.println("error"+e);
			}
		return value;
	}
}
