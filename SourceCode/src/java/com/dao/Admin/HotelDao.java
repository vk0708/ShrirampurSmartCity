
package com.dao.Admin;

import com.model.Admin.HotelModel;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class HotelDao {
    public boolean savehotel(HotelModel hm) {
    
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.save(hm);
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
    
    public List<HotelModel> getAllData(){
    
     Session session = HibernateUtil.getSessionFactory().openSession();
     Transaction tx=session.beginTransaction();
        try {
            Query query=session.createQuery("FROM HotelModel");
            List<HotelModel> client=query.list();
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
    
    public boolean deletedata(HotelModel d){
        
      Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.getTransaction();
        try {
            t.begin();
            session.delete(d);
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
