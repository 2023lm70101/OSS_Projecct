package com.servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.entities.User.Gender;
import com.helper.FactoryProvider;

@MultipartConfig
public class AddUserServlete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
// Handle GET requests if needed
		response.getWriter().println("GET method is not supported for this servlet.");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("password2");
		String genderParam = request.getParameter("gender");
		String address = request.getParameter("address");
		String designation = request.getParameter("designation");
		Part profileImagePart = request.getPart("profile_picture");

		if (!password.equals(confirmPassword)) {
			response.getWriter().println("Passwords do not match!");
			return;
		}

// Saving the profile image
		String imagePath = "uploads" + File.separator + profileImagePart.getSubmittedFileName();
		String uploadPath = getServletContext().getRealPath("") + File.separator + imagePath;
		profileImagePart.write(uploadPath);

// Creating User object
		User user = new User();
		user.setFirstname(firstName);
		user.setLastname(lastName);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
	//	user.setGender(Gender.valueOf(genderParam.toUpperCase()));
		user.setAddress(address);
		user.setDesignation(designation);
		user.setProfilePicture(imagePath);

// Save the user object to the database using Hibernate
		Session session = null;
		Transaction transaction = null;

		try {
			session = FactoryProvider.getFactory().openSession();
			transaction = session.beginTransaction();
			session.save(user);
			transaction.commit();
			//response.getWriter().println("User registered successfully!");
			
			HttpSession httpSession = request.getSession();
	          httpSession.setAttribute("message", "User  is Successfull !!!");      
	   
	         response.sendRedirect("successfully registered");
		//	response.sendRedirect("../admin/users.jsp");
		} catch (Exception e) {
			if (transaction != null)
				transaction.rollback();
			e.printStackTrace();
			response.getWriter().println("An error occurred during registration.");
		} finally {
			if (session != null)
				session.close();
		}
	}
}
