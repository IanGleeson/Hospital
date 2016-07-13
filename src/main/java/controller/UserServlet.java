package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserType;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
    		userDAO = new UserDAO();
		} catch (ExceptionInInitializerError e) {
			request.setAttribute("serverDown", true);
		}
		
		String action = request.getParameter("action");
		if (action == null) {
			action = "viewAllUsers";
		}

		System.out.println("action is " + action);

		switch (action) {
		case "showLoginForm":
			request.getRequestDispatcher("/WEB-INF/view/Users/login.jsp").forward(request, response);
			break;
		case "showAddUserForm":
			request.getRequestDispatcher("/WEB-INF/view/Users/addUser.jsp").forward(request, response);
			break;
		case "showUpdateUserForm":
			int userId = Integer.parseInt(request.getParameter("userId"));
			User user = userDAO.getUserById(userId);
			request.setAttribute("userUpdate", user);
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
			request.getRequestDispatcher("index.jsp").forward(request, response);
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
		String errMsg = "";
		
		if (username.length() < 6) {
			errMsg = "Username must be at least six characters.";
			request.setAttribute("errMsg", errMsg);
			request.getRequestDispatcher("/WEB-INF/view/Users/addUser.jsp").forward(request, response);
		}else if(password.length() < 6 || !password.matches(".+[A-Z].+") || !password.matches(".+[a-z].+") || !password.matches(".+[1-9].+")){
			errMsg = "Password must be at least six characters, include upper and lowercase characters and at least one number";
			request.setAttribute("errMsg", errMsg);
			request.getRequestDispatcher("/WEB-INF/view/Users/addUser.jsp").forward(request, response);
		}else{
			User user = new User(0, username, password, usertype);
			userDAO.addUser(user);
			viewAllUsers(request, response);
		}
	}
	
	protected void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = userDAO.getUserById(userId);
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setUserType(UserType.valueOf(request.getParameter("usertype").toUpperCase()));
		userDAO.updateUser(user);
		viewAllUsers(request, response);
	}
	
	protected void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = userDAO.getUserById(userId);
		userDAO.deleteUser(user);
		viewAllUsers(request, response);
	}
	
	protected void viewAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> allUsers = userDAO.viewAllUsers();
		request.setAttribute("listOfUsers", allUsers);
		request.getRequestDispatcher("/WEB-INF/view/Users/viewUsers.jsp").forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (userDAO.login(username, password)) {
			request.changeSessionId();
			User user = userDAO.getUser();
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("loggedIn", true);
			if (request.getParameter("remember") != null) {
				Cookie c = new Cookie("userid", user.getUsername());
			    c.setMaxAge(24*60*60);
			    response.addCookie(c);
			}
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("loggedIn", false);
			request.setAttribute("failedLogInMsg", "Username or password incorrect");
			request.getRequestDispatcher("/WEB-INF/view/Users/login.jsp").forward(request, response);
		}
	}
	
	protected void changePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
