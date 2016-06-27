package controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RoomTypeAndCost;

/**
 * Servlet implementation class RoomTypeAndCostServlet
 */
@WebServlet("/RoomTypeAndCostServlet")
public class RoomTypeAndCostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoomTypeAndCostDAO roomTypeAndCostDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomTypeAndCostServlet() {
        super();
        // TODO Auto-generated constructor stub
        roomTypeAndCostDAO = new RoomTypeAndCostDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action==null){
			action="viewRoomTypeAndCost";
		}
		switch (action) {
		case "addRoomTypeAndCost":
			addRoomTypeAndCost(request,response);
			
			break;

		default:
			//viewRoomTypeAndCost(request,response);
			addRoomTypeAndCost(request,response);
			break;
		}
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void viewRoomTypeAndCost(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void addRoomTypeAndCost(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		RoomTypeAndCost roomTypeAndCost = new RoomTypeAndCost();
		roomTypeAndCost.setRoomType("Day room");
		roomTypeAndCost.setCost(new BigDecimal(300));
		roomTypeAndCostDAO.addRoomTypeAndCost(roomTypeAndCost);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
