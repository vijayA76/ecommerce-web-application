package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.Create;
import com.file.EnquiryFile;
import com.service.Validate;

@MultipartConfig
public class Enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String description = request.getParameter("description");
		
		Part part = request.getPart("file");
		String file_nam = part.getSubmittedFileName();
		
		
		String validateImg;
		if(!file_nam.isEmpty()) {
			Validate v=new Validate();
			validateImg = v.msgFile(part);
		}else {
			validateImg="valid";
		}
		
		
		String validateData =Validate.msgData(name,email,subject,description);
		
		if(validateData.equals("valid")) {
			
			if(validateImg.equals("valid")) {
				
				EnquiryFile.saveFile(file_nam, part);
				String value=Create.enquiryDetail(name,email,subject, description,file_nam);
				
				if(value.equals("inserted")) {
					response.sendRedirect("show-product.jsp");
					
				}else {
					EnquiryFile.deleteFile(file_nam);
					response.sendRedirect("customer-enquiry.jsp");
				}
			
			}else if(validateImg.isEmpty()) {
				String value2=Create.enquiryDetailz(name,email,subject, description);
				
				if(value2.equals("inserted")) {
					response.sendRedirect("show-product.jsp");
					
				}else {
					response.sendRedirect("customer-enquiry.jsp");
				}
			}
			else {
				response.sendRedirect("customer-enquiry.jsp");
			}
		}else {
			response.sendRedirect("customer-enquiry.jsp");
		}
	}

}
