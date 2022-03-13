package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Update;


public class SetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String password= request.getParameter("password");
		String retype_password=request.getParameter("retype_password");
		System.out.println(password+"----R"+retype_password);
		
		
		ServletContext context = getServletContext();
		String mob_num =(String) context.getAttribute("mob_num");
		
		if(password.equals(retype_password)) {
			String value2=Update.userDetails(mob_num,password);
			System.out.println(value2);
			
			if(value2.equals("updated")) {
				response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("set_pass.jsp");
			}				
		}
		else {
			response.sendRedirect("set_pass.jsp");
		}
	}

}
