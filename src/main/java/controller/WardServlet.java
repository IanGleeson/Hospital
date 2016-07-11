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
			viewAllWards(request,response);
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
		response.sendRedirect("Ward?action=viewAllWards");
	}
	
	private void updateWard (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("wardId"));
		int deptId = Integer.parseInt(request.getParameter("selectOption"));
		String name= request.getParameter("wardName");
		String departmentName="";
		String message = "";
		List<Ward> wardList = wardDAO.viewAllWard();
		boolean isFound=false;
		Ward ward=  wardDAO.viewWard(id);
		Ward updateW=new Ward(id, name, deptId);
		
		if(!ward.getName().equals(name)){
	
		for(Ward w:wardList){
			
				if(w.getName().equals(name)){
					message=" Ward Name " +name + " already exists..";			
					isFound=true;
				}
			}

		}else if(ward.getDeptId()!=deptId){
			
			wardDAO.updateWard(updateW);
			message=" Department " +name + " Updated..";
		}
	
		if(isFound==false){
			if(ward.getDeptId()!=deptId){
				message=" Department " +name + " Updated..";
			}

			if(wardDAO.updateWard(updateW))
				{
				message +=" Ward " +name + " Updated..";
				}else
					{
						message=" Ward " +name + " cannot add!! Some error Occured";
					}
			
			}
		request.setAttribute("message", message);
		viewAllWards(request,response); 
		}	 
	
	private void updateWardForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("wardId"));
		int deptId = Integer.parseInt(request.getParameter("departmentId"));
		String departmentName="";

 

		List<Department> departmentList =wardDAO.viewDepartment();
		for(Department d:departmentList){
			if(d.getId()==deptId){
				departmentName=d.getName();
				System.out.println(departmentName);
				request.setAttribute("departmentName", departmentName);
			}
		}
		
		Ward w= wardDAO.getWardById(id);
		
		request.setAttribute("ward", w);
		request.setAttribute("departmentList", departmentList);
		

		request.getRequestDispatcher("WEB-INF/view/Ward/UpdateWard.jsp").forward(request, response);
		
	}
	private void addWard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.getRequestDispatcher("WEB-INF/Ward/AddWard.jsp").forward(request, response);*/
		int deptId=Integer.parseInt(request.getParameter("selectOption"));
		String wardName=request.getParameter("wardName");
		String message = "";
		List<Ward> wardList = wardDAO.viewAllWard();
		boolean isFound=false;
		
		for(Ward w:wardList){
			if(w.getName().equals(wardName)){
				message=" Ward " +wardName + " already exists";
				
				isFound=true;
			}
		}
		if(isFound==false){
		Ward ward=new Ward(0, wardName, deptId);

		if(wardDAO.addWard(ward))
		{
		message=" Ward " +wardName + " added..";
		}else
		{
			message=" Ward " +wardName + " cannot add!! Some error Occured";
		}
		
		
		System.out.println("New ward added "+ward);
		}
		request.setAttribute("message", message);
		viewAllWards(request,response);
	}
	
	private void addWardForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		List<Department> departmentList =wardDAO.viewDepartment();
		
		request.setAttribute("departmentList", departmentList);
		

		request.getRequestDispatcher("WEB-INF/view/Ward/AddWard.jsp").forward(request, response);
		
	}
		
	private void viewAllWards(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Ward> wardList = wardDAO.viewAllWard();
		
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
		request.getRequestDispatcher("/WEB-INF/view/Ward/ViewAllWards.jsp").forward(request, response);
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
