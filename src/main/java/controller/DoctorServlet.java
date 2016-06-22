package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorServlet
 */
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoctorServlet() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action){
		case "addDoctor":
			//addDoctor(request,response);
			break;
		case "updateDoctor":
			//updateDoctor(request,response);
			break;
		case "getAllDoctors":
			//getAllDoctors(request,response);
			break;
		case"deleteDoctor":
			//deleteDoctor(request, response);
			break;
		case "getDoctorDetailsById":
		//getDoctorDetailsById(request, response);
		break;
		case "getDoctorDetailsByLastname":
			//getDoctorDetailsByLastname(request,response);
			break;
		case "getDoctorDetailsByDepartment":
			//getDoctorDetailsByDepartment(request, response);
			break;
		default: //viewAll
			break;
		}
		
	}

	public void addDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String firstName = request.getParameter("firstName");
		//String lastName = request.getParameter("lastName");
		
	} 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
