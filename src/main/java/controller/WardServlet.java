package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


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
			request.getRequestDispatcher("WEB-INF/View/AddWard.jsp").forward(request, response);
			break;
		case "addWard":
			break;
 
		

		default:
			//viewWard(request,response);
			break;
		}
		request.getRequestDispatcher("WEB-INF/Ward/ViewWard.jsp").forward(request, response);
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	private void deleteWard(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void updateWard(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void addWard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/Ward/AddWard.jsp").forward(request, response);
		HttpSession session = request.getSession();
		
	}
	
	private void viewAllWard(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	private void viewWard(HttpServletRequest request, HttpServletResponse response) {
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
