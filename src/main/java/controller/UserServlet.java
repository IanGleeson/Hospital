
package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<User> allUsers;
	private UserDAO userDAO;
       
   
    public UserServlet() {
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
	
	protected void addUser(User user){
		
		
	}
	protected void updateUser(int userId){
		
		
	}
	protected void deleteUser(int userId){
		
		
	}
	protected List<User> viewAllUsers(int userId){
		
		return allUsers;
	}
	protected void login(String username, String password){
		
		
	}
	protected void logout(){
		
		
	}
	protected void changePassword(User user){
		
		
	}
	protected void showAddUserForm(){
		
		
	}
	protected void showUpdateUserForm(){
		
		
	}

}
