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

    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.8/css/boxicons.min.css' rel='stylesheet'>
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/customer.css" />


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

    <!-- Navigation -->
    <header class="header">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <!-- <img src="images/logo.png" alt="logo" width="30" height="30"
                    class="d-inline-block align-top"> -->
                    <img src="image/logo2.png" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav d-flex ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="show-product.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Enquiry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Page</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                <%=user.getName() %>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li>
		                        	<a href=""><form action="LogOut" method="post">
										<input type="hidden" name="logout" value="user">
										<button>log out</button>
									</form>
									</a>
							
								</li>
                                <li><a class="dropdown-item" href="#">Page 404</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="icons">
                            <a href="cart.html">
                                <span>
                                    <img src="image/shoppingBag.svg" alt="" />
                                    <small class="count">0</small>
                                </span>
                            </a>
                            <span><img src="./image/search.svg" alt="" /></span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>




    <section class="conta">
        <div class="content">

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10">


                        <div class="row justify-content-center">
                            <div class="col-md-6">

                                <h3 class="heading mb-4">Let's talk about everything!</h3>
                                <p>Write somthing  .  . . . 
                                </p>

                                <p><img src="image/undraw-contact.svg" alt="Image" class="img-fluid"></p>


                            </div>
                            <div class="col-md-6">

                                <form action="Enquiry" class="mb-5" method="post" id="contactForm" name="contactForm" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" name="name" id="name"
                                                placeholder="Your name" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <input type="email" class="form-control" name="email" id="email"
                                                placeholder="Email" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" name="subject" id="subject"
                                                placeholder="Subject" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <textarea class="form-control" name="description" id="description" cols="30"
                                                rows="7" placeholder="Write your message"
                                                style="height: 200px;" required></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                        	<label><b>Attachement</b><em>(Max 500KB,image,pdf,doc accepted
												only)</em></label>
                                            <input type="file" class="form-control" name="file" id="file"
                                                />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button type="submit" class="btn btn-dark">Send Message</button>
                                            <span class="submitting" required></span>
                                        </div>
                                    </div>
                                </form>

                                <div id="form-message-warning mt-4"></div>
                                <div id="form-message-success">
                                    Your message was sent, thank you!
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">

        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; 2021 <a class="border-bottom" href="#">RX100- Ninja_A76</a>, All Right Reserved.
                    Designed By <a class="border-bottom" href="#">VIJAY</a><br><br>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <div class="footer-menu">
                        <a href="">Home | </a>
                        <a href="">Help | </a>
                        <a href="">FQAs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>