<% 
	String login=(String)session.getAttribute("login");
	if(login==null) {
		response.sendRedirect("admin.html");
		return;
	}
%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.Read" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Admin: Delete-Category</title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/admin-style.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
		
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	</head>
	<body>
	
		<br><br>
		<div class="container">
			<div class="form form-outer">
		
		<% 
		List<Category> list=Read.getAllCategory();
        if(list.isEmpty())
        {
	     %>
	     	<br><br>
           	<h4 style="color: blue; text-align: center; width: 90%; font-family: Consolas;">Category list is Empty!</h4>
	     <%
	     	}
	        else
	        {
	     %>

				<form action="DeleteCategory" method="post">
					<fieldset>
						<p class="p-2">Delete Category</p>
						<label>Category List *</label> 
						<select name="category" class="form-control" required="required">
                            <option disabled selected value="">--select category--</option>
                        <% for(Category category: list) { %>
                            <option value="<%=category.getName() %>">
                                <%=category.getName() %>
                            </option>
                            <% } %>
						</select> <br>
						<button class="btn btn-danger" style="width: 100%;">Delete</button>
						<%
							}
						%>
					</fieldset>
				</form>
	         	<a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 100%;">Home</button></a>
			</div>
		</div>
	</body>
</html>