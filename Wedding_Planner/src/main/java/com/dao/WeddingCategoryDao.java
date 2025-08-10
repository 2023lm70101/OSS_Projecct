package com.dao;
import com.entities.WeddingCategory;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class WeddingCategoryDao {

	    private SessionFactory factory;

	    public WeddingCategoryDao(SessionFactory factory) {
	        this.factory = factory;
	    }

	    public boolean saveProduct(WeddingCategory WeCategory) {
	        boolean f = false;
	        try {

	            Session session = this.factory.openSession();
	            Transaction tx = session.beginTransaction();

	            session.save(WeCategory);

	            tx.commit();
	            session.close();
	            f = true;

	        } catch (Exception e) {
	            e.printStackTrace();
	            f = false;
	        }

	        return f;
	    }

	    //get all WeddingCategory
	    public List<WeddingCategory> getAllWeddingCategory() {
	        Session s = this.factory.openSession();
	        Query query = s.createQuery("from WeddingCategory");
	        List<WeddingCategory> list = query.list();
	        return list;
	    }

	    public WeddingCategory getCategoryById(int wcid) {
	        WeddingCategory cat = null;
	        try {

	            Session session = this.factory.openSession();
	            cat = session.get(WeddingCategory.class, wcid);
	            session.close();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return cat;
	    }


}
