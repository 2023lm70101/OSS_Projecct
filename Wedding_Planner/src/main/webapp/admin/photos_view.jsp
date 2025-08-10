<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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
 <title>Gallery Photos - Administrator</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="../lightbox/css/lightbox.css">
    <style>

        p.card-text a {
            font-size: 12px;
        }
        p.card-text {
            line-height: 16px;
        }
        .btn.btn-light.mr-2.text-uppercase {
            background-color: #e2e6ea;
        }

        .card {
            -webkit-border-radius:0;
            -moz-border-radius:0;
            border-radius:0;
        }
        .card img {
            -webkit-border-radius:0;
            -moz-border-radius:0;
            border-radius:0;
        }

    </style>
</head>

<body>

<%@include file="include/sidebar.jsp"%>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h4 class="h4 mt-4">Gallery </h4>
    <div class="btn-toolbar mb-2 mb-md-0">
        <!-- <div class="btn-group mr-2">
            <a class="btn btn-primary mr-2 text-uppercase" style="font-size: 12px;font-weight: bold;" href="photos_add.php"><i class="mdi mdi-upload mr-2"></i> Upload Image</a>
        </div> -->
    </div>
</div>
<!-- <?php
if ($session->message()) {
    echo $session->message();
}
?>-->

<%
                GalleryDao gdao = new GalleryDao(FactoryProvider.getFactory());
				List<Gallery> gallery = gdao.getAllGallery();
				%>

<%-- <div class="row">
    <div class="col-md-12">
        <div class="card-columns">
            <%for (Gallery g : gallery) {%>
                <div class="card" style="position: relative;">
                    <a href="upload/gallery/<%out.println(g.getFilename());%>" data-lightbox="gallery-group-4">
                        <img class="card-img-top" src="upload/gallery/<%out.println(g.getFilename());%>" alt="Card image cap">
                    </a>
                    <div class="card-body" style="position: absolute;bottom: 0;left:0; width: 100%;background: rgba(0,0,0, 0.5);color:white;padding: 10px 10px 0 10px;">
                        <p class="card-title text-capitalize" style="font-size:14px;">
                            <% String title = g.getTitle(); out.println(title.isEmpty() ? "No Title" : title);%>
                            <span class="float-right pb-2">
                              <a href="photos_edit.jsp?id=<%out.println(g.getId());%>" class="btn btn-info btn-sm" data-toggle="tooltip" title="Edit This Picture"><i class="mdi mdi-pencil"></i></a>
                              <a href="photo_delete.jsp?id=<%out.println(g.getId());%>" class="btn btn-danger btn-sm" data-toggle="tooltip" title="Delete This Picture"><i class="mdi mdi-delete"></i></a>
                          </span>
                        </p>
                    </div>
                </div><!-- end of body -->
            <% } %>
        </div><!-- end of card columns -->
    </div>
</div><!-- end of col-md-12 --> --%>
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <% for (Gallery g : gallery) { %>
                <div class="col-md-3">
                    <div class="card" style="position: relative;">
                        <a href="upload/gallery/<%out.println(g.getFilename());%>" data-lightbox="gallery-group-4">
                            <img class="card-img-top" src="upload/gallery/<%out.println(g.getFilename());%>" alt="Card image cap" style="width: 100%; height: 250px; object-fit: cover;">
                        </a>
                        <div class="card-body" style="position: absolute;bottom: 0;left:0; width: 100%;background: rgba(0,0,0, 0.5);color:white;padding: 10px 10px 0 10px;">
                            <p class="card-title text-capitalize" style="font-size:14px;">
                                <% String title = g.getTitle(); out.println(title.isEmpty() ? "No Title" : title);%>
                                  <span class="float-right pb-2">
                                  <a href="photos_add.jsp?id=<%out.println(g.getId());%>" class="btn btn-info btn-sm" data-toggle="tooltip" title="Edit This Picture"><i class="mdi mdi-pencil"></i></a>
                                  <a href="photo_delete.jsp?id=<%out.println(g.getId());%>" class="btn btn-danger btn-sm" data-toggle="tooltip" title="Delete This Picture"><i class="mdi mdi-delete"></i></a>
                                </span> 
                            </p>
                        </div>
                    </div><!-- end of card -->
                </div><!-- end of col-md-3 -->
            <% } %>
        </div><!-- end of row -->
    </div><!-- end of col-md-12 -->
</div><!-- end of row -->


<script src="js/jquery-3.2.1.slim.min.js"></script>
<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/popper.min.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="../lightbox/js/lightbox-2.6.min.js"></script>
</body>
</html>