<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><img src="images/logo/WPMSlogo.png" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pricing.jsp">Pricing</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="real-weddings.jsp">Inspiration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="gallery.jsp">Gallery</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About us</a>
                </li>
            </ul>
            <div class="form-inline mr-2">
                <!-- <a class="mr-2" href="submit">
                    <i class="mdi mdi-star-outline" id="review" aria-hidden="true"></i> Write a review</a> -->
                <!--<a class="btn btn-sm my-2 my-sm-0" href="login.php" data-toggle="modal" data-target="#loginModal">-->
                <a class="btn btn-sm my-2 my-sm-0" href="login.jsp"><i class="mdi mdi-star-outline" id="review" aria-hidden="true"></i>
                    Admin Login
                </a>
                <a class="btn btn-sm my-2 my-sm-0 mr-2 loginbtn" href="sign_up.jsp">Join Now</a>
            </div>
        </div>
    </div>
</nav>
