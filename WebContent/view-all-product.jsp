<%
         String login=(String)session.getAttribute("login");        
         if(login==null)
         {
        	 response.sendRedirect("admin.jsp");
        	 return;
         }
%>
<%@ page import="com.dao.Read" %>
<%@ page import="com.model.Product" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
	<br>
	<div class="container">
		<div>                	
			<a href="admin_panel.jsp"><button class="btn btn-dark mt-2" style="width: 25%; margin: 0 5%;">Admin Panel</button></a>
	  	</div>
	  	<br>
		<div class="pc-table">
			<table class="table table-hover" border="1" style="width: 100%; text-align: center;">
				<thead>
					<tr>
						<th scope="col">Product Id</th>
						<th scope="col">Name</th>
						<th scope="col">Price</th>
						<th scope="col">Quantity</th>
						<th scope="col">Delivery ability</th>
						<th scope="col">Delivery Time</th>
						<th scope="col">Market</th>
						<th scope="col">Image</th>
					</tr>
				</thead>
				<tbody>
				<%
					List<Product> list=Read.getAllProduct();
	  				for(Product product: list)
	  				{
				%>
					<tr>
				     <th scope="row"><%=product.getId()%></th>
					 <td><%= product.getName() %></td>
					 <td><%= product.getPrice()%></td>
					 <td><%= product.getQuantity()%></td>
					 <td><%= product.getAbility()%></td>
					 <td><%= product.getDelivery()%></td>
					 <td><%= product.getMarket()%></td>
					 <td><img class="image-fluid" style="width: 100px; hight: auto;" alt="Product-Image" src="image/product/<%=product.getFile_nam()%>"></td>
					</tr>
				</tbody>
				<%
					}
				%>
			</table>
		</div>
		<div class="m-table">
			<table class="table table-hover" border="1" style="width: 100%; text-align: center;">
				<thead>
					<tr>
						<th scope="col">Product Id</th>
						<th scope="col">Name</th>
						<th scope="col">Price</th>
						<th scope="col">Image</th>
					</tr>
				</thead>
				<tbody>
				<%
					for (Product product : list) {			
				%>
						<tr>
					     <th scope="row"><%=product.getId()%></th>
						 <td><%= product.getName() %></td>
						 <td><%= product.getPrice()%></td>
						 <td><img class="image-fluid" style="width: 100px; hight: auto;" alt="Product-Image" src="image/product/<%=product.getFile_nam()%>"></td>
						</tr>
				</tbody>
				<%
					}
				%>
			</table>
		</div>	
	</div>
</body>
</html>