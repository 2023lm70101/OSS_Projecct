<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Administrator Login Your Account</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">
    <style>
        body {
            background: url("../bgw.jpg");
            /* background-color: black; */
            background-size: 100%;
        }
        
        .form-signin {
            background: rgba(255, 255,255, 0.4);
        }
    </style>
</head>

<body class="text-center">
<form class="form-signin" action="LoginServlet" method="post">
    <a href="../index.php"><img class="mb-4" src="../images/logo/WPMSlogo.png" width="190" ></a>
    <h5 class="h5 mb-3 font-weight-normal" style="color:#222">Login As Administrator</h5>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="text" id="inputEmail" name="email" class="form-control" placeholder="Email Address" required autofocus>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>

    <button class="btn btn-md btn-danger btn-block" type="submit" name="login">Log In</button>
    <p class="mt-5 mb-3 text-muted">&copy; <?php echo date('Y')?></p>
</form>
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $('.your-checkbox').prop('indeterminate', true);
</script>
</body>
</html>