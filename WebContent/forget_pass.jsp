<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


    <link rel="stylesheet" type="text/css" href="css/login.css">

    <title>Forget Password</title>
</head>

<body>
	
    <div id="logreg-forms">
        <form action="ForgetPass" method="post" >
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Forget password</h1>
            <!-- <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required> -->
            <input type="tel" name="mob_num" id="user-phone" pattern="[0-9]{10}" class="form-control" placeholder="Mobile number"
                required autofocus>
            <section class="security">
                <select class="form-control" name="question" id="question"  required >
                    <option value="">--------- Choose the security question? ---------</option>
                    <option value="What is your favorite game?">What is your favorite game?</option>
                    <option value="Who is your teacher?">Who is your teacher?</option>
                    <option value="What is your favorite picture name?">What is your favorite picture name?</option>
                    <option value="What's your first school name?">What's your first school name?</option>
                </select>
                <input type="password" name="answer" id="answer" class="form-control" placeholder="Security answer" required>
            </section>
            <button class="btn btn-primary btn-block" type="submit">Validate</button>
            <a href="login.jsp" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
        </form>
    </div>
    <!-- js file -->
    

</body>

</html>