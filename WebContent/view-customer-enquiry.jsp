<%
         String login=(String)session.getAttribute("login");
          
         if(login==null)
         {
        	 response.sendRedirect("admin.jsp");
        	 return;
         }
         


%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.model.*"%>
<%@ page import ="com.dao.Read"%>
<%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin: Enquiry Section</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/admin-style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">  
        
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>

        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    <div class="m-2">
    <h5 style="text-align: center; color: green; font-family: cursive; margin-top: 20px;">Welcome to Enquiry Section</h5>
	<div class="">                	
		<a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 90%; margin: 0 5%;">Home</button></a>
    </div>
    </div> 
       
    <%

		List<Enquiry> list = Read.getAllEnquiry();

		if (list.isEmpty()) {
	 %>
        <h6 style="color: blue; font-family: consolas; text-align:center;">No Enquiry</h6>
     <% 
     }
	 else
		{
	 %>
        <section style="background-color: #f1f3f4; padding: 0.25px 0;">
            
            <div id="container" class="container">
                <ul id="list">
                
                <%
                  for (Enquiry product : list) {
                %>
                    <li class="enquiry">
                        <small class="mobile"><b>Name : </b><%=product.getName() %></small><small class="email"><b>Email Id: </b><%=product.getEmail() %></small>
                        <br><br>
                        <div class="description">
                        	<span class=enquiry-msg>-----<%=product.getSubject() %>-----</span>
                            <span class=enquiry-msg><%=product.getDescription() %></span>
                            <time><b>Date &amp; time: </b><em><%=product.getDate() %></em></time>
                        </div>
                        
                        <form action="DownloadEnquiry" method="post">
				        <input type="hidden" value="<%=product.getFile() %>" name="download">
                        <button class="btn-download btn btn-light "><i class="fas fa-download"></i> Download Attachment</button>
				        </form>
				        
				        <form action="DeleteCustomerEnquiry" method="post">
				        	<input type="hidden" value="<%=product.getId() %>" name="id">
	                        <button class="btn-delete btn btn-danger mt-2">Delete</button>
                        </form>
                        
                    </li>
                    
                    
                    <%}
		          }
                %>
                </ul>
				
            </div>
            <br><br>
        </section>
    </body>
</html>