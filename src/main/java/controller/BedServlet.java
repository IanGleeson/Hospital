package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.BedDAO;
import model.Bed;


/**
 * Servlet implementation class BedServlet
 */
public class BedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BedDAO bedDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BedServlet() {
        super();
        // TODO Auto-generated constructor stub
        bedDAO = new BedDAO();
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
		case "addBed":
			break;

		default:
			//viewRoom(request,response);
			addBed(request, response);
			break;
		}
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void deleteBed(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void updateBed(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void addBed(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Bed bed = new Bed();
		bed.setId(1);
		bed.setRoomId(1);
		bed.setOccupied(true);
		bedDAO.addBed(bed);
		
	}
	
	private void viewAllBed(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void viewBed(HttpServletRequest request, HttpServletResponse response) {
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
