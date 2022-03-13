<%
         String login=(String)session.getAttribute("login2");
          
         if(login==null)
         {
        	 response.sendRedirect("login.jsp");
        	 return;
         }  

%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.model.*"%>
<%@ page import="com.dao.Read"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<!-- Boxicons -->
<link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css'
	rel='stylesheet'>
<!-- Custom StyleSheet -->
<link rel="stylesheet" href="css/show-product.css" />
<link rel="stylesheet" href="css/show-product-detail.css" />

<title>Home: Ecommerce Websites</title>

</head>
<body>

	<%
		ServletContext servletContext = getServletContext();
		String mob_num = (String) servletContext.getAttribute("mob_num");
		/* System.out.println(mob_num); */

		List<User> list = Read.getAllUserDetail(mob_num);
		User user = list.get(0);
	%>
	<%--   <%=user.getName() %>
  <%=user.getEmail() %> --%>

	<!-- Navigation -->
	<nav class="nav">
	        <div class="wrapper container">
	            <div class="logo"><a href="">
	                    <img src="./image/logo.png" alt="">
	                </a>
	            </div>
	            <ul class="nav-list">
	                <div class="top">
	                    <label for="" class="btn close-btn"><i class="fas fa-times"></i></label>
	                </div>
	                <li><a href="show-product.jsp">Home</a></li>
	                <li><a href="products.html">Products</a></li>
	                <li><a href="">Page</a></li>
	                <li>
	                    <a href="" class="desktop-item"><%=user.getName() %><span><i class="fas fa-chevron-down"></i></span></a>
	                    <input type="checkbox" id="showdrop2" />
	                    <label for="showdrop2" class="mobile-item"><%=user.getName() %><span><i
	                                class="fas fa-chevron-down"></i></span></label>
	                    <ul class="drop-menu2">
	                        <li>
	                        	<a href=""><form action="LogOut" method="post">
									<input type="hidden" name="logout" value="user">
									<button>log out</button>
								</form>
								</a>
								
							</li>
	                        <li><a href="">Page 404</a></li>
	                    </ul>
	                </li>
	                
	                <!-- icons -->
	                <li class="icons">
	                    <a href="cart.html">
	                        <span>
	                            <img src="./image/shoppingBag.svg" alt="" />
	                            <small class="count d-flex">0</small>
	                        </span>
	                    </a>
	                    <span><img src="./images/search.svg" alt="" /></span>
	                </li>
	            </ul>
	            <label for="" class="btn open-btn"><i class="fas fa-bars"></i></label>
	        </div>
	    </nav>

	<%
		String id = (String) servletContext.getAttribute("id");
		/* System.out.print(id); */
		List<Product> list2 = Read.getSingleProduct(id);
		Product product = list2.get(0);
	%>

	<!-- Product Details -->
	<section class="section product-detail">
		<div class="details container">
			<div class="left">

				<div class="main">
					<img src="./image/product/<%=product.getFile_nam()%>" alt="" />
				</div>
				<div class="thumbnails">
					<%
						for (int i = 0; i < 4; i++) {
					%>
					<div class="thumbnail">
						<img src="./image/product/<%=product.getFile_nam()%>" alt="show" />
					</div>
					<%
						}
					%>
				</div>
			</div>
			<div class="right">
				<span>Home/<%=product.getCategory()%></span>
				<h1><%=product.getName()%></h1>
				<div class="price"><%=product.getPrice()%></div>
				<form>
					<div>
						<select>
							<option value="Select Quantity" selected disabled>
								Select Quantity</option>
							<option value="1">32</option>
							<option value="2">42</option>
							<option value="3">52</option>
							<option value="4">62</option>
						</select> <span><i class="fas fa-chevron-down"></i></span>
					</div>
				</form>

				<form class="form">
					<input type="text" placeholder="1" /> <a href="cart.html"
						class="addCart">Add To Cart</a>
				</form>
				<h3>Product Detail</h3>
				<p><%=product.getDescription()%></p>
			</div>
		</div>
	</section>

	<!-- Related Products -->

	<section class="section related-products">
		<div class="title">
			<h2>Related Products</h2>
			<span>Select from the premium product brands and save plenty
				money</span>
		</div>
		<div class="product-layout container">
			<%
				String category = (String) servletContext.getAttribute("category");
				List<Product> list3 = Read.getRelatedProduct(category);
				for (Product prod : list3) {
			%>
			<div class="product">
				<div class="img-container">
					<img src="./image/product/<%=prod.getFile_nam()%>" alt="" />
					<div class="addCart">
						<i class="fas fa-shopping-cart"></i>
					</div>

					<ul class="side-icons">
						<span><i class="fas fa-search"></i></span>
						<span><i class="far fa-heart"></i></span>
						<span><i class="fas fa-sliders-h"></i></span>
					</ul>
				</div>
				<div class="bottom">
					<%-- <a href=""><%=prod.getName() %></a> --%>
					<form action="SingleProductDetail" method="post"
						style="width: 100%;">
						<input type="hidden" name="id" value="<%=prod.getId()%>">
						<input type="hidden" name="category"
							value="<%=prod.getCategory()%>">
						<button style="width: 100%;"><%=prod.getName()%></button>
					</form>
					<div class="price">
						<span><%=prod.getPrice()%></span>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</section>


	<!-- Footer -->
	<footer id="footer" class="section footer">
		<div class="container">
			<div class="footer-container">
				<div class="footer-center">
					<h3>EXTRAS</h3>
					<a href="#">Brands</a> <a href="#">Gift Certificates</a> <a
						href="#">Affiliate</a> <a href="#">Specials</a> <a href="#">Site
						Map</a>
				</div>
				<div class="footer-center">
					<h3>INFORMATION</h3>
					<a href="#">About Us</a> <a href="#">Privacy Policy</a> <a href="#">Terms
						& Conditions</a> <a href="#">Contact Us</a> <a href="#">Site Map</a>
				</div>
				<div class="footer-center">
					<h3>MY ACCOUNT</h3>
					<a href="#">My Account</a> <a href="#">Order History</a> <a
						href="#">Wish List</a> <a href="#">Newsletter</a> <a href="#">Returns</a>
				</div>
				<div class="footer-center">
					<h3>CONTACT US</h3>
					<div>
						<span> <i class="fas fa-map-marker-alt"></i>
						</span> 73 Mauliya, Khajura Phulaich, Azamgarh 276126
					</div>
					<div>
						<span> <i class="far fa-envelope"></i>
						</span> vij8922@gmail.com
					</div>
					<div>
						<span> <i class="fas fa-phone"></i>
						</span> 932-853-4536
					</div>
					<div class="payment-methods">
						<img src="./image/payment.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<!-- Custom Scripts -->
	<script src="show-product.js"></script>
</body>
</html>