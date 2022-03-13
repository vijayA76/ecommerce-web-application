package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Delete;
import com.file.EnquiryFile;


public class DeleteCustomerEnquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		System.out.println(id);
		
		HttpSession session = request.getSession();
		String ce = Delete.customerEnquiry(id);
		System.out.println(ce);
		
		if(!ce.isEmpty()) {
			String deleteFile = EnquiryFile.deleteFile(ce);
			System.out.println(deleteFile);
			if(deleteFile.equals("filedeleted"))
			{
				session.setAttribute("message", "Customer Enquiry deleted Successfully");
			    response.sendRedirect("view-customer-enquiry.jsp");
			}
			else if(deleteFile.equals("filenotexist"))
			{
				 session.setAttribute("message", "Customer Enquiry does not Exist");
				response.sendRedirect("view-customer-enquiry.jsp");
			}
			else if(deleteFile.equals("error"))
			{
				 session.setAttribute("message", "Something went wrong, Check your database");
				response.sendRedirect("view-customer-enquiry.jsp");
			}
			else
			{
				session.setAttribute("message", "Something went Wrong");
				response.sendRedirect("view-customer-enquiry.jsp");
			}
		}else {
			session.setAttribute("message", "Customer Enquiry deleted Successfully");
			response.sendRedirect("view-customer-enquiry.jsp");
		}
		
	}

}
