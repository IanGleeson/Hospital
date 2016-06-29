package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserType;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
       
   
    public UserServlet() {
    	userDAO = new UserDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			action = "viewAllUsers";
		}

		System.out.println("action is " + action);

		switch (action) {
		case "showAddUserForm":
			request.getRequestDispatcher("/WEB-INF/view/Users/addUser.jsp").forward(request, response);
			break;
		case "showUpdateUserForm":
			int userId = Integer.parseInt(request.getParameter("userId"));
			User user = userDAO.getUserById(userId);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/WEB-INF/view/Users/updateUser.jsp").forward(request, response);
			break;
		case "addUser":
			addUser(request, response);
			break;
		case "updateUser":
			updateUser(request, response);
			break;
		case "deleteUser":
			deleteUser(request, response);
			break;
		case "login":
			login(request, response);
			break;
		case "logout":
			request.getSession().invalidate();
			request.getRequestDispatcher("/WEB-INF/view/Users/login.jsp").forward(request, response);
			break;
		case "changePassword":
			changePassword(request, response);
			break;
		default:
			viewAllUsers(request, response);
			break;
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserType usertype = UserType.valueOf(request.getParameter("usertype").toUpperCase());
		
		User user = new User(0, username, password, usertype);
		userDAO.addUser(user);
		response.sendRedirect("User?action=viewAll");
	}
	
	protected void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = userDAO.getUserById(userId);
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setUserType(UserType.valueOf(request.getParameter("usertype").toUpperCase()));
		userDAO.updateUser(user);
		response.sendRedirect("User?action=viewAll");
	}
	
	protected void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = userDAO.getUserById(userId);
		userDAO.deleteUser(user);
		response.sendRedirect("User?action=viewAll");
	}
	
	protected void viewAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> allUsers = userDAO.viewAllUsers();
		request.setAttribute("listOfUsers", allUsers);
		request.getRequestDispatcher("/WEB-INF/view/Users/viewUsers.jsp").forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		if (userDAO.login(user, pass)) {
			request.getSession().setAttribute("username", user);
			request.setAttribute("loggedIn", true);
			request.changeSessionId();
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}else{
			request.setAttribute("loggedIn", false);
			request.setAttribute("failedLogInMsg", "Username or password incorrect");
			response.sendRedirect("User?action=login");
		}
	}
	
	protected void changePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
