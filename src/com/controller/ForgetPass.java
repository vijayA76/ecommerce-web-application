package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Read;
import com.service.Validate;


public class ForgetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mob_num= request.getParameter("mob_num");
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		System.out.println(mob_num +"---"+question +"---"+answer);
		
		ServletContext context = getServletContext();
		context.setAttribute("mob_num", mob_num);
		
		String result = Validate.validatePass(mob_num,answer);
		System.out.println(result);
		
		if(result.equals("valid")) {
			String value=Read.validUser(mob_num,question,answer);
			System.out.println(value);
			
			if(value.equals("exist")){
				
				response.sendRedirect("reset_pass.jsp");				
			}
			else {
				response.sendRedirect("forget_pass.jsp");
			}
		}
		else {
			response.sendRedirect("forget_pass.jsp");
		}
	}
}
