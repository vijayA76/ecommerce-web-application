<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="css/login.css">

    <title>Login Account</title>
</head>

<body>
    <div id="logreg-forms">
        <!------------------------------- signin account ----------------------------- -->
        <form action="LogIn" class="form-signin" method="post">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Login Account</h1>
            <div class="social-login">
                <button style="align-content: center;" class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign
                        in with Facebook</span> </button>
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign
                        in with Google+</span> </button>
            </div>
            <p style="text-align:center"> OR </p>
            <!-- <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required=""
                autofocus=""> -->
            <input type="tel" name="mob_num" pattern="[0-9]{10}" class="form-control" placeholder="Mobile number" required/>
            <input type="password" name="password" class="form-control" placeholder="Password" required="">

            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            <a href="forget_pass.jsp" id="forgot_pswd">Forgot password?</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            
            <button onClick="location.href='register.jsp'" class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i>
                Sign up New Account</button>
            <a href="index.jsp" id=""><i class="fas fa-angle-left"></i> Back</a>
        </form>

    </div>
    
</body>

</html>