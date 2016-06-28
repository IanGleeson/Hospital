package controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.User;

public class UserDAO {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	
	protected User getUserById(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		User user = session.get(User.class, id);
		session.close();
		return user;
	}

	protected void addUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();	
			session.save(user);  
			tx.commit();						
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {				
			session.close();
		}
	}

	protected void updateUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();	
			session.update(user);  
			tx.commit();						
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {				
			session.close();
		}
	}

	protected void deleteUser(int userId) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();	
			session.delete(userId);  
			tx.commit();						
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {				
			session.close();
		}
	}

	protected List<User> viewAllUsers() {
		List<User> listOfUsers = new ArrayList<>();
		Session session = sessionFactory.openSession();
		
		try {
			Query query = session.createQuery("FROM User");
			listOfUsers = (List<User>)query.list();
			
		} catch(HibernateException e) {
			e.printStackTrace();
		}
		session.close();
		return listOfUsers;
	}

	protected boolean login(String username, String password) {
		List<User> listOfUsers = new ArrayList<>();
		Session session = sessionFactory.openSession();
		boolean logIn = false;
		
		try {
			Query query = session.createQuery("FROM Person WHERE username = :username OR password = :password");
			query.setParameter(0, username);
			query.setParameter(1, password);
			if (query.list() != null) {
				logIn = true;
			}
			
		} catch(HibernateException e) {
			e.printStackTrace();
		}
		session.close();
		return logIn;
	}

	protected void changePassword(User user) {
		
	}

}

