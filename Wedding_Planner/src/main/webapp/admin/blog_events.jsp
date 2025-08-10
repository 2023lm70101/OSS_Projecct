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
 <title>Articles - Administrator</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <!--  <link href="css/bootstrap.css" rel="stylesheet">-->
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
            padding-right:6px;
            margin-top:5px;
            text-transform: capitalize;
        }
      
        div.dataTables_wrapper div.dataTables_paginate {
            font-size: 11px;
        }

    </style>
</head>

<body>

<%
    User u = (User) session.getAttribute("current-user");
    if (u != null) {
%>
    <!-- Include sidebar.jsp -->
    <jsp:include page="include/sidebar.jsp" />
<%
    } else {
        // Redirect to login page or show an appropriate message
        response.sendRedirect("../login.jsp");
    }
%>

<%
				PostWeddingDao dao = new PostWeddingDao(FactoryProvider.getFactory());
				List<PostWedding> pwlist = dao.getAllInformation();
				%>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h4 class="h4 mt-4 ml-3">Events And Wedding's Information Section</h4>
    <div class="btn-toolbar mb-2 mb-md-0">
        <div class="btn-group mr-2">
            <a class="btn btn-md btn-success" style="font-size: 12px;" href="blog_events_add.jsp"><i class="mdi mdi-account-plus mr-2"></i> Add New Info.</a>
        </div>
    </div>
</div>

<%@include  file="include/message.jsp" %>

<table id="example" class="table table-striped table-hover table-bordered table-sm" cellspacing="0" width="100%" style="background: white;padding: 0 5px;">

    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Location</th>
            <th>Status</th>
            <th>Wedding Date</th>
            <th>Date Created</th>
            <th>Date Published</th>
            <th>Tools</th>
        </tr>
    </thead>
  
    <tbody>
       <% for (PostWedding pw : pwlist) {%>
        <tr>
            <% String title = pw.getTitle(); String trimmedTitle = title.trim();%>
            <td class="special"><%out.println(trimmedTitle);%></td>
          
             <% //String description = pw.getDescription(); 
             //String trimmedDescription = description.trim();
             String description = pw.getDescription();
             String trimmedDescription = description.trim();

             // Define the maximum length for the truncated description
             int maxLength = 20;
             String shortDescription;

             if (trimmedDescription.length() > maxLength) {
                 shortDescription = trimmedDescription.substring(0, maxLength) + "...";
             } else {
                 shortDescription = trimmedDescription;
             }
             
             
             
             %> 
            <td class="special"><%out.println(shortDescription);%></td>
            
            <% String location = pw.getLocation(); String trimmedLocation = location.trim();%>
            <td class="special"><%out.println(trimmedLocation);%></td>
            
           
            <td class="special"><% Enum status = pw.getStatus(); out.println((status == null) ? "Drafted" : "Published"); %></td>
            
            
            <td class="special"> <%out.println(pw.getWeddingDate());%></td>
            
            <td class="special"><%out.println(pw.getDateCreated()); %></td>
            <%String datePublished = pw.getDatePublished(); %>
            <td class="special"><%String output = (datePublished == null || datePublished.isEmpty()) ? "Unpublished" : datePublished; out.println(datePublished);%></td>
            
            <td>
               <%-- < <a href="blog_events_edit.jsp?id=<%out.println(pw.getId());%>" class="btn btn-info btn-sm active"><i class="mdi mdi-account-edit"></i></a>
                --%> <a href="blog_events_delete.jsp?id=<%out.println(pw.getId());%>" class="btn btn-danger btn-sm active"><i class="mdi mdi-delete"></i></a>
                <a href="../wedding_details.jsp?id=<%out.println(pw.getId());%>" target="_blank" class="btn btn-warning btn-sm active"><i class="mdi mdi-eye"></i></a>
            </td>

        </tr>

    <% } %>
    </tbody>
</table>
<%@include file="include/footer.jsp"%>
</main>
</div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/popper.min.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script>
  
    $(document).ready(function() {
        $('#example').DataTable();
        $('[data-toggle="tooltip"]').tooltip();
    });

    
    
</script>

</body>
</html>