package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.dao.UserDao;
import com.entities.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    int userId = Integer.parseInt(request.getParameter("user_id"));
	    String firstName = request.getParameter("firstname");
	    String lastName = request.getParameter("lastname");
	    String email = request.getParameter("email");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String gender = request.getParameter("gender");
	    String address = request.getParameter("address");
	    String designation = request.getParameter("designation");
	    // Handle file upload if needed
	    Session hibernateSession = FactoryProvider.getFactory().openSession();
	    // Fetch the user from the database (you might have a method for this)
	    UserDao dao = new UserDao(FactoryProvider.getFactory());
	    User user = new User();
   
	    // Update the user object with new values
	    user.setFirstname(firstName);
	    user.setLastname(lastName);
	    user.setEmail(email);
	    user.setUsername(username);
	    user.setPassword(password);
	    //user.setGender(gender);
	    user.getGender();
	    user.setAddress(address);
	    user.setDesignation(designation);
	    // Set profile picture if necessary

	    // Update user in the database
	    dao.updateUser(user);

	    // Redirect or forward as needed
	    response.sendRedirect("users.jsp");
	}


}
