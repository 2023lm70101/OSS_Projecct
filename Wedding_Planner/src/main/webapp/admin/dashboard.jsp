<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    } 
%>
<%
    GalleryDao galleryService = new GalleryDao(FactoryProvider.getFactory());
    UserDao accountDetailsService = new UserDao(FactoryProvider.getFactory());
    WeddingBookDao bookingService = new WeddingBookDao(FactoryProvider.getFactory());
    EventsDao eventWeddingService = new EventsDao(FactoryProvider.getFactory());

    int userCount = accountDetailsService.countUser();
    int bookingCount = bookingService.countBooking();
    int galleryCount = galleryService.countAll();
    int eventPostCount = eventWeddingService.countAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Dashboard - Administrator</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <style>
        table.table.table-striped.table-bordered.table-sm {
            font-size:12px;
        }
        .tooltip {
            font-size: 12px;
        }

        td.special {
            padding: 0;
            padding-top: 8px;
            padding-left:6px;
            padding-bottom:6px;
            margin-top:5px;
            text-transform: capitalize;
        }
        .datepicker {
            font-size: 12px;
        }
        .alert-success {
            color: #fff;
            background-color: #49C8AE;
            border-color: none;
        }
        div.dataTables_wrapper div.dataTables_paginate {
            font-size: 11px;
        }

        .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 5px;
    padding: 0px 9px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
    transition: .3s linear all;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  

  .card-counter.success{
    background-color: #66bb6a;
    color: #FFF;
  }  

  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }  

  .card-counter i{
    font-size: 5em;
    opacity: 0.9;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    text-transform: capitalize;
    opacity: 0.8;
    display: block;
    font-size: 16px;
  }

    </style>
</head>

<body>


<%@include file="include/sidebar.jsp"%>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h4 class="h4 mt-4">WELCOME, <% out.println(user.getFirstname()+"  "+user.getLastname());%></h4>
</div>
    <div class="row">
    <div class="col-lg-3">
      <div class="card-counter primary">
        <i class="mdi mdi-account-multiple"></i>
        <span class="count-numbers"><% out.println(userCount); %></span>
        <span class="count-name">Total Customers</span>
      </div>
    </div>

    <div class="col-lg-3">
      <div class="card-counter success">
        <i class="mdi mdi-book-open-page-variant"></i>
        <span class="count-numbers"><% out.println(bookingCount); %></span>
        <span class="count-name">Total Bookings</span>
      </div>
    </div>

    <div class="col-lg-3">
      <div class="card-counter danger">
        <i class="mdi mdi-image-multiple"></i>
        <span class="count-numbers"><% out.println(galleryCount); %></span>
        <span class="count-name">Photos</span>
      </div>
    </div>

    <div class="col-lg-3">
      <div class="card-counter info">
        <i class="mdi mdi-comment-text"></i>
        <span class="count-numbers"><% out.println(eventPostCount); %></span>
        <span class="count-name">Blogs</span>
      </div>
    </div>
  </div>

</body>
</html>

