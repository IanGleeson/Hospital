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
		case "editDepartment":
			updateDepartment(request,response);
			
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
		Department deparment = departmentDAO.viewDepartment(deptId);
		String  message ="";
		boolean departmentId = departmentDAO.deleteDepartment(deptId);
		if(departmentId) {System.out.println("Department Deleted ");
		message = "Depatment Name "+deparment.getName() +"  deleted ";
		}
		else
		message = "Depatment Name "+deparment.getName() +" not deleted ";
		request.setAttribute("message", message);
		viewAllDepartment(request,response);
		
	}
	
	private void updateDepartment(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		int deptId =  Integer.parseInt(request.getParameter("deptId")) ;
		Department deparment = departmentDAO.viewDepartment(deptId);
		String name =  request.getParameter("Departmentname") ;
		String  message ="";
		System.out.println("DeptID "+deptId+" Dept Name "+name);
		
		if (deparment.getName().equals(name)) message = "No change in Department name to update ";
		else
		if(!departmentNameExists(name)){	
		Department updatedeparment = new Department(deptId,name);		
		boolean departmentId = departmentDAO.updateDepartment(updatedeparment);
		
		if(departmentId){ 
		System.out.println("Department "+deparment.getName() +" Upated to "+name);		
		message = "Department "+deparment.getName() +" Upated to "+name;
		}
		else
		message = "Depatment Name "+deparment.getName()  + " not Updated, error occured please try later..";
		} 
		else
		message = name+" Department already exists.. ";
		request.setAttribute("message", message);
		viewAllDepartment(request,response);
		
	}
	
	private void addDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("Departmentname");
		String message = "";
		if(!departmentNameExists(name)){	
		Department deparment = new Department();
		deparment.setName(name);	
	
		boolean departmentId = departmentDAO.addDepartment(deparment);
		if(departmentId) {System.out.println("Department Inserted ");
        message = "New Depatment Name "+name + " added";
		}
		else
			message = "Depatment Name "+name  + " not added, error occured please try later..";
	    }
		else
	    message = "Depatment Name "+name + " Already Exists";
		
		request.setAttribute("message", message);
		viewAllDepartment(request,response);
		
		
	}
	
	private boolean departmentNameExists (String name){
		List<Department> listOfDepartment = departmentDAO.viewAllDepartment();
		  for(Department d : listOfDepartment){
			  System.out.println("Department :"+d.getId()+ " Wards: "+d.getWards());
			  
		        if(d.getName() != null && d.getName().equals(name)){
		        	return true;	
		          
		    }
		        }
		
		return false;
		
	}
	
	
	private void viewAllDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Get the list of Department from the DAO */
		List<Department> listOfDepartment = departmentDAO.viewAllDepartment();
		
		/* Assign the listOfDepartment to an attribute in the request object */
		request.setAttribute("listOfDepartment", listOfDepartment);

		
/*		List<Ward> wardList = wardDAO.viewWard();	
		Map<Integer, String> mapOfWards  = new HashMap<>();
		for(Department Dept:listOfDepartment){
			mapOfWards.put(Dept.getId(), getWardNames(Dept.getId(),wardList));
			getWardNames(Dept.getId(),wardList);
		}
				
		
		request.setAttribute("mapOfWards", mapOfWards);*/
			
	
		request.getRequestDispatcher("WEB-INF/view/Department/ViewDepartment.jsp").forward(request, response);

		
		
	}
	
	private String getWardNames(int deptId,List<Ward> wardList){
			String wards="";
		for(Ward ward:wardList){
			if(deptId==ward.getDeptId()){
		 	wards += ward.getName() +", ";
			}
		}
		return wards;
	}
	
	private void viewDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("WEB-INF/iew/Department/ViewDepartment.jsp").
        forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}