package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Bed;
import model.RoomTypeAndCost;

public class RoomTypeAndCostDAO {
	
protected RoomTypeAndCostDAO(){}
	
	protected boolean addRoomTypeAndCost(RoomTypeAndCost roomTypeAndCost){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		Integer roomTypeAndCostId = 0;
		try {
			tx = session.beginTransaction();
			roomTypeAndCostId=(Integer)session.save(roomTypeAndCost);
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
	
	/*protected boolean updateBed(Bed bed){
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
		

	}*/
	protected List<RoomTypeAndCost> viewRoomTypeAndCost(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<RoomTypeAndCost> roomTypeAndCost= (List<RoomTypeAndCost>) session.createQuery("From RoomTypeAndCost").list();
		return roomTypeAndCost;
		
	}
	/*
	protected Bed viewAllBed(int bedId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Bed bed = session.get(Bed.class, bedId);
		session.close();
		return bed;
		
	}
	*/
	

}
