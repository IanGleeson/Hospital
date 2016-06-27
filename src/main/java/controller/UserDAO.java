package controller;

import java.util.List;

import org.hibernate.SessionFactory;

import model.User;

public class UserDAO {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	private List<User> allUsers;

	protected void addUser(User user) {

	}

	protected void updateUser(int userId) {

	}

	protected void deleteUser(int userId) {

	}

	protected List<User> viewAllUsers(int userId) {

		return allUsers;
	}

	protected void login(String username, String password) {

	}

	protected void logout() {

	}

	protected void changePassword(User user) {

	}

}

