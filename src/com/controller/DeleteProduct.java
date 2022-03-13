package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Delete;
import com.file.ProductImg;


public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		String value=Delete.productDetail(id);
		System.out.println(value);
		
		if(value.equals("notexist") || value.equals("error")) {
			response.sendRedirect("delete-product.jsp");
			
		}else {
			String deleteImg = ProductImg.deleteImg(value);
			System.out.println(deleteImg);
			response.sendRedirect("admin_panel.jsp");
			
		}
	}
}
