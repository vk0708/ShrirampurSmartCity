package com.dao;

import com.model.ContactModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ContactDao {
    public boolean savecontact(ContactModel cm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(cm);
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
    
    public List<ContactModel> getAllMsg(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM ContactModel");
            List<ContactModel> client=query.list();
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
     
     public boolean deletemsg(ContactModel cm){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(cm);
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
