package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
      

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		 HttpSession httpSession = request.getSession();
         httpSession.removeAttribute("current-user");
         response.sendRedirect("login.jsp");
		
	}catch(Exception ep) {
		ep.printStackTrace();
	}
	}		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
