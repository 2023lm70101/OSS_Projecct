package com.dao;
import com.entities.Account;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;


public class AccountDao {

	  private SessionFactory factory;

	    public AccountDao(SessionFactory factory) {
	        this.factory = factory;
	    }
	    //get all Account data
	    public List<Account> getAllAccountData() {
	        Session s = this.factory.openSession();
	        Query query = s.createQuery("from Account");
	        List<Account> list = query.list();
	        return list;
	    }
	 
}

