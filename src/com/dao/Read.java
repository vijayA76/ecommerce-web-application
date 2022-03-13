package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import com.connection.GetConnection;
import com.model.Category;
import com.model.CategoryCount;
import com.model.Enquiry;
import com.model.Product;
import com.model.User;

public class Read {
	public static String value;
	public static String userExist(String mob_num,String pass) {
		try {
			Connection con = GetConnection.connection();
			String sql="select * from ecommerce.users where mob_num=? and password=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,mob_num);
			prst.setString(2, pass);
			ResultSet rs = prst.executeQuery();
		
			if(rs.next()) {
				value="exist";
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
	public static String validUser(String mob_num,String question,String answer) {
		try {
			Connection con = GetConnection.connection();
			String sql="select * from ecommerce.users where mob_num=? and question=? and answer=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,mob_num);
			prst.setString(2, question);
			prst.setString(3, answer);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				value="exist";
			}
			else {
				value="notexist";
			}
		}catch(Exception e) {
			value="error";
			System.out.println("error"+e);
		}
		return value;
	}
	public static String readAdminData(String username,String password) {
		try {
			Connection con = GetConnection.connection();
			String sql="select * from ecommerce.admin where username=? and password=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,username);
			prst.setString(2, password);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				value="exist";
			}
			else {
				value="notexist";
			}
		}catch(Exception e) {
			value="error";
			System.out.println("error"+e);
		}
		return value;
	}
	@SuppressWarnings("finally")
	public static List<Product> getAllProduct(){
		ArrayList<Product> productResult =new ArrayList<Product>();
		try {	
			Connection con = GetConnection.connection();

//			-----------This is used to get Column name and its types----------------
/*			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ecommerce.product");
			System.out.println(rs);
			ResultSetMetaData md = rs.getMetaData();
			for(int i=1;i<=md.getColumnCount();i++) {
				System.out.println("Column name: "+md.getColumnName(i)+"\nColumn type: "+md.getColumnTypeName(i));
			}
*/			
//			-----------------------------------------------------------------------
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ecommerce.product");
//			System.out.println(rs);
			
			int i=0;
			while(rs.next()==true) {
				//System.out.println("while loop");
				
				Product p=new Product();
				p.setId(rs.getString("id"));
				p.setName(rs.getString("name"));
				p.setDescription(rs.getString("description"));
				p.setPrice(rs.getString("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setAbility(rs.getString("ability"));
				p.setDelivery(rs.getString("delivery"));
				p.setMarket(rs.getString("market"));
				p.setCategory(rs.getString("category"));
				p.setFile_nam(rs.getString("file_nam"));
				
				productResult.add(i,p);
				i++;
			}			
			
		}catch(Exception e){
			
			System.out.println(e);
		}
		
		finally
		{
			return productResult;
		}		
	}
	
	@SuppressWarnings("finally")
	public static List<User> getAllUserDetail(String mob_num){
		
		System.out.println(mob_num);
		
		
		ArrayList<User> userDetail =new ArrayList<User>();
		try {
			Connection con = GetConnection.connection();

			String sql="select * from ecommerce.users where mob_num=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,mob_num);
			ResultSet rs = prst.executeQuery();
//			System.out.println(rs);
			
			int i=0;
			while(rs.next()==true) {
				
				User u=new User();			
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
			
				userDetail.add(i,u);
				i++;
			}
		}catch(Exception e){
			
			System.out.println(e);
		}
		finally
		{
			return userDetail;
		}
	}
	
	@SuppressWarnings("finally")
	public static List<Category> getAllCategory(){
		
		ArrayList<Category> category =new ArrayList<Category>();
		try {
			Connection con = GetConnection.connection();

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ecommerce.category");
//			System.out.println(rs);
			
			int i=0;
			while(rs.next()==true) {
				
				Category c=new Category();			
				c.setName(rs.getString("name"));
				c.setDescription(rs.getString("description"));
			
				category.add(i,c);
				i++;
			}
		}catch(Exception e){
			
			System.out.println(e);
		}
		finally
		{
			return category;
		}
	}
	@SuppressWarnings("finally")
	public static List<Product> getSingleProduct(String id){
		ArrayList<Product> productResult =new ArrayList<Product>();
		try {	
			Connection con = GetConnection.connection();
		
			String sql="select * from ecommerce.product where id=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,id);
			ResultSet rs = prst.executeQuery();
//			System.out.println(rs);

			int i=0;
			while(rs.next()==true) {
	
				Product p=new Product();
				p.setId(rs.getString("id"));
				p.setName(rs.getString("name"));
				p.setDescription(rs.getString("description"));
				p.setPrice(rs.getString("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setAbility(rs.getString("ability"));
				p.setDelivery(rs.getString("delivery"));
				p.setMarket(rs.getString("market"));
				p.setCategory(rs.getString("category"));
				p.setFile_nam(rs.getString("file_nam"));
				
				productResult.add(i,p);
				i++;
			}						
		}catch(Exception e){		
			System.out.println(e);
		}	
		finally{
			return productResult;
		}		
	}
	
	@SuppressWarnings("finally")
	public static List<Product> getRelatedProduct(String category){
		ArrayList<Product> productResult =new ArrayList<Product>();
		try {	
			Connection con = GetConnection.connection();
		
			String sql="select * from ecommerce.product where category=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,category);
			ResultSet rs = prst.executeQuery();
//			System.out.println(rs);

			int i=0;
			while(rs.next()==true) {
	
				Product p=new Product();
				p.setId(rs.getString("id"));
				p.setName(rs.getString("name"));
				p.setDescription(rs.getString("description"));
				p.setPrice(rs.getString("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setAbility(rs.getString("ability"));
				p.setDelivery(rs.getString("delivery"));
				p.setMarket(rs.getString("market"));
				p.setCategory(rs.getString("category"));
				p.setFile_nam(rs.getString("file_nam"));
				
				productResult.add(i,p);
				i++;
			}						
		}catch(Exception e){		
			System.out.println(e);
		}	
		finally{
			return productResult;
		}		
	}
	@SuppressWarnings("finally")
	public static List<CategoryCount> CountCategory(String categoryName){
//		System.out.println(categoryName);
		ArrayList<CategoryCount> category_count =new ArrayList<CategoryCount>();
		try {	
			Connection con = GetConnection.connection();
		
			String sql="select count(id) from ecommerce.product where category=?";
			PreparedStatement prst=con.prepareStatement(sql);
			prst.setString(1,categoryName);
			ResultSet rs = prst.executeQuery();
			

			int i=0;
			while(rs.next()==true) {

				CategoryCount cc=new CategoryCount();
				cc.setCount(rs.getInt(1));
				category_count.add(i,cc);
				i++;
			}						
		}catch(Exception e){		
			System.out.println(e);
		}	
		finally{
			return category_count;
		}		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static ArrayList getCategory() {
		ArrayList list = new ArrayList();   

		try {
			String sql1 = "select name from ecommerce.category";
			Connection con = GetConnection.connection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();
//			System.out.println(rs);

			while (rs.next() == true) {
				String name = rs.getString("name");
				list.add(name);

			}

		} catch (Exception e) {
			System.out.println("getCategory " + e);
		}
		return list;
	}
	public static String idExist(String id) {
		try {
			String sql1 = "select * from ecommerce.product where id=?";
			Connection con = GetConnection.connection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
//			System.out.println(rs);

			if(rs.next()==true) {
				value="exist";
			}
			else {
				value="notexist";
			}
		} catch (Exception e) {
			value="error";
			System.out.println(e);
		}
		return value;
	}
	@SuppressWarnings("finally")
	public static List<Enquiry> getAllEnquiry() {
		int j = 0;
		ArrayList<Enquiry> enquiryList = new ArrayList<Enquiry>();

		try {
			String sql1 = "select * from ecommerce.enquiry";
			Connection con = GetConnection.connection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next() == true) {

				/*
				 * productResult.add(new
				 * Product(rs.getInt("id"),rs.getString("name"),rs.getString("description"),
				 * rs.getInt("price"),rs.getInt("quantity"),rs.getString("ability"),
				 * rs.getString("delivery"),rs.getString("market"),rs.getString("category")));
				 */

				Enquiry e = new Enquiry();
				e.setId(rs.getInt("id"));
				e.setName(rs.getString("name"));
				e.setSubject(rs.getString("subject"));
				e.setEmail(rs.getString("email"));
				e.setDescription(rs.getString("description"));
				e.setFile(rs.getString("file"));
				e.setDate(rs.getString("date"));

				enquiryList.add(j, e);
				j++;

			}

		} catch (Exception e) {
			System.out.println("getCategory " + e);
		}

		finally {
			return enquiryList;
		}

	}
}
