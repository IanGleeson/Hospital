package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Bed;
import model.Hospital;

public class BedDAO {

	protected BedDAO(){}
	
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
	protected List<Hospital> viewBed(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		String sql ="select Bed.Id,Bed.RoomId,Room.WardId,Ward.Name,Room.Type,RoomTypeAndCost.RoomType,Ward.DeptId,Department.Name from "
				+ "Bed, Room, RoomTypeAndCost, Ward, Department where Bed.RoomId=Room.Id and Room.Type=RoomTypeAndCost.Id and Room.WardId=Ward.Id and Ward.DeptId=Department.Id";
		System.out.println(sql);
		List<Hospital> hospital= (List<Hospital>) session.createQuery(sql).list();
		return hospital;
		
	}
	protected Bed viewAllBed(int bedId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Bed bed = session.get(Bed.class, bedId);
		session.close();
		return bed;
		
	}
	
}
