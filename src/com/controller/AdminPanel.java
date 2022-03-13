package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Read;
import com.service.Validate;


public class AdminPanel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username= request.getParameter("username");
		String password=request.getParameter("password");
		
		String result = Validate.adminData(username,password);
		
		if(result.equals("valid")) {
			
			String value=Read.readAdminData(username,password);
			HttpSession session = request.getSession();
			
			if(value.equals("exist")){
				
				session.setAttribute("login",username);
				response.sendRedirect("admin_panel.jsp");
			}
			else {
				session.setAttribute("message", "LoginFailed");
				response.sendRedirect("admin.jsp");
			}
			
		}else {
			response.sendRedirect("admin.jsp");
		}
	}

}
