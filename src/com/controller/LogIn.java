package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Read;
import com.service.Validate;

public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mob_num= request.getParameter("mob_num");
		String pass=request.getParameter("password");
		
		String result = Validate.userLogIn(mob_num,pass);
		
		if(result.equals("valid")) {
			
			String value=Read.userExist(mob_num,pass);   
			System.out.println(value);
			HttpSession session = request.getSession();
			
			if(value.equals("exist")){
				
				session.setAttribute("login2",mob_num); 
				ServletContext servletContext = getServletContext();   
				servletContext.setAttribute("mob_num", mob_num);
				response.sendRedirect("show-product.jsp");
			}
			else {
				session.setAttribute("message2", "LoginFailed");
				response.sendRedirect("login.jsp");
			}
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

}
