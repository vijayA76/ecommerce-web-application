<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"> 

<head>
  <meta charset="utf-8">
  <title>Login Page</title>
  <link rel="stylesheet" type="text/css" href="css/admin.css" />
</head>
<body>
<div class="container">
  <section id="content">
    <form action="AdminPanel" method="post">
      <h1>Admin Login</h1>
      <div>
        <input type="text" id="username" placeholder="Enter username" required name="username" />
      </div>
      <div>
        <input type="password" id="password" placeholder="Password" required name="password" />
      </div>
      <div>
        <input type="submit" value="Log in" />
        <a href="index.jsp">back</a>
      </div>
    </form><!-- form -->
    
  </section><!-- content -->
</div><!-- container -->
</body>
</html>