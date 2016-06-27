package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bed;

/**
 * Servlet implementation class BedServlet
 */
@WebServlet("/BedServlet")
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
			action="viewBeds";
		}
		switch (action) {
		case "addBed":
			addBed(request,response);
			
			break;

		default:
			viewBeds(request,response);
			break;
		}
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void addBed(HttpServletRequest request, HttpServletResponse response) {
		Bed bed = new Bed();
		bed.setId(1);
		bed.setOccupied(false);
		bed.setRoomId(1);
		bedDAO.addBed(bed);
		System.out.println("Bed inserted");
		
		
	}

	private void viewBeds(HttpServletRequest request, HttpServletResponse response) {
		Bed bed = new Bed();
		bed.setId(1);
		bed.setOccupied(false);
		bed.setRoomId(1);
		bedDAO.addBed(bed);
		System.out.println("Bed inserted");
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
