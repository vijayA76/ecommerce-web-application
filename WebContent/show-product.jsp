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
    
<%@ page import ="com.model.*"%>
<%@ page import ="com.dao.Read"%>
<%@ page import ="java.util.*"%>
  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Boxicons -->
  	<link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
     <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/show-product.css" />
    
	<title>Home: Ecommerce Websites</title>

</head>
<body>

  <%
    ServletContext servletContext = getServletContext();
	String mob_num = (String) servletContext.getAttribute("mob_num");
	/* System.out.println(mob_num); */
    
    List<User> list=Read.getAllUserDetail(mob_num);
    User user=list.get(0);   
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
                <li><a href="customer-enquiry.jsp">Enquiry</a></li>
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

    <!-- PRODUCTS -->

    <section class="section products">
        <div class="products-layout container">
            <div class="col-1-of-4">
                <div>
                    <div class="block-title">
                        <h3>Category</h3>
                    </div>
					<form action="CategoryFilter" method="post">
	                    <ul class="block-content">
	                    	<%
							List<Category> list3=Read.getAllCategory();
	            		    List<CategoryCount> list4=null;
	
		  					for(Category category: list3)
		  					{
							%>
	                        <li>
	                           
	                            <input type="checkbox" name="bike" value="<%=category.getName()%>">
	                            <label for="">
	                                <span><%=category.getName() %></span>
	                                <%
	                                list4=Read.CountCategory(category.getName());
	                            		
	                            		CategoryCount count=list4.get(0);
	                                 %>
	                                <small>[<%=count.getCount() %>]</small>
	                            </label>
	                        </li>
	
	                        <%} %>
	                    </ul>
	                   <button class="btn btn-warning button"><em>>>> Apply <<<</em></button> 
                    </form>
                </div>

                <div>
                    <div class="block-title">
                        <h3>Brands</h3>
                    </div>

                    <ul class="block-content">
                        

                        <li>
                            <input type="checkbox" name="" id="">
                            <label for="">
                                <span> Accessories</span>
                                <small>(3)</small>
                            </label>
                        </li>

                        <li>
                            <input type="checkbox" name="" id="">
                            <label for="">
                                <span>Valentino</span>
                                <small>(3)</small>
                            </label>
                        </li>

                        <li>
                            <input type="checkbox" name="" id="">
                            <label for="">
                                <span>Hogan</span>
                                <small>(3)</small>
                            </label>
                        </li>

                        <li>
                            <input type="checkbox" name="" id="">
                            <label for="">
                                <span>Moreschi</span>
                                <small>(3)</small>
                            </label>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-3-of-4">
                <form action="">
                    <div class="item">
                        <label for="sort-by">Sort By</label>
                        <select name="sort-by" id="sort-by">
                            <option value="title" selected="selected">Name</option>
                            <option value="number">Price</option>
                            <option value="search_api_relevance">Relevance</option>
                            <option value="created">Newness</option>
                        </select>
                    </div>
                    <a href="">Apply</a>
                </form>

                <div class="product-layout">
					
					<%
					List<Product> list2=Read.getAllProduct();
	  				for(Product product: list2)
	  				{
					%>
                    <div class="product">
                        <div class="img-container">
                            <img alt="Product-Image" src="image/product/<%=product.getFile_nam()%>">
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
                            <%-- <a href="show-product-detail.jsp"><%= product.getName() %></a> --%>
	                        <form action="SingleProductDetail" method="post" style="width: 100%;">
								<input type="hidden" name="id" value="<%=product.getId()%>">
								<input type="hidden" name="category" value="<%=product.getCategory()%>">
								<button  style="width: 100%;"><%= product.getName() %></button>
							</form>
                            
                            <div class="price">
                                <span><%= product.getPrice()%></span>
                            </div>
                        </div>
                    </div>
                    <%
					}
					%>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="footer" class="section footer">
        <div class="container">
            <div class="footer-container">
                <div class="footer-center">
                    <h3>EXTRAS</h3>
                    <a href="#">Brands</a>
                    <a href="#">Gift Certificates</a>
                    <a href="#">Affiliate</a>
                    <a href="#">Specials</a>
                    <a href="#">Site Map</a>
                </div>
                <div class="footer-center">
                    <h3>INFORMATION</h3>
                    <a href="#">About Us</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms & Conditions</a>
                    <a href="#">Contact Us</a>
                    <a href="#">Site Map</a>
                </div>
                <div class="footer-center">
                    <h3>MY ACCOUNT</h3>
                    <a href="#">My Account</a>
                    <a href="#">Order History</a>
                    <a href="#">Wish List</a>
                    <a href="#">Newsletter</a>
                    <a href="#">Returns</a>
                </div>
                <div class="footer-center">
                    <h3>CONTACT US</h3>
                    <div>
                        <span>
                            <i class="fas fa-map-marker-alt"></i>
                        </span>
                        73 Xyz, Abcefg Ijklmnop, Rstuv 231234
                    </div>
                    <div>
                        <span>
                            <i class="far fa-envelope"></i>
                        </span>
                        example@xyz.com
                    </div>
                    <div>
                        <span>
                            <i class="fas fa-phone"></i>
                        </span>
                        123-456-7890
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
    <script src="js/show-product.js"></script>
</body>
</html>