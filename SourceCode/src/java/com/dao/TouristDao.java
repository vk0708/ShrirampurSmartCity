package com.dao;
import com.model.TouristModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class TouristDao {
    public boolean savetourist(TouristModel tm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(tm);
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
    
    public TouristModel TouristLogin(TouristModel tm){
    Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tt=session.getTransaction();
      TouristModel t=null;
        try {
            Query query=session.createQuery("FROM TouristModel WHERE email=:e and password=:p");
            query.setParameter("e", tm.getEmail());
            query.setParameter("p", tm.getPassword());

            t=(TouristModel) query.uniqueResult();
            System.out.println("t" +t);
            return t;
            
        } catch (Exception e) {
            e.getStackTrace();
        }finally{
        session.close();
        }
        return null;
    }
    
    public List<TouristModel> getAllTourist(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM TouristModel");
            List<TouristModel> client=query.list();
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
    
    public boolean deleteTourist(TouristModel tm){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(tm);
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
