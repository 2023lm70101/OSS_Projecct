package com.dao;
import com.entities.Feature;
import com.entities.WeddingCategory;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class FeatureDao {

	 private SessionFactory factory;

	 public FeatureDao(SessionFactory factory) {
	        this.factory = factory;
	    }

	    public boolean saveProduct(Feature feature) {
	        boolean f = false;
	        try {

	            Session session = this.factory.openSession();
	            Transaction tx = session.beginTransaction();

	            session.save(feature);

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
	    public List<Feature> getAllFeatures() {
	        Session s = this.factory.openSession();
	        Query query = s.createQuery("from Feature");
	        List<Feature> list = query.list();
	        return list;
	    }
	    
	    //get all  Features of given categoryID
		/*
		 * public List<Feature> getFeaturesByCategoryId(int categoryId) { Session
		 * session = this.factory.openSession(); Transaction tx = null; try { tx =
		 * session.beginTransaction(); Query query = session.
		 * createQuery("FROM Feature f INNER JOIN f.category wc WHERE wc.category_id = :categoryId"
		 * ); query.setParameter("categoryId", categoryId); List<Feature> list =
		 * query.list(); tx.commit(); return list; } catch (HibernateException e) { if
		 * (tx != null) { tx.rollback(); } throw e; } finally { session.close(); } }
		 */
	    
	    public List<Feature> getFeaturesByCategoryId(int categoryId) {
	        Session session = this.factory.openSession();
	        
	            Query query = session.createQuery("FROM Feature f INNER JOIN f.category wc WHERE wc.category_id = :categoryId");
	            query.setParameter("categoryId", categoryId);
	            List<Feature> list = query.list();
	            
	            return list;
	        } 
	     
	    
	    
}
