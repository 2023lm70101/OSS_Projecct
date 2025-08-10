<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    %>
        <%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<footer class="pt-3">
		<div class="row">
			<div class="col-12 col-md">
				<div class="text-center">
					<small class="d-block mb-3 text-muted">
					&copy; <%
					    int currentYear = LocalDate.now().getYear();
		
					    out.println(currentYear);
					%> - Developed By Wedding Planner Management Team
				</small>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>