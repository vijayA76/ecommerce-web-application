package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Create;



public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		
		String value=Create.productCategory(name, description);
		System.out.println(value);
		if(value.equals("inserted")) {
			response.sendRedirect("admin_panel.jsp");
		}
		else {
			response.sendRedirect("add-category.jsp");
		}
	}

}
