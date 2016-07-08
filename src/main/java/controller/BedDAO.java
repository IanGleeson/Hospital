package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Bed;
import model.Hospital;
import model.Patient;
import model.Prescription;
import model.RoomType;


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
	protected List<Bed> viewBed(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		String sql ="from Bed";
		System.out.println(sql);
		List<Bed> bed = (List<Bed>) session.createQuery(sql).list();
	
		return bed;
		
	}
	
	protected List<Hospital> viewHospital(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		String hql ="from deptLayout";
		System.out.println(hql);
		List<Hospital> hospital = (List<Hospital>) session.createQuery(hql).list();
	
		return hospital;
		
	}
	

	protected List<RoomType> getRoomType(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		String hql ="from RoomType_View";
		System.out.println(hql);
		List<RoomType> roomType = (List<RoomType>) session.createQuery(hql).list();
	
		return roomType;
		
	}

	
	protected Bed viewAllBed(int bedId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Bed bed = session.get(Bed.class, bedId);
		session.close();
		return bed;
		
	}
	
	protected Bed getBedById(int Id){
		
		Session session = HibernateUtil.getSessionFactory().openSession();

		Bed bed = session.get(Bed.class, Id);
		session.close();
		return bed;
	}
	
}