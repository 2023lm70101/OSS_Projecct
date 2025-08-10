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
<title>Services And Modules - Administrator</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
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
	/*padding: 0;*/
	padding-top: 10px;
	/*padding-left:6px;*/
	/*padding-bottom:6px;*/
	/*margin-top:5px;*/
	text-transform: capitalize;
}

div.dataTables_wrapper div.dataTables_paginate {
	font-size: 11px;
}
</style>
</head>

<body>

	<%@include file="include/sidebar.jsp"%>


	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
		<h4 class="h4 mt-4 ml-3">Services And Packages</h4>
		<div class="btn-toolbar mb-2 mb-md-0">
			<!-- <div class="btn-group mr-2">
				<a class="btn btn-md btn-success mr-2" style="font-size: 12px;"
					href="package_add.php"><i class="mdi mdi-buffer mr-2"></i> Add
					New Package</a>
			</div> -->
		</div>
	</div>

	<%
		WeddingCategoryDao dao = new WeddingCategoryDao(FactoryProvider.getFactory());
		List<WeddingCategory> wclist = dao.getAllWeddingCategory();
	
		
		%>
<div class="col-md-12">
		<table id="example"
			class="table table-striped table-hover table-bordered table-sm"
			cellspacing="0" width="100%" style="background: white; padding: 5px">

			<thead>
				<tr>
					<th>Wedding Category</th>
					<th>Price</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<% for (WeddingCategory c : wclist) {
					
				%>
			<tr>
					<td class="special"><b><%out.println(c.getWedding_type()+"  "+"Wedding Package");%>
					</b></td>
					<td class="special">&#8377 <b><%out.println(c.getPrice());%></b></td>
					
					<td class="special"><a href="package_edit.jsp?id=<%out.println(c.getCategory_id());%>"
						class="btn btn-secondary btn-sm" data-toggle="tooltip"
						data-placement="top" title="Edit This Package"> <i
							class="mdi mdi-pen"></i></a>
							
						<a href="package_delete.jsp?id=<%out.println(c.getCategory_id());%>"
						class="btn btn-danger btn-sm" data-toggle="tooltip"
						data-placement="top" title="Delete This Package"><i	class="mdi mdi-delete"></i></a>
							
						<button type="button" name="view" value="view"
							id="<%out.println(c.getCategory_id());%>"
							class="btn btn-info btn-sm view_data">
							<i class="mdi mdi-eye-outline"></i>
						</button>
						
					</td>
			</tr>

				<% } %>
			</tbody>
		</table>
	</div>
	<!-- end of col-md-12 -->

	<div class="col-md-12 mt-4">
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
			<h4 class="h4 mt-4 ml-3">Wedding Features</h4>
			<div class="btn-toolbar mb-2 mb-md-0">
				<div class="btn-group mr-2">
					<a class="btn btn-md btn-success mr-2" style="font-size: 12px;"
						href="feature_add.jsp"><i
						class="mdi mdi-clipboard-outline mr-2"></i> Add New Feature</a>
				</div>
			</div>
		</div>
		<%
						FeatureDao fdao = new FeatureDao(FactoryProvider.getFactory());
						List<Feature> flist = fdao.getAllFeatures();
						
						%>
<table id="features"
			class="table table-striped table-hover table-bordered table-sm"
			cellspacing="0" width="100%" style="background: white; padding: 5px;">
			<thead>
				<tr>
					<th>Wedding Type</th>
					<th>Title</th>
					<th>Description</th>
					<th>Actions</th>
				</tr>
			</thead>

			<tbody>
				<% for (Feature f : flist) { %>
				<tr>

					<td class="special">
						<%out.println(f.getwedingType());%>
					</td>
					<td class="special">
						<%out.println(f.getTitle());%>
					</td>
					<%
                         
                        String originalString = f.getDescription();
                        String trimmedString = originalString.trim();

                        %>
					<td class="special">
						<%out.println(trimmedString);%>
					</td>
					<td class="special">
					<a href="feature_edit.jsp?id=<%out.println(f.getFeatureId());%>"
						class="btn btn-secondary btn-sm" data-toggle="tooltip" data-placement="top" title="Edit This feature"> 
						<i class="mdi mdi-pen"></i></a>
					 <a	href="feature_delete.jsp?id=<%out.println(f.getFeatureId());%>"
						class="btn btn-danger btn-sm" data-toggle="tooltip"	data-placement="top" title="Delete This feature">
						<i class="mdi mdi-delete"></i></a></td>
				</tr>
				<% } %>
			</tbody>
		</table>
	</div>
	<!-- end of col-md-12 -->



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
        $('#features').DataTable();
        $('[data-toggle="tooltip"]').tooltip();
    });
    
</script>


	<div id="dataModal" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Package Features Details</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" id="package_detail"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<script>
     $(document).on('click', '.view_data', function(){  
           var id = $(this).attr("id");  
           if(id != '')  
           {  
                $.ajax({  
                     url:"select.php",  
                     method:"POST",  
                     data:{id:id},  
                     success:function(data){  
                          $('#package_detail').html(data);  
                          $('#dataModal').modal('show');  
                     }  
                });  
           }            
      }); 
</script>

</body>
</html>