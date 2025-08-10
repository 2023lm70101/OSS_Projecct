
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add New User - Administrator</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <style>
        body {
            margin-bottom: 2%;
        }
        .box-shadow {
            box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.3);
            font-size: 12px;
        }
        .form-control {
            font-size: 12px;
        }
        .datepicker {
            font-size: 12px;
        }
    </style>
    
</head>

<body>
<%@include file="include/sidebar.jsp"%>

<div class="container">

    <div class="row">

        <div class="col-lg-8 offset-2 pl-3 pb-3 box-shadow mt-4">
        
            <form method="post" action="#" enctype="multipart/form-data">

                <h4 class="h4 mt-4 pb-2" style="border-bottom: 1px solid #dee2e6!important;"> Update User Information
                    <a href="users.jsp" class="btn btn-sm btn-danger float-right" style="font-size: 12px;"><i class="mdi mdi-close-circle mr-2"></i> Cancel</a>

                    <button type="submit" name="submit" class="btn btn-sm btn-success float-right mr-2" style="font-size: 12px;"><i class="mdi mdi-account-plus mr-2"></i> Save User</button>
                </h4>

               <%
                String userIdParam = request.getParameter("id");
				UserDao dao = new UserDao(FactoryProvider.getFactory());
				List<User> ud = dao.getAllUserInfo();
				%>
                  <% for (User user : ud) {
                	  if (user.getUser_id() == Integer.parseInt(userIdParam)){
                  %>
                  <input type="hidden" name="user_id" value="<%= user.getUser_id() %>">
                  
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputFirstname">Firstname:</label>
                        <input type="text" name="firstname" class="form-control" id="inputFirstname"  placeholder="Enter Firstname"
                        value="<% out.println(user.getFirstname()); %>" >
                        
                    </div>
                   <div class="form-group col-md-6">
                        <label for="inputLastname">Lastname:</label>
                        <input type="text" name="lastname" class="form-control" id="inputLastname"  placeholder="Enter Lastname"
                          value="<% out.println(user.getLastname()); %>" >
                        
                    </div>
                   
                </div>
                
                <div class="form-group">
                    <label for="inputEmail">Email:</label>
                    <input type="text" name="email" class="form-control" id="inputEmail" placeholder="Enter Email"
                     	value="<% out.println(user.getEmail()); %>">
              
                </div>

                <div class="form-group">
                    <label for="inputUsername">Username:</label>
                    <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Enter Username"
                    
                    value="<% out.println(user.getUsername()); %>">
                </div>

                <div class="form-group">
                    <label for="inputpassword">Password:</label>
                    <input type="password" name="password" class="form-control" id="inputpassword" placeholder="Enter Password"
                    value="<% out.println(user.getPassword()); %>">
                    
                </div>

                <div class="form-group">
                    <label for="inputpasswordConfirm">Confirm Password:</label>
                    <input type="password" name="password2" class="form-control" id="inputpasswordConfirm" placeholder="Confirm password"
                    value="<% out.println(user.getPassword()); %>">
                    
                </div>


                 <div class="form-group">
                        <label for="gender">Gender:</label>
                        <select name="gender" class="custom-select" id="gender">
                            <option value="m">Male</option>
                            <option value="f">Female</option>
                        </select>
                    </div>

                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input name="address" class="form-control" id="inputAddress"  placeholder="Enter Address"
                    
                   value="<% out.println(user.getAddress()); %>"         
                    	></input>
                </div>

                 <div class="form-group">
                    <label for="designation">Designation:</label>
                    <select name="designation" id="designation" class="custom-select">
                        <option value="0">Administrator</option>
                        <option value="1">Moderator</option>
                    </select>
                </div>
                  <div class="form-group">
                    <label for="inputProfilePicture">Profile Image</label>
                    <input type="file" name="profile_picture" class="form-control-file" id="inputProfilePicture">
                  </div>
                  <%}
                  } %>
            </form><!-- end of input form -->
        </div>
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
<script>

    $(document).ready(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>

</body>
</html>
