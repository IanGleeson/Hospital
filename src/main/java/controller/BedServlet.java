package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bed;
import model.Hospital;

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
		
		case "showBedForm":
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

	private void addBed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Bed bed = new Bed();
		bed.setOccupied(false);
		bed.setRoomId(5);
		bedDAO.addBed(bed);
		System.out.println("Bed inserted");
		
		
	}

	private void viewBeds(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// Get the bed list
		List<Hospital> bedsList = bedDAO.viewBed();
		// With the help of roomId get the Room list
		
		//
		request.setAttribute("bedsList",bedsList);
		//System.out.println(bedsList);
		request.getRequestDispatcher("WEB-INF/Bed/viewBed.jsp").forward(request, response);
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
