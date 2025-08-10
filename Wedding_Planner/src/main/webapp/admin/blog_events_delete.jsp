<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.dao.EventsDao"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%  User u = (User) session.getAttribute("current-user"); 
 if (u == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    }

 %> 

<%
    // Retrieve the user_id from the request parameter
    String userIdParam = request.getParameter("id");
    int userId = 0;
    
    // Convert the userIdParam to an integer
    try {
        userId = Integer.parseInt(userIdParam);
    } catch (NumberFormatException e) {
        // Handle the case where the id parameter is not a valid integer
        e.printStackTrace();
       // response.sendRedirect(); // Redirect to an error page if needed
        return;
    }
    
    // Assuming you have a UserDao class with the deleteUser method
   // UserDao dao = new UserDao(FactoryProvider.getFactory());
	EventsDao event= new EventsDao(FactoryProvider.getFactory());
    // Call the deleteUser method
    System.out.println(userId);
    boolean  isDeleted = event.deleteUser(userId);
  		//System.out.println(isDeleted);
    if (isDeleted) {
        // Redirect to a success page or the users list after deletion
        response.sendRedirect("blog_events.jsp");
    } else {
        // Handle the case where the user was not found or deletion failed
        response.sendRedirect("blog_events.jsp"); // Redirect to an error page if needed
    }
%>


</body>
</html>