package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Room;
import model.Ward;

public class RoomDAO {

	public RoomDAO(){}
	
	protected boolean addRoom(Room room){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		Integer roomId = 0;
		try {
			tx = session.beginTransaction();
			roomId=(Integer)session.save(room);
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
	
	protected boolean updateRoom(Room room){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			session.update(room);

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
	
	protected boolean deleteRoom(int roomId){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			Room room = session.get(Room.class, roomId);
			session.delete(room);
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
	protected List<Room> viewRoom(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Room> roomsList= (List<Room>) session.createQuery("From Room").list();
		return roomsList;
		
	}
	protected Room viewAllRoom(int roomId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Room room = session.get(Room.class, roomId);
		session.close();
		return room;
		
	}
	protected List<Room> viewRoomByWardId(int wardId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery("from Room WHERE WardId=:wardId");
		query.setParameter("wardId", wardId);
		List<Room> roomsList  = (List<Room>) query.list();
		session.close();
		return roomsList;
		
	}
}
