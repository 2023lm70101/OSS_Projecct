<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>About-Wedding Planner</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="lightbox/css/lightbox.css">
    <link rel="stylesheet" href="css/carousel.css">
    <style>
        body {
            font-family: 'Open Sans', 'Roboto', sans-serif;
            line-height: 1.5em;
            margin-bottom: 2%;
            margin-top: 3%;
            width: 100%;
            overflow-x: hidden;
            background: #f1f1f1;
        }

        .navbar-light .navbar-brand {
            color: #1a1a1a;
            font-weight: bold;
            line-height: 22px;
        }

        .navbar {
            font-weight: 700;
            padding: 12px;
            font-style: normal;
            font-size: 14px;
            text-transform: uppercase;
            color: black;
            border-bottom: 1px solid #ddd;
        }

        li.nav-item > a.nav-link {
            color: black !important;
            font-weight: bold !important;
        }

        #review {
            font-size: 16px;
            font-weight: bold;
            margin-right: 5px;
        }

        .form-inline > a.mr-2, .btn.btn-sm.my-2.my-sm-0 {
            color: black;
            font-size: 14px;
            font-weight: 700;
            margin-left: 10px;
        }

        .form-inline > a.mr-2:hover, .btn.btn-sm.my-2.my-sm-0:hover {
            color: #17b4bc;
            text-decoration: none;
        }

        a.btn.btn-sm.my-2.my-sm-0.mr-2.loginbtn {
            background: #dc3545;
            font-size: 14px;
            color: white;
            padding: 5px;
            border: 2px solid transparent;
            width: 85px;
        }

        a.btn.btn-sm.my-2.my-sm-0.mr-2.loginbtn:hover {
            background: white;
            border: 2px solid #dc3545;
            color: #dc3545;
        }

        .navbar-expand-lg .navbar-nav .nav-link {
            padding-right: .9rem;
        }

        .navbar-brand {
            margin-left: 20px;
            width: 200px;
        }

        .form-control {
            font-size: 12px;
            border-radius: 0;
            margin-top: 0;
        }



    </style>
</head>
<body>
<%@include file="include/navbar.jsp" %>

      <div class="container">
            <div class="row">
                 <div class="col-lg-12 text-center">
                    <h1>About Wedding Planner Website</h1>
                    <div class="bg-white p-4">
                      <div class="contact-information">
                 <ul class="list-group list-unstyled">
				 <li class="list-group-item text-center text-uppercase"><h6><b> At Wedding Planner, our mission is to transform your wedding dreams into an extraordinary reality.</b></h6 ></li>
				 <li class="list-group-item text-center text-uppercase"><h6><b>We do more than just plan weddings.</b></h6></li>
						
				 <li class="list-group-item text-center text-uppercase"><h6><b>we tell stories, create unforgettable moments, and protect your special love story.</b></h6></li>
						
		   		 <li class="list-group-item text-center text-uppercase"><br><h6><b>Our goal is simple but meaningful.</b></h6></li>
				
				 <li class="list-group-item text-center text-uppercase"><br><h6><b>To create a wedding experience that mirrors your uniqueness, celebrates your love, and goes beyond all your expectations.</b></h6></li>	
						
			    </ul>               
                      </div>
                   </div>
              </div>
          </div>
     </div>
     <%@include file="include/Footer.jsp" %>
</body>
</html>                

