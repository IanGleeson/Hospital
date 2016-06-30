package controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bed;
import model.Room;

/**
 * Servlet implementation class RoomServlet
 */
public class RoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private RoomDAO roomDAO;

    public RoomServlet() {
        roomDAO = new RoomDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action==null){
			action="addRoom";
		}
		switch (action) {
		case "addRoom": 		
			addRoom(request,response);
			break;
		case "addRoomForm": 		
			request.getRequestDispatcher("WEB-INF/view/Room/addRoomForm.jsp").forward(request, response);
			break;
		case "deleteRoom": 		
			deleteRoom(request,response);
			break;	
		default:				
			viewRoom(request,response);
			break;
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @param request
	 * @param response
	 */

	private void deleteRoom(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("roomId"));
		roomDAO.deleteRoom(id);
		response.sendRedirect("Room?action=viewRoom");
		
	}
	
	private void addRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	Room room = new Room();
		room.setWardId(1);
		room.setType(1);
		roomDAO.addRoom(room);
		System.out.println("Room Added to the database");
	*/request.getRequestDispatcher("WEB-INF/view/Room/addRoom.jsp").forward(request, response);
	}
	
	private void viewRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Room> roomsList = roomDAO.viewRoom();
		request.setAttribute("roomList", roomsList);
		request.getRequestDispatcher("WEB-INF/view/Room/viewRoom.jsp").forward(request, response);
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
