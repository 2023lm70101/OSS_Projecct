package com.dao;
import com.entities.AccountDetail;
import com.entities.Gallery;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


import com.entities.AccountDetail;
import com.entities.Gallery;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class AccountDetailDao {

	 private SessionFactory factory;

	    public AccountDetailDao(SessionFactory factory) {
	        this.factory = factory;
	    }
	
	  //get all AccountDetails_Data
	    public List<AccountDetail> getAllAccountDetailInfo() {
	        Session s = this.factory.openSession();
	        Query query = s.createQuery("from AccountDetail");
	        List<AccountDetail> list = query.list();
	        return list;
	    }
}
