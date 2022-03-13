<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS / Js -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="css/login.css">

    <title>Register Account</title>
</head>
<body>

    <div id="logreg-forms">
        <!------------------------------- register account ----------------------------- -->
        <form action="SignUp" method="post">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Register Account</h1>
            <div class="social-login">
                <button style="align-content: center;" class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign
                        up with Facebook</span> </button>
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign
                        up with Google+</span> </button>
            </div>
            <p style="text-align:center"> OR </p>

            <input type="text" name="name" id="user-name" class="form-control" placeholder="Full name" required />
            <input type="email" name="email" id="user-email" class="form-control" placeholder="Email address" required />
            <input type="tel" name="mob_num" id="user-phone" pattern="[0-9]{10}" class="form-control" placeholder="Mobile number"
                required />

            <input type="password" name="pass" id="user-pass" class="form-control" placeholder="Password" required />
            <input type="password" id="user-repeatpass" class="form-control" placeholder="Retype Password" required
                />
            <section class="security">
                <select class="form-control" name="question"  required >
                    <option value="">--------- Choose the security question? ---------</option>
                    <option value="What is your favorite game?">What is your favorite game?</option>
                    <option value="Who is your teacher?">Who is your teacher?</option>
                    <option value="What is your favorite picture name?">What is your favorite picture name?</option>
                    <option value="What's your first school name?">What's your first school name?</option>
                </select>
                <input type="password" name="answer" id="answer" class="form-control" placeholder="Security answer" required
                    />
            </section>


            <div class="col-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="gridCheck" required>
                  <label class="form-check-label" for="gridCheck">
                    Check me out
                  </label>
                </div>
              </div>


            <button class="btn btn-primary btn-block" onclick="passCheck()" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            <a href="login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
        </form>
        <br>

    </div>
    <!-- js file -->
    <script src="js/main.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>