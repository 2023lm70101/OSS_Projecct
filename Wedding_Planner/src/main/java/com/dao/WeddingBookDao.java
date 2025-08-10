package com.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import com.entities.WeddingBook;

import java.util.List;


public class WeddingBookDao {

	private SessionFactory factory;

    public WeddingBookDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public int countBooking() {
        int count = 0;
        Session session =this.factory.openSession();
        try {
            Query<Long> query = session.createQuery("SELECT COUNT(b) FROM WeddingBook b", Long.class);
            count = query.uniqueResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return count;
    }
    public List<WeddingBook> getAllWeddingBookInfo() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from WeddingBook");
        List<WeddingBook> list = query.list();
        return list;
    }
}
