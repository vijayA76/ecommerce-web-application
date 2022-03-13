package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Delete;



public class DeleteCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("category");
		
		String value=Delete.productCategory(name);
		System.out.println(value);
		if(value.equals("deleted")) {
			response.sendRedirect("admin_panel.jsp");
		}
		else {
			response.sendRedirect("delete-category.jsp");
		}
		
		
	}

}
