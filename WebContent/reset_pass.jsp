<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <link rel="stylesheet" type="text/css" href="css/login.css">

    <title>Reset Password</title>
</head>

<body>
	<%
    ServletContext servletContext = getServletContext();
	String mob_num = (String) servletContext.getAttribute("mob_num");
	/* System.out.println(mob_num); */
  
  	%>
    <div id="logreg-forms">
        <form action="SetPassword" method="post">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Reset Password</h1>
            <!-- <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required> -->
            <input type="tel" id="user-phone" class="mb-3 form-control" value="<%=mob_num %>" disabled>
            <section class="security">
                <input type="password" name="password" id="user-pass" class="form-control" placeholder="New Password" required />
                <!-- <i class="bi bi-eye-slash" name="togglePassword"></i> -->
                <input type="password" name="retype_password" id="user-repeatpass" class="form-control" placeholder="Retype New Password" required />
                <!-- <i class="bi bi-eye-slash" name="togglePassword"></i> -->
            </section>
            <button id="reset_pass" class="btn btn-danger btn-block" onclick="passCheck()" type="submit">Reset
                Password</button>
                <a href="login.jsp" id=""><i class="fas fa-angle-left"></i> Cancel</a>
        </form>
    </div>
    <!-- js file -->
    <script src="js/main.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>