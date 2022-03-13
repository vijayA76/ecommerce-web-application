package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Read;


public class IdSelectUpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String idExist = Read.idExist(id);
		//request.getRealPath("");
		if(idExist.equals("exist")) {
			ServletContext s = getServletContext();
			s.setAttribute("id", id);
			//s.setAttribute("file_path", );
			response.sendRedirect("update-product.jsp");
		}
		else {
			response.sendRedirect("select-id-update-product.jsp");
		}
	}
}
