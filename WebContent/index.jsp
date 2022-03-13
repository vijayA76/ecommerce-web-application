<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin" />
  <link rel="preload" as="style"
    href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&amp;display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&amp;display=swap"
    media="print" onload="this.media='all'" />
  <noscript>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&amp;display=swap" />
  </noscript>
  <link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
  <link href="css/main.css?ver=1.2.0" rel="stylesheet">
  <noscript>
    <style>
      .tf-header {
        background: url('image/1-hero-image.jpg') no-repeat center center;
      }
    </style>
  </noscript>

<title>ecommerce- Home</title>
</head>

<body>
<header class="tf-header" data-parallax="scroll" data-image-src="image/1-hero-image.jpg">
    <nav class="navbar py-5 navbar-dark">
      <div class="container">
        <h1><a class="navbar-brand" href="/">Ecommerce Website</a></h1>
        <div id="navbar">
          <ul class="nav pull-right">
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="#product">Products</a></li>
            <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <div class="col-md-7 col-sm-12">

          <h2>Incredible India <br> for our Product <br>Goods & Services</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-7 col-sm-12">
          <!-- <p class="mt-4">" Welcome the challenges. Look for the opportunities in every situation to learn and grow in wisdom " — Brian Tracy</p> -->
          <p class="mt-4">" You can tell a man is clever by his answers. You can tell a man is wise by his questions." –
            Naguib Mahfouz</p>
        </div>
      </div>
      <div class="row no-gutters">
        <!-- <div class="col-md-4 col-sm-12 tf-hh-col">
          <input class="mt-1 form-control" type="email" placeholder="*Your Email Address">
        </div> -->
        <div class="col-md-3 col-sm-12"><a class="tf-header-heading-btn a btn btn-primary btn-block mt-1"
            href="login.jsp">LogIn/Register Your Account</a></div>
      </div>
    </div>
  </header>
  <div class="page-content">
    <div>
      <div class="tf-work-section">
        <div class="container" id="product">
          <h2 class="h3">Goods &#38; Services</h2>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-4 col-sm-12 pt-2">
              <div class="card"><img class="img-fluid card-img-top" src="image/model1.jpg" alt="1-start-simple" />
                <div class="card-body">
                  <p class="text-muted">this is a laptop</p><a class="card-link" href="#">Learn More</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 pt-2">
              <div class="card"><img class="img-fluid card-img-top" src="image/bicycle2.png" alt="2-start-simple" />
                <div class="card-body">
                  <p class="text-muted">this product is bicycle</p><a class="card-link" href="#">Learn More</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 pt-2">
              <div class="card"><img class="img-fluid card-img-top" src="image/model2.jpg" alt="3-start-simple" />
                <div class="card-body">
                  <p class="text-muted">this product is laptop</p><a class="card-link" href="#">Learn More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="tf-quotes-section">
        <div class="carousel slide mt-5" id="tf-carousel" data-ride="carousel">
          <ol class="carousel-indicators">
            <li class="active" data-target="#tf-carousel" data-slide-to="0"></li>
            <li data-target="#tf-carousel" data-slide-to="1"></li>
            <li data-target="#tf-carousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active" style="background-image: url('image/5-start-simple-slider.jpg');">
              <div class="carousel-caption">
                <p class="slider-text-1">"Amazing product, Start Simple cares for their customers and helps them at
                  every step.<br>I am a satisfied customer!"</p>
                <p class="slider-text-2">Walter George<br>CEO, Founder of Gupply</p>
              </div>
            </div>
            <div class="carousel-item" style="background-image: url('image/6-start-simple-slider.jpg');">
              <div class="carousel-caption">
                <p class="slider-text-1">"Start Simple thinks outside the box and offers solutions through the creative
                  process of developing apps.<br>They helped me succeed!"</p>
                <p class="slider-text-2">Nancy Young<br>Managing Director, Amazingly</p>
              </div>
            </div>
            <div class="carousel-item" style="background-image: url('image/7-start-simple-slider.jpg');">
              <div class="carousel-caption">
                <p class="slider-text-1">"Simple yet elegant solution to showcase our product and services.<br>Couldn't
                  have asked for more!"</p>
                <p class="slider-text-2">Glenn Harrold<br>Marketing Manager</p>
              </div>
            </div>
          </div><a class="carousel-control-prev" href="#tf-carousel" role="button" data-slide="prev"><span
              class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a
            class="carousel-control-next" href="#tf-carousel" role="button" data-slide="next"><span
              class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
        </div>
      </div>
      <div class="tf-contact-section">
        <div class="container" id="contact">
          <h2 class="h4">Tell us About Your Requirement</h2>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-12">
              <h3 class="h5">Contact us</h3>
              <form action="" method="POST">
                <div class="row no-gutters">
                  <div class="col-lg-6 col-md-12 col-sm-12 tf-contact-col">
                    <input class="bg-light form-control" type="text" name="name" placeholder="*Name"
                      required="required" />
                  </div>
                  <div class="col-lg-6 col-md-12 col-sm-12 pb-2">
                    <input class="bg-light form-control" type="email" name="_replyto" id="email-input"
                      placeholder="*Your Email Address" required="required" />
                  </div>
                </div>
                <div class="row pb-2 no-gutters">
                  <div class="col-md-12 col-sm-12">
                    <textarea class="bg-light mb-2 form-control" name="message" placeholder="*Your Message" rows="5"
                      required="required"></textarea>
                  </div>
                </div>
                <button class="btn btn-primary" id="mySubmit" onclick="rejectEmail()" type="submit">Submit</button>
              </form>
            </div>
            <div class="col-md-6 col-sm-12 float-right text-right">
              <h3 class="h5">Address</h3><span>73, Mauliya, Khajura<br /> Phulaich, Azamgarh<br />Utter Pradesh, 276126
              </span>
              <p></p>
              <h3 class="h5">Phone</h3>
              <p>+91 9328534536</p>
              <h3 class="h5">Email</h3>
              <p>vij8922@gmail.com</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="bg-dark py-4 mt-5 tf-footer">
    <div class="container text-light">
      <div class="row">
        <div class="col-md-6 col-sm-12">&copy; VIJAY_A76 - Java Programmer. All rights reserved.</div>
        <div class="col-md-6 col-sm-12 text-right tf-design">Design - <a href="" target="_blank">VIJAY</a></div>
      </div>
    </div>
  </footer>
  <script src="js/jquery.slim.min.js?ver=1.2.0"></script>
  <script src="js/bootstrap.bundle.min.js?ver=1.2.0"></script>
  <script src="js/parallax.min.js?ver=1.2.0"></script>
  <script src="js/main.js?ver=1.2.0"></script>

</body>
</html>