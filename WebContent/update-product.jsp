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
<%@ page import = "com.model.Product" %>
<%@ page import="com.dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
	<head>
	<br>
	<h5 style="color:red; font-family: consolas; text-align:center;"><%-- <%@include file="Component/message.jsp" %> --%></h5>
	
		<title>Admin: Update-Product</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/admin-style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">  
        
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script> 
	</head>
	<body>
	<br>
        <div class="container">
            <div class="form form-outer">
				<% 
				
				ServletContext servletContext = getServletContext();
				String id = (String) servletContext.getAttribute("id");
				List<Product> list2=Read.getSingleProduct(id);
				Product product = list2.get(0);
				
	            ArrayList list=Read.getCategory();
				Read.getSingleProduct(id);
				
	            if(list.isEmpty())
	            {
	            %>
	           <h5 style="text-align:center; font-family: consolas; color: red;">Enter category first</h5>
	            <%}
	            else
	            {
	            
	            %>
	 			<form action="UpdateProduct" method="post" enctype="multipart/form-data">
	 				<fieldset>
	      				<p class="p-2">Enter Product Information</p>
	      					
						<label>Unique Id *</label>
						<input type="text" disabled value=<%=product.getId()%> name="id" class="form-control" placeholder="Unique" required="required"><br>
						
						<label>Name *</label>
						<input type="text" value=<%=product.getName()%> name="name" class="form-control" placeholder="Enter Product Name"><br>
						
						<label>Description *</label>
						<textarea  name="description" class="form-control"  placeholder="description..." style="width: 90%;" rows="10" cols="60" required="required"><%=product.getDescription() %></textarea><br>
						
						<label>Price *</label>
						<input type="number" value=<%=product.getPrice()%> name="price" class="form-control" placeholder="0" required="required"><br>
						
						<label>Minimum Order Quantity *</label>
						<input type="text" value=<%=product.getQuantity()%> name="quantity" class="form-control" placeholder="0" required="required"><br>
						
						<label>Supply ability *</label>
						<input type="text" value=<%=product.getAbility()%> name="ability" class="form-control" placeholder="0" required="required"><br>
						
						<label>Delivery Time *</label>
						<input type="text" value=<%=product.getDelivery()%> name="delivery" class="form-control" placeholder="0" required="required"><br>
						
						<label>Main Domestic Market *</label>
						<input type="text" value=<%=product.getMarket()%> name="market" class="form-control" placeholder="Enter Market Name" required="required"><br>
	       
				        <label>Enter Category *</label><br>
			            <select name="category" class="form-control" style="width: 90%;" required="required">
	            			<option disabled selected value="">--select category--</option>
				            <%
				            for(int i=0; i<list.size();i++)
				            {
				            %>
				            <option value="<%=list.get(i)%>" > <%=list.get(i) %>  </option>
				            <%
				            }
				            %>
	             		</select>
	             		<br>
						
				         <label>Product Image <em>(size: 300-5000 KB) [ Optional ]</em></label><br>
				         <label><em>previous file name:</em> <%=product.getFile_nam()%></label>
				         <input type="file" name="product" placeholder="add product" style="width: 90%;">
				       	<br><br>
				         
				         <button class="btn btn-warning" style="width: 90%;">Update Product</button>
	         
	            <%
	            }
	            %>
	      			</fieldset>
	      		</form>
	      		<a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 90%;">Home</button></a>
	      		
			</div>
			<br><br>
		</div>
	</body>
</html>