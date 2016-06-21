package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Patient;
import model.PatientType;
import model.Prescription;

public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Patient> allPatients;
	private PatientDAO patientDAO = new PatientDAO();
	private Prescription prescription;
       
	
    public PatientServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	String action = request.getParameter("action");
		if (action == null) {
			action = "viewAllPatients";
		} */
		System.out.println("in doGet()");
		addPatient(request, response);
		response.sendRedirect("index.jsp");	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	protected void addPatient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Patient  p = new Patient(0, "A", "B", null, false, null, "015544", "Test", 123, 12, null,
        		null, 12, null, true, null, null, PatientType.PRIVATE, true);
		System.out.println(p);
		patientDAO.addPatient(p);
        //response.sendRedirect("index.jsp");		
	}
	
	
}



