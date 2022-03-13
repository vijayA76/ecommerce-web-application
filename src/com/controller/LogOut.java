package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
			String value=request.getParameter("logout");
			HttpSession session = request.getSession();
			if(value.equals("admin")) {
				session.removeAttribute("login");		
				response.sendRedirect("admin.jsp");
			}
			else if(value.equals("user")){
				session.removeAttribute("login2");		
				response.sendRedirect("login.jsp");
			}
		}
}
