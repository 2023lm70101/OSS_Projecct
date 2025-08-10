package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

    public static SessionFactory factory=null;

    public static SessionFactory getFactory() {
        try {

            if (factory == null) {
                factory = new Configuration()
                        .configure("hibernate.cfg.xml")
                        .buildSessionFactory();
                System.out.println("Session Factory successed ");
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("factory is null ");
        }

        return factory;
    }
}
