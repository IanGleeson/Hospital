package controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Note;
import model.Patient;
import model.PatientType;
import model.Prescription;


public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Patient> allPatients;
	private PatientDAO patientDAO= new PatientDAO();
	//private Prescription prescription;
       
	
    public PatientServlet() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	String action = request.getParameter("action");
		if (action == null) {
			action = "viewAllPatients";
		} */
		System.out.println("in doGet()");
		addPatient(request, response);
		request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	protected void addPatient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Set<Prescription> setOfPres = new HashSet<>();
		/*setOfPres.add(new Prescription(0, null));
		setOfPres.add(new Prescription(0, null));
		setOfPres.add(new Prescription(0, null));
		Set<Note> patientNotes = new HashSet<>();
		patientNotes.add(new Note(0, "abc"));
		patientNotes.add(new Note(0, "def"));
		patientNotes.add(new Note(0, "ghi"));
		
		Patient p = new Patient(0, "a", "c", null, true, "s", "m", "n", 1, 2, null, null, 
				3, null, true, setOfPres, patientNotes, PatientType.SEMI_PRIVATE, true);
		
		System.out.println(p);
		patientDAO.addPatient(p);*/
        //response.sendRedirect("index.jsp");		
	}
	
	
}



