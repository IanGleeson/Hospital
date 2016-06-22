package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Bed;

public class BedDAO {

	public BedDAO(){}
	
	protected boolean addBed(Bed bed){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		Integer bedId = 0;
		try {
			tx = session.beginTransaction();
			bedId=(Integer)session.save(bed);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}
	
	protected boolean updateBed(Bed bed){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			session.update(bed);

			tx.commit();

		}catch (HibernateException e){
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		return false;
		
	}
	
	protected boolean deleteBed(int bedId){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			Bed bed = session.get(Bed.class, bedId);
			session.delete(bed);
			tx.commit();

		}catch (HibernateException e){
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return false;
		
	}
	protected List<Bed> viewBed(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Bed> bed= (List<Bed>) session.createQuery("From Bed").list();
		return bed;
		
	}
	protected Bed viewAllBed(int bedId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Bed bed = session.get(Bed.class, bedId);
		session.close();
		return bed;
		
	}
	
}
