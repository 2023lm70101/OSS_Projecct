<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page import="java.io.IOException" %>


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
        response.sendRedirect("errorPage.jsp"); // Redirect to an error page if needed
        return;
    }
    
    // Assuming you have a UserDao class with the deleteUser method
    UserDao dao = new UserDao(FactoryProvider.getFactory());

    // Call the deleteUser method
    boolean isDeleted = dao.deleteUser(userId);

    if (isDeleted) {
        // Redirect to a success page or the users list after deletion
        response.sendRedirect("users.jsp");
    } else {
        // Handle the case where the user was not found or deletion failed
        response.sendRedirect("errorPage.jsp"); // Redirect to an error page if needed
    }
%>
