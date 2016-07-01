package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Department;
import model.Ward;

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
	private WardDAO wardDAO;
	
	
    public DepartmentServlet() {
 
    	departmentDAO = new DepartmentDAO();	
    	wardDAO = new WardDAO();	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action==null){
			action="viewAll";
		}
		switch (action) {
		case "addDepartment":
			addDepartment(request,response);
			
			break;
		case "deleteDepartment":
			deleteDepartment(request,response);
			
			break;

		default:
			viewAllDepartment(request,response);
			break;
		}
		

	}

	private void deleteDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int deptId =  Integer.parseInt(request.getParameter("deptId")) ;	
		
	
		boolean departmentId = departmentDAO.deleteDepartment(deptId);
		if(departmentId) System.out.println("Department Deleted ");
		
		response.sendRedirect("DepartmentServlet?action=viewAll");
		
	}
	
	private void updateDepartment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void addDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("Departmentname");
		
		Department deparment = new Department();
		deparment.setName(name);
		
	
		boolean departmentId = departmentDAO.addDepartment(deparment);
		if(departmentId) System.out.println("Department Inserted ");
		
		response.sendRedirect("DepartmentServlet?action=viewAll");
		
		
	}
	
	private void viewAllDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Get the list of Department from the DAO */
		List<Department> listOfDepartment = departmentDAO.viewDepartment();
		
		/* Assign the listOfDepartment to an attribute in the request object */
		request.setAttribute("listOfDepartment", listOfDepartment);

		
		
		List<Ward> wardList = wardDAO.viewWard();	
				
		Map<Integer, String> mapOfWards  = new HashMap<>();
		for(Ward d:wardList){
			mapOfWards.put(d.getId(), d.getName());
		}
		
		request.setAttribute("mapOfWards", mapOfWards);
			
	
		request.getRequestDispatcher("WEB-INF/View/Department/ViewDepartment.jsp").forward(request, response);

		
		
	}
	
	private void viewDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("WEB-INF/View/Department/ViewDepartment.jsp").
        forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}