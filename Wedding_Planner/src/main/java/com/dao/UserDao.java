package com.dao;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.PostWedding;
import com.entities.User;

public class UserDao {

	private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //get user by email and password
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        
        try {
            
            String query="from User where email =: e and password=: p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p",password);            
            user=(User) q.uniqueResult();         
            session.close();             
            
        } catch (Exception e) {
            e.printStackTrace();
        }            
        return user;
    }
    
        public List<User> getAllUserInfo() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM User");
        List<User> list = query.list();
        return list;
    }
       
    public int countUser() {
        int count = 0;
        Session session =this.factory.openSession();
        try {
            Query<Long> query = session.createQuery("SELECT COUNT(u) FROM User u", Long.class);
            count = query.uniqueResult().intValue();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return count;
    }
    public boolean deleteUser(int userId) {
        boolean deleted = false;
        Session session = this.factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
                User user = session.get(User.class, userId);
            
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

    public boolean createUser(User user) {
        boolean isCreated = false;
        Session session = this.factory.openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            session.save(user);  // Save the user object to the database
            tx.commit();  // Commit the transaction
            isCreated = true;  // Set isCreated to true if the user was successfully created
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();  // Rollback the transaction in case of error
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

        return isCreated;
    }

    public void updateUser(User user) {
        Session session = factory.openSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            session.update(user);  // Update the user object in the database
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

}
