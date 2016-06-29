package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bed;
import model.Department;
import model.Hospital;
import model.Ward;

/**
 * Servlet implementation class BedServlet
 */
@WebServlet("/BedServlet")
public class BedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BedDAO bedDAO;
    private DepartmentDAO departmentDAO;
    private WardDAO wardDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BedServlet() {      
        // TODO Auto-generated constructor stub
        bedDAO = new BedDAO();
        departmentDAO = new DepartmentDAO();
        wardDAO = new WardDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action==null){
			action="viewBeds";
		}
		switch (action) {
		
		case "showAddForm":
			showAddForm(request, response);
			break;
		case "addBed":
			addBed(request,response);
			break;
		default:
			viewBeds(request,response);
			break;
		}
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// Get the bed list
		
		List<Department> departmentList = departmentDAO.viewDepartment();
		
		String strDeptOption = request.getParameter("deptOption");
		int deptOption = 0;
		if(strDeptOption!=null){
			deptOption = Integer.parseInt(strDeptOption);
		}
		System.out.println("deptOptoin:"+deptOption	);
		if(deptOption!=0){
			List<Ward> wardList = wardDAO.viewWardByDeptId(deptOption);
		}
		
		request.setAttribute("departmentList", departmentList);
		
		request.getRequestDispatcher("WEB-INF/view/Bed/addBed.jsp").forward(request, response);
		
		
	}
	
	private void addBed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Bed bed = new Bed();
		bed.setOccupied(false);
		bed.setRoomId(5);
		bedDAO.addBed(bed);
		System.out.println("Bed inserted");
		
		
	}

	private void viewBeds(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// Get the bed list
		List<Bed> bedsList = bedDAO.viewBed();
		// With the help of roomId get the Room list
		
		//
		request.setAttribute("bedsList",bedsList);
		//System.out.println(bedsList);
		request.getRequestDispatcher("WEB-INF/view/Bed/viewBed.jsp").forward(request, response);
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
