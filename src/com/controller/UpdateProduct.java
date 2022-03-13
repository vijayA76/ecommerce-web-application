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
import javax.servlet.http.Part;

import com.dao.Update;
import com.file.ProductImg;

@MultipartConfig
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		String file_nam = part.getSubmittedFileName();
		
//		....... adding date and time in file name........
		
		if(file_nam.length()>0) {
			Calendar cal = Calendar.getInstance();
	        cal.setTime(Date.from(Instant.now()));
			
			String filename = file_nam.split("\\.")[0];
			String extension = file_nam.split("\\.")[1];		
			file_nam = String.format((filename+"-%1$tY-%1$tm-%1$td-%1$tk-%1$tS-%1$tp."+extension), cal);		
		}
//		.................................................
		
		String value=Update.updateProductDetail(id, name, description, price, quantity, ability, delivery, market, category, file_nam);
		
		if(value.equals("notupdated")) {
			response.sendRedirect("update-product.jsp");		
		}
		else {			
			ProductImg.saveImg(file_nam, part);
			ProductImg.deleteImg(value);
			response.sendRedirect("admin_panel.jsp");
		}	
	}

}
