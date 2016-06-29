package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Department;
import model.Ward;


public class WardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private WardDAO wardDAO;
	
    public WardServlet() {
        wardDAO = new WardDAO();
        System.out.println("Database Created");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action==null){
			action="viewAll";
		}
		switch (action) {
		case "addWardForm":
			addWardForm(request,response);
			break;
		case "addWard":
			addWard(request,response);
			break;
		case "delete":
			deleteWard(request,response);
			break;	
		case "updateWard":
			updateWard(request, response);
			break;
		case "updateWardForm":
			updateWardForm(request, response);
			break;
		default:
			viewWard(request,response);
			//request.getRequestDispatcher("WEB-INF/Ward/ViewAllWards.jsp").forward(request, response);
			break;
		}
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	private void deleteWard(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.valueOf(request.getParameter("wardId"));
		wardDAO.deleteWard(id);
		response.sendRedirect("Ward?action=viewAll");
	}
	
	private void updateWard (HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void updateWardForm(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void addWard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.getRequestDispatcher("WEB-INF/Ward/AddWard.jsp").forward(request, response);*/
		int deptId=Integer.parseInt(request.getParameter("selectOption"));
		String wardName=request.getParameter("wardName");
					
		Ward ward=new Ward(0, wardName, deptId);
		//ward.setId(0);
//		ward.setDeptId(deptId);
//		ward.setName(wardName);
		System.out.println(deptId);
		System.out.println(wardName);
		wardDAO.addWard(ward);
		System.out.println("New ward added "+ward);
		
		response.sendRedirect("Ward?action=viewAll");
		
	}
	
	private void addWardForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		List<Department> departmentList =wardDAO.viewDepartment();
		
		request.setAttribute("departmentList", departmentList);
		

		request.getRequestDispatcher("WEB-INF/Ward/AddWard.jsp").forward(request, response);
		
	}
		
	private void viewWard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Ward> wardList = wardDAO.viewWard();
		
		List<Department> departmentList =wardDAO.viewDepartment();
		
		Map<Integer, String> mapOfDepartment  = new HashMap<>();
		for(Department d:departmentList){
			mapOfDepartment.put(d.getId(), d.getName());
		}
		
		request.setAttribute("mapOfDepartment", mapOfDepartment);
		
		request.setAttribute("wardList", wardList);
		//System.out.println(wardList);
		for(Ward w : wardList){
			System.out.println(w);
		}
		request.getRequestDispatcher("/WEB-INF/Ward/ViewAllWards.jsp").forward(request, response);
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
