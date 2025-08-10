package com.dao;
import com.entities.Gallery;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class GalleryDao {

		  private SessionFactory factory;

		    public GalleryDao(SessionFactory factory) {
		        this.factory = factory;
		    }

		   

		    //get all Gallery dta
		    public List<Gallery> getAllGallery() {
		        Session s = this.factory.openSession();
		        Query query = s.createQuery("from Gallery");
		        List<Gallery> list = query.list();
		        return list;
		    }

		    public int countAll() {
		        int count = 0;
		        Session session = this.factory.openSession();
		        try {
		            Query<Long> query = session.createQuery("SELECT COUNT(g) FROM Gallery g", Long.class);
		            count = query.uniqueResult().intValue();
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            session.close();
		        }
		        return count;
		    }

	

}
