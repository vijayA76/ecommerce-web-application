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
<!DOCTYPE html>
<html>
	<head>
		<title>Admin: Add-Category</title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/admin-style.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
		
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	</head>
	<body>
		<br><br>
		<div class="container">
			<div class="form form-outer">
			<h5 style="color:red; font-family: consolas; text-align:center;"><br><%@include file="Component/message.jsp" %></h5>
			
				<form action="AddCategory" method="post">
	        		<fieldset>
	        			<p class="p-2">Add Category</p>
	        			
	        			<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="e.g laptop, mobile, etc." required="required">
						<br>
						
						                              
						<label>Description</label>
						<textarea name="description" class="form-control" placeholder="description..." required="required" style="width: 90%;"rows="10" cols="60"></textarea>
						<br>
				
	         			<button class="btn btn-primary" style="width: 90%;">Add Category</button>
	         		</fieldset>	
	         	</form>
	         	<a href="admin.jsp"><button class="btn btn-dark mt-2" style="width: 90%;">Home</button></a>
			</div>
		</div>
		<br><br>	
	</body>
</html>