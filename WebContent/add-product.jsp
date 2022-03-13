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
        <title>Admin: Add-Product</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/admin-style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">  
        
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>  
	</head>
	<body>
		<br>
       <div class="container">
            <div class="form form-outer">
            	<br>
            	<h5 style="color:red; font-family: consolas; text-align:center;"><%@include file="Component/message.jsp" %></h5>
            	
           		<form action="AddProduct" method="post" enctype="multipart/form-data">
		            <% 
		            List<Category> list=Read.getAllCategory();
		            if(list.isEmpty())
		            {
		            %>
		           	<h4 style="color: blue; text-align: center; width: 90%; font-family: Consolas;">Category list is Empty!</h4>
		            <%}
		            else
		            {
		            %>
					<fieldset>
						<p class="p-2">Enter Product Information</p>
						<label>Unique Id</label>
						<input type="text" name="id" class="form-control" placeholder="Shouldn't be same to other product" required="required"><br>
						
						<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="Enter Product Name" required="required"><br>
						
						<label>Description</label>
						<textarea name="description" class="form-control" placeholder="description..." style="width: 90%;" rows="10" cols="60" required="required"></textarea><br>
						
						<label>Price</label>
						<input type="number" name="price" class="form-control" placeholder="0" required="required"><br>
						
						<label>Minimum Order Quantity</label>
						<input type="text" name="quantity" class="form-control" placeholder="0" required="required"><br>
						
						<label>Supply ability</label>
						<input type="text" name="ability" class="form-control" placeholder="0" required="required"><br>
						
						<label>Delivery Time</label>
						<input type="text" name="delivery" class="form-control" placeholder="0" required="required"><br>
						
						<label>Main Domestic Market</label>
						<input type="text" name="market" class="form-control" placeholder="Enter Market Name" required="required"><br>

						<label>Enter Category</label>
				        <select name="category" class="form-control" style="width: 90%;" required="required">     	
	        				<option disabled selected value="">--select category--</option>
				            <%
				            for(Category category: list)
		  					{
				            %>
				        <option value="<%=category.getName() %>"><%=category.getName() %></option>
				            <%
				            }
				            %>
             			</select><br>
             			
                        <label>Product Image *<em>(size: 300-5000 KB)</em></label>
         				<input type="file"  name="product" placeholder="add product" required="required"><br>
         				
                        <button class="btn btn-primary mt-2" style="width: 90%;">Add Product</button>
				            
      				</fieldset>
      				<%
				            }
				      %>
      			</form>
      	        <a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 90%;">Home</button></a>
      		</div>
      	</div>
      	<br><br>
	</body>
</html>