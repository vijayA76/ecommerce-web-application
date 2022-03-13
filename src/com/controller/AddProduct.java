package com.controller;

import java.io.IOException;

import java.time.Instant;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.Create;
import com.file.ProductImg;
import com.service.Validate;


@MultipartConfig
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		String price=request.getParameter("price");
		String quantity=request.getParameter("quantity");
		String ability=request.getParameter("ability");
		String delivery=request.getParameter("delivery");
		String market=request.getParameter("market");
		String category=request.getParameter("category");
		
		
		
		Part part = request.getPart("product");
		Calendar cal = Calendar.getInstance();
        cal.setTime(Date.from(Instant.now()));
		
		String file_nam=part.getSubmittedFileName();
//		System.out.println(part.getName());
		
		String filename = file_nam.split("\\.")[0];
		String extension = file_nam.split("\\.")[1];		
		String file_name = String.format((filename+"-%1$tY-%1$tm-%1$td-%1$tk-%1$tS-%1$tp."+extension), cal);		
//		System.out.println(file_name); 
		
		
		String validateImg = Validate.imgSize(part);
//		System.out.println(validateImg);
		if(validateImg.equals("valid"))
		{
			String value=Create.productDetail(id, name, description, price, quantity, ability, delivery, market,category,file_name);
//			System.out.println(value);
			
			if(value.equals("inserted")) 
			{
				String var=ProductImg.saveImg(file_name, part);
				if(var.equals("saved")) {
//					System.out.println(var+ "image");
					
					session.setAttribute("message", "Product Added Successfully");
					
					response.sendRedirect("admin_panel.jsp");
				}
				else {
					response.sendRedirect("add-product.jsp");
				}
			}
			else {
				response.sendRedirect("add-product.jsp");
			}
		}
		else if(validateImg.equals("invalidsize")) 
		{
			response.sendRedirect("add-product.jsp");
		}	
		else if(validateImg.equals("invalidformat"))
		{
			response.sendRedirect("add-product.jsp");
		}
		else
		{
			response.sendRedirect("add-product.jsp");		
		}
	}
}