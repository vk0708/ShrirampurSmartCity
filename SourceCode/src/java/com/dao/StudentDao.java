package com.dao;

import com.model.StudentModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class StudentDao {
    public boolean savestudent(StudentModel sm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(sm);
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
    public StudentModel StudentLogin(StudentModel sd){
    Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tt=session.getTransaction();
      StudentModel s=null;
        try {
            Query query=session.createQuery("FROM StudentModel WHERE email=:e and password=:p");
            query.setParameter("e", sd.getEmail());
            query.setParameter("p", sd.getPassword());

            s=(StudentModel) query.uniqueResult();
            System.out.println("s" +s);
            return s;
            
        } catch (Exception e) {
            e.getStackTrace();
        }finally{
        session.close();
        }
        return null;
    }
    
     public List<StudentModel> getAllStudent(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM StudentModel");
            List<StudentModel> client=query.list();
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
     
     public boolean deleteStudent(StudentModel sm){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(sm);
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