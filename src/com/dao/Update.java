package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.connection.GetConnection;

public class Update {
	public static String value;
	public static String userDetails(String mob_num,String password) {
		try {
			Connection con = GetConnection.connection();
			String sql="update ecommerce.users set password=? where mob_num=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1, password);
			prst.setString(2,mob_num);
			int a = prst.executeUpdate();
			if(a==1) {
				value="updated";
			}
			else {
				value="notupdated";
			}
			con.close();
		}catch(Exception e) {
			value="error";
			System.out.println("error"+e);
		}
		return value;
	}
	
	public static String updateAdmin(String username,String password,String role,String id) {
		try {
			System.out.println(username);
			Connection con = GetConnection.connection();
			String sql="update ecommerce.admin set username=?,password=?,role=? where id=?";
			PreparedStatement prst=con.prepareStatement(sql);
			
			prst.setString(1,username);
			prst.setString(2, password);
			prst.setString(3, role);
			prst.setString(4, id);
			
			int a = prst.executeUpdate();
			if(a==1) {
				value="updated";
			}
			else {
				value="notupdated";
			}
			con.close();

		}catch(Exception e) {
			value="error";
			System.out.println("error"+e);
		}
		return value;
	}
	public static String updateProductDetail(String id,String name,String description,String price,String quantity,String ability,String delivery,String market,String category,String file_nam) {
		try {
			Connection con = GetConnection.connection();
			String sql="update ecommerce.product set name=?,description=?,price=?,quantity=?,ability=?,delivery=?,market=?,category=?,file_nam=? where id=?";
			PreparedStatement prst=con.prepareStatement(sql);
			
			prst.setString(1,name);
			prst.setString(2,description);
			prst.setString(3,price);
			prst.setString(4,quantity);
			prst.setString(5,ability);
			prst.setString(6,delivery);
			prst.setString(7,market);
			prst.setString(8,category);
			prst.setString(10,id);
			
			String sql2="select file_nam from ecommerce.product where id=?";
			PreparedStatement prst2=con.prepareStatement(sql2);
			prst2.setString(1,id);
			ResultSet rs = prst2.executeQuery();
			
			if(rs.next()==true) {
				String file_name=rs.getString(1);
				if(file_nam.isEmpty()) {				
						prst.setString(9,file_name);							
				}
				else {
					prst.setString(9, file_nam);
				}
				value=file_name;
			}
			int a = prst.executeUpdate();
			if(a!=1) {
				value="notupdated";
			}
			con.close();
			
		}catch(Exception e) {
			value="error";
			System.out.println(e);
		}
		return value;
	}
	
}
