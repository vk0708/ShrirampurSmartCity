/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dao;

import com.model.BusinessmanModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class BusinessmanDao {
    public boolean savebusinessman(BusinessmanModel bm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(bm);
            t.commit();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
            t.rollback();
        }
        finally{
        session.close();
        }
        return false;
    }
    
    public BusinessmanModel BusinessmanLogin(BusinessmanModel bm){
    Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tt=session.getTransaction();
      BusinessmanModel b=null;
        try {
            Query query=session.createQuery("FROM BusinessmanModel WHERE email=:e and password=:p");
            query.setParameter("e", bm.getEmail());
            query.setParameter("p", bm.getPassword());

            b=(BusinessmanModel) query.uniqueResult();
            System.out.println("b" +b);
            return b;
            
        } catch (Exception e) {
            e.getStackTrace();
        }finally{
        session.close();
        }
        return null;
    }
    
    public List<BusinessmanModel> getAllBman(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM BusinessmanModel");
            List<BusinessmanModel> client=query.list();
            tx.commit();
            return client;
            
        } catch (Exception e) {
            e.getStackTrace();
            tx.rollback();
        }
        finally{
        session.close();
        }
        return null;  
       }
    
    public boolean deleteBusinessman(BusinessmanModel bm){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(bm);
            t.commit();
            return true;
        
        } catch (Exception e) {
        e.getStackTrace();
        t.rollback();
        
        }finally{
        session.close();
        
        }
        return false;    
    }
    
}

