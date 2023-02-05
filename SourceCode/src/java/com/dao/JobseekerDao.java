package com.dao;

import com.model.JobseekerModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class JobseekerDao {
    public boolean savejobseeker(JobseekerModel jm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(jm);
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
    
    public JobseekerModel JobseekerLogin(JobseekerModel jm){
    Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tt=session.getTransaction();
      JobseekerModel j=null;
        try {
            Query query=session.createQuery("FROM JobseekerModel WHERE email=:e and password=:p");
            query.setParameter("e", jm.getEmail());
            query.setParameter("p", jm.getPassword());

            j=(JobseekerModel) query.uniqueResult();
            System.out.println("j" +j);
            return j;
            
        } catch (Exception e) {
            e.getStackTrace();
        }finally{
        session.close();
        }
        return null;
    }
    
    public List<JobseekerModel> getAllJobseeker(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM JobseekerModel");
            List<JobseekerModel> client=query.list();
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
    
    public boolean deleteJobseeker(JobseekerModel jm){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(jm);
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