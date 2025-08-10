<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%><%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<!--    <link href="css/bootstrap.css" rel="stylesheet">-->
<link rel="stylesheet" type="text/css"
	href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
<style>
table.table.table-striped.table-bordered.table-sm {
	font-size: 12px;
}

.tooltip {
	font-size: 12px;
}

td.special {
	padding: 0;
	padding-top: 20px;
	padding-left: 6px;
	/*padding-bottom:10px !important;*/
	margin-top: 10px;
	text-transform: capitalize;
}

.datepicker {
	font-size: 12px;
}

div.dataTables_wrapper div.dataTables_paginate {
	font-size: 11px;
}
</style>
</head>

<%  User u = (User) session.getAttribute("current-user"); 
 if (u == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    }
 %>

<body>

	<jsp:include page="include/sidebar.jsp" />

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom" >
		<h4 class="h4 mt-4 ml-3">User Management</h4>
		<div class="btn-toolbar mb-2 mb-md-0">
			<div class="btn-group mr-2">
				<a class="btn btn-md btn-success" style="font-size: 12px;"
					href="users_add.jsp"><i class="mdi mdi-account-plus mr-2"></i>
					Add New User</a>
			</div>
		</div>
	</div>
	
	<table id="example" class="table table-striped table-hover table-bordered table-sm" cellspacing="0" width="100%"
		style="background: white; padding: 0 5px;">

		<thead>
			<tr>
				<th>Photo</th>
				<th>Fullname</th>
				<th>Email</th>
				<th>Username</th>
				<th>Designation</th>
				<th>Address</th>
				<th>Date Created</th>
				<th>Actions</th>
			</tr>
		</thead>
		<%
				UserDao dao = new UserDao(FactoryProvider.getFactory());
				List<User> ud = dao.getAllUserInfo();
				%>
		<tbody>
			<% for (User user : ud) {%>
			<tr>
				<td>
					<div class="text-center">
						<img src="upload/users/<%out.println(user.getProfilePicture());%>"
							alt="" class="img-fluid rounded-circle"
							style="width: 34px; height: 34px;">
					</div>
				</td>
				
				<td class="special">
					<%out.println(user.getFirstname()+"  "+user.getLastname());%>
				</td>
				<td class="special">
					<%out.println(user.getEmail()); %>
				</td>
				<td class="special">
					<%out.println(user.getUsername()); %>
				</td>
				<td class="special">
					<% String designation = user.getDesignation();  out.println(designation.equals("1") ? "Moderator" :"Admin" ); %>
				</td>
				<%
                         
                        String ogString = user.getAddress();
                        String trimString = ogString.trim();

                        %>
				<td class="special">
					<%out.println(trimString); %>
				</td>
				<td class="special">
					<%out.println(user.getDateCreated()); %>
				</td>
				<td><a href="users_edit.jsp?id=<%out.println(user.getUser_id()); %>"
					class="btn btn-info btn-sm" data-toggle="tooltip"
					data-placement="top" title="Edit This User"><i class="mdi mdi-pencil"></i></a>
					<a href="users_delete.jsp?id=<%out.println(user.getUser_id()); %>"
					class="btn btn-danger btn-sm" data-toggle="tooltip"
					data-placement="top" title="Delete This User"><i class="mdi mdi-delete"></i></a></td>
			</tr>
			<% } %>

	</tbody>
</table>
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