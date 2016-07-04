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
	private boolean loggedIn = false;

	public boolean isLogIn() {
		return loggedIn;
	}

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

	protected void deleteUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.delete(user);
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
			listOfUsers = (List<User>) query.list();

		} catch (HibernateException e) {
			e.printStackTrace();
		}
		session.close();
		return listOfUsers;
	}

	protected User login(String username, String password) {
		Session session = sessionFactory.openSession();
		loggedIn = false;

		Transaction tx = null;
		User user = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			Query query = session.createQuery("from User where username='" + username + "' and password='" + password + "'");
			user = (User) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}

	protected void changePassword(User user) {
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
}
