package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Department;

/**
 * Servlet implementation class Department
 */
@WebServlet( "/DepartmentServlet" )
public class DepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     * 
     */
	
	private DepartmentDAO departmentDAO;
	
    public DepartmentServlet() {
 
    	departmentDAO = new DepartmentDAO();	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action==null){
			action="addDepartment";
		}
		switch (action) {
		case "addDepartment":
			addDepartment(request,response);
			
			break;

		default:
			viewDepartment(request,response);
			break;
		}
		

	}

	private void deleteDepartment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void updateDepartment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void addDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String name = request.getParameter("name");
		String name = "Cardiology";
		
		Department d = new Department();
		d.setName(name);
		
		System.out.println("Department details: " + d);
		
		boolean departmentId = departmentDAO.addDepartment(d);
		if(departmentId) System.out.println("Department Inserted ");
		
	//	response.sendRedirect("DepartmentServlet?action=addDepartment");
		
		
	}
	
	private void viewAllDepartment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void viewDepartment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
