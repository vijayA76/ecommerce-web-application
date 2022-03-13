<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    String message=(String)session.getAttribute("message");
    if(message!=null)
    {
    	out.println(message);
    }
    
    session.removeAttribute("message");
    %>