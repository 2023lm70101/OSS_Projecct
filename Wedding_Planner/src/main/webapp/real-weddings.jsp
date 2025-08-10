<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Inspiration Couples</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/datepicker.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            background: #fff;
            margin-top:6%;
        }

       /* img.card-img-top {
            width: 100%;
            height: 350px;
            -webkit-border-radius:0;
            -moz-border-radius:0;
            border-radius:0;
        }

        .card-body {
            background: #EDEDED;
            padding: 1rem;
        }

        .font-custom {
            font-size: 16px;
        }

        .color_gray {
            color: #555;
        }*/
       /* .color_light {
            color: #999;
            font-weight: 600;
        }
        h6.font-custom {
            color: #555;
        }
        a.btn-stamp:hover {
            text-decoration: none;
        }
        img.image-stock {
            width: 86px;margin-left: 6px;margin-bottom: 6px;
        }
        .card-style {
            background: none;border:0;
        }*/
    </style>
</head>
<body>
<%@include file="include/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="h2 text-center mb-0">THE LATEST INSPIRATION</h4>
            <p class="text-muted text-center">Discover the best ideas, tips and articles to inspire your wedding.</p>
        </div>
        <%
				PostWeddingDao pwdao = new PostWeddingDao(FactoryProvider.getFactory());
				List<PostWedding> pwlist = pwdao.getAllInformation();
				%>
           <div class="card-columns">
            <%
					for (PostWedding pw : pwlist) {
					%>
               <div class="card">
                <img class="card-img-top" src="admin/upload/events/<%out.println(pw.getPreviewImage());%>" alt="Card image cap">
                <div class="card-body">
                    <a href="wedding_details.jsp?id=<%out.println(pw.getId());%>" class="btn-stamp">
                        <h6 class="card-title mt-0 mb-0 text-center font-weight-bold font-custom text-uppercase"><%out.println(pw.getTitle());%></h6>
                        <p class="card-text mt-0 mb-0 text-center color_gray">Wedding</p>
                        <p class="card-text mt-0 mb-0 text-center color_light text-capitalize"><i class="mdi mdi-map-marker"></i>
                            <%out.println(pw.getLocation());%></p>
                    </a>
                </div>
            </div> 
            <%} %>
            <!-- <a href="real-weddings.jsp" class="btn btn-lg btn-block btn-explore">EXPLORE MORE INSPIRATION</a> -->
        </div>

       
    </div>
</div>
<%@include file="include/Footer.jsp" %>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>