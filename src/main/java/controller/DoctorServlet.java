package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import model.Doctor;
import model.Gender;



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
			request.getRequestDispatcher("WEB-INF/view/addDoctor.jsp").forward(request, response);
			break;
		
		case "showGetDoctorDetailsByIdForm":
			request.getRequestDispatcher("WEB-INF/view/getDoctorDetailsById.jsp").forward(request, response);
			break;
		
		case "showGetDoctorDetailsByLastNameForm":
			System.out.println("You have made it to the case showGetDoctorDetailsByLastname Form");
		request.getRequestDispatcher("WEB-INF/view/getDoctorDetailsByLastName.jsp").forward(request, response);
		System.out.println("You are going to the getDoctorDetailsByLastName jsp");
		break;
		
		case "viewDoctorDetailsByDepartment":
			System.out.println("YOU MADE IT to the viewDoctorDetailsByDepartment CASE in the SWITCH of the  Doctor Servlet");
			request.getRequestDispatcher("WEB-INF/view/viewDoctorsByDepartmentId.jsp").forward(request,response);
			System.out.println("You are about to got to the viewDoctorsByDepartmentId.jsp");
			break;
		
//		case "showUpdateForm":
//			showUpdateForm(request, response);
//			break;
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
		case "getDoctorDetailsByLastName":
			getDoctorDetailsByLastName(request,response);
			break;
		case "getDoctorDetailsByDepartment":
			System.out.println("You have made it to the getDoctorDetailsByDepartment case of the SWITCH statement!!!");
			getDoctorDetailsByDepartment(request, response);
			break;
		default: //viewAll
			viewDoctors(request, response);
			break;
		}
	}
	
//	public void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		
//		Doctor doctor = new Doctor();
//		String firstName = request.getParameter("firstName");
//		String lastName = request.getParameter("lastName");
//		String genderAsString =request.getParameter("gender");
//		Gender gender = Gender.valueOf(genderAsString);
//
//
//
//		String address = request.getParameter("address");
//		String phoneNumber = request.getParameter("phoneNumber");
//		String qualification = request.getParameter("qualification");
//		String deptId = request.getParameter("deptId");
//		int deptIdAsInt= Integer.parseInt(deptId);
//		
//		doctor.setFirstName(firstName);
//		doctor.setLastName(lastName);
//		doctor.setGender(gender);
//		doctor.setAddress(address);
//		doctor.setPhoneNumber(phoneNumber);
//		doctor.setQualification(qualification);
//		doctor.setDeptId(deptIdAsInt);
//		request.setAttribute("doctor", doctor);
//		request.getRequestDispatcher("WEB-INF/view/updateDoctor.jsp");
//	}
	public void addDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("You are in add doctor of the servlet");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String genderAsString =request.getParameter("gender").toUpperCase();
		Gender gender = Gender.valueOf(genderAsString);



		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		String qualification = request.getParameter("qualification");
		String deptId = request.getParameter("deptId");
		int deptIdAsInt= Integer.parseInt(deptId);

		Doctor dockie = new Doctor();
		dockie.setFirstName(firstName);
		dockie.setLastName(lastName);
		dockie.setGender(gender);
		dockie.setAddress(address);
		dockie.setPhoneNumber(phoneNumber);
		dockie.setQualification(qualification);
		dockie.setDeptId(deptIdAsInt);
		System.out.println("you are about to add "+dockie + " to the database");
		int integer = doctorDAO.addDoctor(dockie);
		System.out.println("you have returned from the DAO and "+ dockie + " has been saved");
		if (integer !=0){
			System.out.println(dockie +"was added to the database");
		}
		System.out.println("you are about to go to the viewAll in the servlet");
		response.sendRedirect("DoctorServlet?action=viewAll");

	}

	public void updateDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("You are in the updateDoctor of the servlet");
		
		
		int id = Integer.valueOf(request.getParameter("doctorId"));

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String genderAsString = request.getParameter("gender").toUpperCase();
		Gender gender = Gender.valueOf(genderAsString);


		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		String qualification = request.getParameter("qualification");
		System.out.println("The qualification is "+qualification);
		String deptId = request.getParameter("deptId");
		System.out.println("The dept id as a string is "+deptId);
		int deptIdAsInt= Integer.parseInt(deptId);

		Doctor d = new Doctor(id, firstName, lastName, gender, address, phoneNumber,qualification,deptIdAsInt);
		System.out.println("The doctor you want to update is "+ d);
		// Send that doctor to the DAO
		doctorDAO.updateDoctor(d);
		response.sendRedirect("DoctorServlet?action=viewAll");
	}

	public void viewDoctors(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("you are in the viewdocs of the servlet");
		List<Doctor> listOfDoctors = null;
		listOfDoctors = doctorDAO.getAllDoctors();
		System.out.println("you are in the view docs of the servlet");
		System.out.println("the list of doctors is "+ listOfDoctors);
		request.setAttribute("listOfDoctors", listOfDoctors);
		System.out.println("you heve set the attribute");
		request.getRequestDispatcher("WEB-INF/view/Doctor/viewDoctors.jsp").
		forward(request, response);		
	}	



	public List <Doctor> getDoctorDetailsById(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		List <Doctor> listOfDoctors = new ArrayList<>();
		Doctor niceGuy = new Doctor();
		String doctorIdAsString=request.getParameter("doctorId");
		System.out.println("The doctorId as a string is "+doctorIdAsString);
		int doctorId = Integer.parseInt(request.getParameter("doctorId"));
		System.out.println("The doctor id parsed as an int is "+doctorId);
		niceGuy = doctorDAO.getDoctorDetailsById(doctorId);
		if (niceGuy == null){
			System.out.println("You have gone into the IF statement in the getDoctorDetailsById method in the Servlet which indictes the Doctor object returned from DAO is NULL!");
			String message = "There is no Doctor of that Last Name in the database";
			request.setAttribute("message", message);
			request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
			System.out.println("You have successfully passed the MESSAGE 'No doc in database' to the JSP from the getDocDetById method of the Servlet");
		}
		else{
		System.out.println("You have come back to the servlet from the getDoctorDetailsById method in the DAO");
		listOfDoctors.add(niceGuy);
		request.setAttribute("listOfDoctors", listOfDoctors);
		request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
		System.out.println("You have forwarded the listOfDoctors "+ listOfDoctors+ " to the jsp");
		}
		return listOfDoctors;
		
	}

	public Doctor getDoctorDetailsByLastName(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		System.out.println("Congrats, you have MADE it to the getDoctorDetailsbyLastName method in the Doctor Servlet!! YEAH");
		Doctor quack = new Doctor();
		List<Doctor> listOfDoctors = new ArrayList<>();
		String doctorLastName = request.getParameter("doctorLastName");
		System.out.println("The doctor last name as a string is "+doctorLastName);
		listOfDoctors = doctorDAO.getDoctorDetailsByLastName(doctorLastName);
		if (listOfDoctors ==null){
			String message = "There is no Doctor of that Last Name in the database";
			request.setAttribute("message", message);
			request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
		}
		else{
		request.setAttribute("listOfDoctors", listOfDoctors);
		request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
		System.out.println("You have forwarded the listOfDoctors to the jsp"); 
		}
		return quack;
	}	
	public List<Doctor> getDoctorDetailsByDepartment(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		System.out.println("You have MADE IT to the getDocDetByDept METHOD of the DOCTOR Servlet");
		List<Doctor> listOfDoctors = new ArrayList<>();
		String departmentId = request.getParameter("deptId");
		listOfDoctors = doctorDAO.getDoctorDetailsByDepartment(departmentId);
		request.setAttribute("listOfDoctors", listOfDoctors);
		request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
		return listOfDoctors;
	}
	public void deleteDoctor(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		int doctorId = Integer.valueOf(request.getParameter("doctorId"));
		doctorDAO.deleteDoctor(doctorId);
		request.getRequestDispatcher("WEB-INF/view/viewDoctors.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
