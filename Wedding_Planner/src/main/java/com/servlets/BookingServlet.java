package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.*;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class BookingServlet
 */
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
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
		 try {
		  
		  String userFName = request.getParameter("user_firstname"); 
		  String userLName =request.getParameter("user_lastname"); 
		  String userEmail =request.getParameter("user_email"); 
		  String userPhone =request.getParameter("user_phone"); 
		  String weddingDate =request.getParameter("wedding_date");
		  
		// validations
          if (userFName.isEmpty()|| userLName.isEmpty()||userEmail.isEmpty()||userPhone.isEmpty()||weddingDate.isEmpty()) {
        	  HttpSession httpSession = request.getSession();
              httpSession.setAttribute("message", "Please Fill up all the fields.");
              return;
          }
          //creating user object to store data
          Session hibernateSession = FactoryProvider.getFactory().openSession();
          Transaction tx = hibernateSession.beginTransaction();                
             
          AccountDetail ad = new AccountDetail();
          ad.setFirstname(userFName);
          ad.setLastname(userLName);
          ad.setPhone(userPhone);

          WeddingBook wb = new WeddingBook();
          wb.setUserEmail(userEmail);
          wb.setWeddingDate(weddingDate);
          
          
          
          hibernateSession.save(ad);
          hibernateSession.save(wb);
          
          tx.commit();
          hibernateSession.close();                
          HttpSession httpSession = request.getSession();
          httpSession.setAttribute("message", "Booking is Successfull !!!");                
          response.sendRedirect("index.jsp");
          return;
          
      } catch (Exception e) {
          e.printStackTrace();
          
          
          
      }
		 
		
		
	}

}
