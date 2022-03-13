package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Create;
import com.service.Validate;


public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name= request.getParameter("name");
		String mob_num= request.getParameter("mob_num");
		String email= request.getParameter("email");
		String pass= request.getParameter("pass");
		String question=request.getParameter("question");
		String answer= request.getParameter("answer");
		System.out.println(name+"---"+mob_num +"---"+email+"---"+ pass +"---"+question +"---"+answer);
		
		
		String result = Validate.userData(name, mob_num, email, pass, answer);
		if(result.equals("valid")) {
			String value=Create.userDetails(name, mob_num, email, pass, question, answer);
			if(value.equals("inserted")) {
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("register.jsp");
			}
		}
		else {
			response.sendRedirect("register.jsp");
		}
	}

}
