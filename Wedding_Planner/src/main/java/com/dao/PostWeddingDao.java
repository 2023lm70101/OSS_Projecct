package com.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Feature;
import com.entities.PostWedding;

import jakarta.persistence.criteria.CriteriaQuery;

public class PostWeddingDao {

	private SessionFactory factory;

	 public PostWeddingDao(SessionFactory factory) {
	        this.factory = factory;
	    }

	    public boolean saveProduct(PostWedding postWedding) {
	        boolean f = false;
	        try {

	            Session session = this.factory.openSession();
	            Transaction tx = session.beginTransaction();

	            session.save(postWedding);

	            tx.commit();
	            session.close();
	            f = true;

	        } catch (Exception e) {
	            e.printStackTrace();
	            f = false;
	        }

	        return f;
	    }

		
		 //get all Features 
	      public List<PostWedding> getAllInformation(){
	      Session s =this.factory.openSession(); 
	      Query query = s.createQuery("FROM PostWedding");
		  List<PostWedding> list = query.list(); 
		  return list; 
	      }
        
	   
	    
	    
	    
}
