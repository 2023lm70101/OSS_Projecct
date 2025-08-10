package com.dao;
import com.entities.Events;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
public class EventsDao {

	private SessionFactory factory;

    public EventsDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public int countAll() {
        int count = 0;
        Session session =this.factory.openSession();
        try {
            Query<Long> query = session.createQuery("SELECT COUNT(e) FROM Events e", Long.class);
            count = query.uniqueResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return count;
    }
    
    public List<Events> getAllEventsInfo() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Events");
        List<Events> list = query.list();
        return list;
    }
    
    public boolean deleteUser(int event_id) {
   
  
    	 boolean deleted = false;
         Session session = this.factory.openSession();
         Transaction tx = null;
         
         try {
             tx = session.beginTransaction();
                 Events user = session.get(Events.class, event_id);
             
             if (user != null) {
                 session.delete(user);
                 deleted = true;  // Set deleted to true if user was found and deleted
             }
             
             tx.commit();  // Commit the transaction
         } catch (Exception e) {
             if (tx != null) {
                 tx.rollback();  // Rollback the transaction in case of error
             }
             e.printStackTrace();
         } finally {
             session.close();
         }
         
         return deleted;
    	}

}

