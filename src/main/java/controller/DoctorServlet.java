package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.Doctor;

@WebServlet({ "/DoctorServlet", "/doctor" })
@SuppressWarnings("unchecked")
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DoctorDAO doctorDAO;
	public DoctorServlet() {
		super();
		doctorDAO = new DoctorDAO();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("You are in the DO GET!");
		
		String action = request.getParameter("action");
		if(action==null){
			action = "viewAll";
		}
		switch(action){
		case "showInsertForm":
			System.out.println("You are in the showInsertForm in the DoctorServlet and you're about to go to the jsp");
			request.getRequestDispatcher("WEB-INF/View/addDoctor.jsp");
			System.out.println("Your response.sendRedirect method in the showInsertForm of the switch statement of the DoctorServlet is NOT working!!!");
			break;
		case "addDoctor":
			addDoctor(request,response);
			break;
		case "updateDoctor":
			updateDoctor(request,response);
			break;
		case "viewDoctors":
			viewDoctors(request,response);
			break;
		case"deleteDoctor":
			deleteDoctor(request, response);
			break;
		case "getDoctorDetailsById":
		getDoctorDetailsById(request, response);
		break;
		case "getDoctorDetailsByLastname":
			getDoctorDetailsByLastname(request,response);
			break;
		case "getDoctorDetailsByDepartment":
			getDoctorDetailsByDepartment(request, response);
			break;
		default: //viewAll
			viewDoctors(request, response);
			break;
		}
		}
		public void addDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			//String gender = request.getParameter("gender");
			
			boolean isMale;
			isMale = true;
//			if(gender.equals("M")){
//			 isMale = true;
//			}
//				else isMale = false;
			
			String address = request.getParameter("address");
			String phoneNumber = request.getParameter("phoneNumber");
			String qualification = request.getParameter("qualification");
			String deptId = request.getParameter("deptId");
		//	int departmentId = Integer.valueOf(deptId);
			int departmentId = 32;
			Doctor dockie = new Doctor();
			dockie.setFirstName(firstName);
			dockie.setLastName(lastName);
			dockie.setGender(isMale);
			dockie.setAddress(address);
			dockie.setPhoneNumber(phoneNumber);
			dockie.setQualification(qualification);
			dockie.setDeptId(departmentId);
			int integer = doctorDAO.addDoctor(dockie);
			response.sendRedirect("DoctorServlet?action=viewAll");
			
	}

		public void updateDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			int id = Integer.valueOf(request.getParameter("id"));
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String gender = request.getParameter("gender");
			boolean isMale;
			if(gender.equals("M")){
			 isMale = true;
			}
				else isMale = false;
			
			String address = request.getParameter("address");
			String phoneNumber = request.getParameter("phoneNumber");
			String qualification = request.getParameter("qualification");
			int departmentId = Integer.valueOf(request.getParameter("deptId"));
			
			Doctor d = new Doctor(id, firstName, lastName, isMale, address, phoneNumber,qualification,departmentId);
			
			// Send that doctor to the DAO
			doctorDAO.updateDoctor(d);
			response.sendRedirect("DoctorServlet?action=viewAll");
			}
		
		public List<Doctor> viewDoctors(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Doctor> listOfDoctors = null;
		listOfDoctors = doctorDAO.getAllDoctors();
		request.setAttribute("listOfDoctors", listOfDoctors);
		request.getRequestDispatcher("WEB-INF/View/viewDoctors.jsp").
				forward(request, response);
		return listOfDoctors;
		}	
		public Doctor getDoctorDetailsById(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		Doctor quack = new Doctor();
		int doctorId = Integer.parseInt(request.getParameter("doctorId"));
		quack = doctorDAO.getDoctorDetailsById(doctorId);
		request.setAttribute("doctor", quack);
		request.getRequestDispatcher("WEB-INF/View/viewDoctors.jsp").forward(request, response);
		return quack;
		}
		
		public Doctor getDoctorDetailsByLastname(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		Doctor quack = new Doctor();
		String lastName = request.getParameter("lastName");
		quack = doctorDAO.getDoctorDetailsByLastname(lastName);
		request.setAttribute("doctor", quack);
		request.getRequestDispatcher("WEB-INF/View/viewDoctors.jsp").forward(request, response);
		
		response.sendRedirect("DoctorServlet?action=viewAll");
		return quack;
		}	
		public Doctor getDoctorDetailsByDepartment(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		Doctor quack = new Doctor();
		String department = request.getParameter("department");
		quack = doctorDAO.getDoctorDetailsByDepartment(department);
		request.setAttribute("doctor", quack);
		request.getRequestDispatcher("WEB-INF/View/viewDoctors.jsp").forward(request, response);
		return quack;
		}
		public void deleteDoctor(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		int doctorId = Integer.valueOf(request.getParameter("doctorId"));
		doctorDAO.deleteDoctor(doctorId);
		response.sendRedirect("WEB-INF/View/viewDoctors.jsp");
		}
		
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
