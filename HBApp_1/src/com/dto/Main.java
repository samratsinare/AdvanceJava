package com.dto;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;


public class Main {

	public static void main(String[] args) {

           Configuration cfg =  new Configuration();
           
           cfg = cfg.configure();
           
           StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder();
           
           ssrb.applySettings(cfg.getProperties());
            
          StandardServiceRegistry ssr = ssrb.build();
          
          SessionFactory sf = cfg.buildSessionFactory(ssr);
          
          Session s = sf.openSession();
          
           Transaction tr = s.beginTransaction();
           
           Student s1 = new Student(2,"abc", 32);
           
             s.save(s1);
             
             tr.commit();
             
             s.close();
             
             sf.close();
             
            
	}

}
