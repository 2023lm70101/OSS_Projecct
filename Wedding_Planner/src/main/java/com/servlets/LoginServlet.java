package com.servlets;

import com.dao.UserDao;
import com.entities.User;
import com.helper.FactoryProvider;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {	
		//coding area
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserDao userDao = new UserDao(FactoryProvider.getFactory());
        User user = userDao.getUserByEmailAndPassword(email, password);
                
      
        HttpSession httpSession = request.getSession();
        if (user == null) {
            httpSession.setAttribute("message", "Invalid Details !! Try with another one");
            response.sendRedirect("login.jsp");
            return;
        } else {
        	
        	response.sendRedirect("admin/dashboard.jsp");
        	httpSession.setAttribute("current-user", user);
			/*
			 * httpSession.setAttribute("current-user", user);
			 * 
			 * if (user.getAccessLevel().equals("LEVEL_0")) { //admin:-admin.jsp
			 * response.sendRedirect("admin/dashboard.jsp");
			 * 
			 * }else { httpSession.setAttribute("message",
			 * "We have not identified user type");
			 * 
			 * }
			 */
        	
        	
        }
	   
	   }catch(Exception ex) {
		ex.printStackTrace();
	}
  }
}
