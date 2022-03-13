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
		<title>Admin: IdSelect-Product</title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/admin-style.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	</head>
	<body>
	<br>
		<div class="container">
			<div class="form form-outer">
				<p class="p-2">Update- Select Id Product</p>
				<h5 style="color:red; font-family: consolas; text-align:center;"><%@include file="Component/message.jsp" %></h5>

				<form action="IdSelectUpdateProduct" method="post">
					<fieldset>
						<label>Id *</label><br>
		 				<input class="form-control" placeholder="Enter Product Id" type="text" name="id" required="required"><br>
		 				<button class="btn btn-danger" style="width: 90%;">Validate</button>
	 				</fieldset>
				</form>
	         	<a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 90%;">Home</button></a>
			</div>
		</div>
	</body>
</html>