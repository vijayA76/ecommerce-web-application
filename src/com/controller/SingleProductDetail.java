package com.controller;

import java.io.IOException;
//import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.dao.Read;
//import com.model.Product;


public class SingleProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String category=request.getParameter("category");
		
		//System.out.println(id);
		//Read.getSingleProduct(id);
		
		ServletContext s = getServletContext();
		s.setAttribute("id", id);
		s.setAttribute("category",category);
		response.sendRedirect("show-product-detail.jsp");
		
	}
}
