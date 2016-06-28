package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
			request.getRequestDispatcher("/WEB-INF/view/showAddUserForm.jsp").forward(request, response);
			break;
		case "showUpdateUserForm":
			request.getRequestDispatcher("").forward(request, response);
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
			response.sendRedirect("UserServlet?action=viewAll");
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
	}
	
	protected void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserType usertype = UserType.valueOf(request.getParameter("usertype").toUpperCase());
		
		User user = new User(0, username, password, usertype);
		userDAO.updateUser(user);
		request.getRequestDispatcher("").forward(request, response);
	}
	
	protected void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int Id = Integer.parseInt(request.getParameter("userId"));
		userDAO.deleteUser(Id);
		request.getRequestDispatcher("").forward(request, response);
	}
	
	protected void viewAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> allUsers = userDAO.viewAllUsers();
		request.setAttribute("allUsers", allUsers);
		request.getRequestDispatcher("").forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		
		if (userDAO.login(user, pass)) {
			request.getRequestDispatcher("").forward(request, response);
		}else{
			request.setAttribute("failedLogInMsg", "Username or password incorrect");
		}
	}
	
	protected void changePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
