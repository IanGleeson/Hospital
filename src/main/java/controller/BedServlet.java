package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bed;
import model.Department;
import model.Hospital;

import model.Room;
import model.RoomType;
import model.RoomTypeAndCost;



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
    private RoomDAO roomDAO;
    private RoomTypeAndCostDAO roomTypeAndCostDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BedServlet() {      
        // TODO Auto-generated constructor stub
        bedDAO = new BedDAO();
        departmentDAO = new DepartmentDAO();
        wardDAO = new WardDAO();
        roomDAO = new RoomDAO();
        roomTypeAndCostDAO = new RoomTypeAndCostDAO();
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
		case "bedLayout":
			bedLayout(request, response);
			break;
		case "showAddForm":
			showAddForm(request, response);
			break;
		case "addBed":
			addBed(request,response);
			break;
		case "delete":
			deleteBed(request,response);
			break;
		default:
			viewBeds(request,response);
			break;
		}
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void deleteBed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String strBedId = request.getParameter("bedId");
		boolean isDeleted = bedDAO.deleteBed(Integer.parseInt(strBedId));
		request.getRequestDispatcher("WEB-INF/view/Bed/viewBed.jsp").forward(request, response);
	}
	
	private void bedLayout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Hospital> hospList = bedDAO.viewHospital();
		//List<RoomType> roomTypeList = bedDAO.getRoomType();
		//request.setAttribute("roomTypeList", roomTypeList);

		request.getRequestDispatcher("WEB-INF/view/Bed/bedLayout.jsp").forward(request, response);
	}
	
	
	private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// Get the bed list
		
		List<Ward> wardList = wardDAO.viewWard();
		request.setAttribute("wardList",wardList);
		
		String strWardOption = "16";//request.getParameter("wardOption");
		System.out.println("wardOption= "+strWardOption);
		List<Room> roomList = new ArrayList();
		if(strWardOption!=null){
			roomList = roomDAO.viewRoomByWardId(Integer.parseInt(strWardOption));
			
			String strRoomOption = request.getParameter("roomOption");
			
			
			String occupied = request.getParameter("occupied");
			if(occupied==null){
				occupied = "false";
			}
			System.out.println("occupied = "+occupied);
			
			
			
		}
		
		request.setAttribute("roomList",roomList);
		List<RoomTypeAndCost> roomTypeAndCostList = roomTypeAndCostDAO.viewRoomTypeAndCost();
		
		Map<Integer, String> mapOfRoomTypeAndCost  = new HashMap<>();
		for(RoomTypeAndCost RC :roomTypeAndCostList){
			mapOfRoomTypeAndCost.put(RC.getId(), RC.getRoomType());
		}
		
		request.setAttribute("mapOfRoomTypeAndCost", mapOfRoomTypeAndCost);
		
		request.setAttribute("wardList", wardList);
		
		
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