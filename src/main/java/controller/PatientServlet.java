package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
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

@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// private List<Patient> allPatients;
	private PatientDAO patientDAO = new PatientDAO();
	// private Prescription prescription;

	public PatientServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action == null) {
			action = "viewAllPatients";
		}

		switch (action) {
		case "showAddPatientForm":
			request.getRequestDispatcher("WEB-INF/view/insertPatient.jsp").forward(request, response);
			break;

		case "addPatient":

			addPatient(request, response);
			break;
		case "showUpdatePatientForm":

			showUpdatePatientForm(request, response);
			break;
		case "updatePatient":

			updatePatient(request, response);
			break;
		case "viewNotes":

			viewNotes(request, response);
			break;

		default:
			viewAllPatients(request, response);
			break;
		}

		// System.out.println("in doGet()");
		// addPatient(request, response);
		// request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request,
		// response);
	}

	protected void viewNotes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String patientNotesString = "";
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		
		List<Note> patientNotes = patientDAO.getNotesById(patientId);
		for (Note note:patientNotes) {
			patientNotesString += note.getNoteDate() +" " + note.getContent() +"\n";
		}
		
		//request.setAttribute("patientNotes", patientNotes);
		
		System.out.println("these are the notes " + patientNotes);
		
		
	}
	
	protected void updatePatient(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int patientId = Integer.valueOf(request.getParameter("patientId"));

		System.out.println("This is the patient ID " + patientId);

		String forename = request.getParameter("forename");
		String surname = request.getParameter("surname");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		String address = request.getParameter("address");

		String phone = request.getParameter("phoneNumber");
		String nextOfKin = request.getParameter("nextOfKin");
		int doctorId = Integer.valueOf(request.getParameter("doctorId"));
		int deptId = Integer.valueOf(request.getParameter("deptId"));
		LocalDate admissionDate = LocalDate.parse(request.getParameter("admissionDate"));
		LocalDate dischargeDate = LocalDate.parse(request.getParameter("dischargeDate"));
		int bedId = Integer.valueOf(request.getParameter("bedId"));
		LocalDate appointment = LocalDate.parse(request.getParameter("appointment"));
		boolean alive = Boolean.parseBoolean(request.getParameter("isAlive"));
		boolean inpatient = Boolean.parseBoolean(request.getParameter("isInpatient"));
		String type = request.getParameter("patientType");
		PatientType patientType = PatientType.valueOf(type);

		String notes = request.getParameter("notes");
		Note patientNote = new Note();
		patientNote.setContent(notes);
		patientNote.setNoteDate(LocalDate.now());
		Set<Note> patientNotes = new HashSet<Note>();
		patientNotes.add(patientNote);
		

		String presc = request.getParameter("prescription");
		Prescription prescription = new Prescription();
		prescription.setContent(presc);
		prescription.setPrescriptionDate(LocalDate.now());
		Set<Prescription> patientPrescriptions = new HashSet<Prescription>();

		patientPrescriptions.add(prescription);
		patientDAO.deleteNoteById(patientId);
		patientDAO.deletePrescriptionById(patientId);

		Patient p = new Patient(patientId, forename, surname, dob, gender, address, phone, nextOfKin, doctorId, deptId,
				admissionDate, dischargeDate, bedId, appointment, alive, patientPrescriptions, patientNotes,
				patientType, inpatient);
		System.out.println(p);
		patientDAO.updatePatient(p);
		response.sendRedirect("PatientServlet?action=viewAllPatients");

	}

	protected void showUpdatePatientForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int patientId = Integer.valueOf(request.getParameter("patientId"));
		Patient p = patientDAO.getPatientById(patientId);
		List<Note> patientNotes = patientDAO.getNotesById(patientId);
		List<Prescription> prescriptions = patientDAO.getPrescriptionsById(patientId);
		System.out.println("patientNotes :" + patientNotes);
		request.setAttribute("patientNotes", patientNotes);
		request.setAttribute("prescriptions", prescriptions);

		request.setAttribute("patient", p);
		System.out.println("patient:::::::::::::::::::::::::::::::::" + p);

		request.getRequestDispatcher("WEB-INF/view/updatePatient.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void viewAllPatients(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		
		List<String> formattedDobList = new ArrayList<>();
		List<String> formattedAdmissionList = new ArrayList<>();
		List<String> formattedDischargeList = new ArrayList<>();
		List<String> formattedAppointmentList = new ArrayList<>();
		
		List<Patient> allPatients = patientDAO.getAllPatients();
		System.out.println("This is all patients from the PatientServlet method " + allPatients);
		for (Patient patient : allPatients) {
			formattedDobList.add(patient.getDob().format(formatter));
			formattedAdmissionList.add(patient.getAdmissionDate().format(formatter));
			formattedDischargeList.add( patient.getDischargeDate().format(formatter));
			formattedAppointmentList.add(patient.getAppointment().format(formatter));
			//System.out.println(formattedDob);
		}
		
		request.setAttribute("formattedDobList", formattedDobList);
		request.setAttribute("formattedAdmissionList", formattedAdmissionList);
		request.setAttribute("formattedDischargeList", formattedDischargeList);
		request.setAttribute("formattedAppointmentList", formattedAppointmentList);
		request.setAttribute("allPatients", allPatients);
		request.getRequestDispatcher("WEB-INF/view/viewAllPatients.jsp").forward(request, response);

	}

	protected void addPatient(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String forename = request.getParameter("forename");
		String surname = request.getParameter("surname");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		String address = request.getParameter("address");

		String phone = request.getParameter("phoneNumber");
		String nextOfKin = request.getParameter("nextOfKin");
		int doctorId = Integer.valueOf(request.getParameter("doctorId"));
		int deptId = Integer.valueOf(request.getParameter("deptId"));
		LocalDate admissionDate = LocalDate.parse(request.getParameter("admissionDate"));
		LocalDate dischargeDate = LocalDate.parse(request.getParameter("dischargeDate"));
		int bedId = Integer.valueOf(request.getParameter("bedId"));
		LocalDate appointment = LocalDate.parse(request.getParameter("appointment"));
		boolean alive = Boolean.parseBoolean(request.getParameter("isAlive"));
		System.out.println("THIS IS A BOOLEAN " + alive);
		boolean inpatient = Boolean.parseBoolean(request.getParameter("isInpatient"));
		String type = request.getParameter("patientType");
		PatientType patientType = PatientType.valueOf(type);

		String notes = request.getParameter("notes");
		Note patientNote = new Note();
		patientNote.setContent(notes);
		patientNote.setNoteDate(LocalDate.now());
		Set<Note> patientNotes = new HashSet<Note>();
		patientNotes.add(patientNote);

		String presc = request.getParameter("prescription");
		Prescription prescription = new Prescription();
		prescription.setContent(presc);
		prescription.setPrescriptionDate(LocalDate.now());
		Set<Prescription> patientPrescriptions = new HashSet<Prescription>();

		patientPrescriptions.add(prescription);

		Patient p = new Patient(0, forename, surname, dob, gender, address, phone, nextOfKin, doctorId, deptId,
				admissionDate, dischargeDate, bedId, appointment, alive, patientPrescriptions, patientNotes,
				patientType, inpatient);
		System.out.println(p);
		patientDAO.addPatient(p);
		response.sendRedirect("PatientServlet?action=viewAllPatients");

		//
		// Set<Note> patientNotesP1 = new HashSet<>();
		// patientNotesP1.add(new Note(0, LocalDate.of(2015, 8, 12), "This is a
		// note for the patient"));
		// patientNotesP1.add(new Note(0, LocalDate.of(2015, 9, 12),"This
		// patient is very sick"));
		// patientNotesP1.add(new Note(0, LocalDate.of(2015, 10, 24),"This
		// patient is terribly ill"));
		//
		// Set<Note> patientNotesP2 = new HashSet<>();
		// patientNotesP2.add(new Note(0, LocalDate.of(2015, 8, 12), "This is a
		// note for the patientp2"));
		// patientNotesP2.add(new Note(0, LocalDate.of(2015, 9, 12),"This
		// patient is very sickp2"));
		// patientNotesP2.add(new Note(0, LocalDate.of(2015, 10, 24),"This
		// patient is terribly illp2"));
		//
		// Set<Prescription> setOfPres = new HashSet<>();
		// setOfPres.add(new Prescription(0, LocalDate.of(2015, 8, 12),
		// "antibiotics"));
		// setOfPres.add(new Prescription(0, LocalDate.of(2015, 9, 12), "pain
		// killers"));
		// setOfPres.add(new Prescription(0, LocalDate.of(2015, 4, 12),
		// "anti-histamine"));
		//
		// Patient p1 = new Patient(0, "emily", "flethcher", LocalDate.of(1945,
		// 2, 12), true, "street", "0876543", "Norman", 1, 2,
		// LocalDate.of(2016, 5, 16), LocalDate.of(2016, 6, 16), 3,
		// LocalDate.of(2016, 7, 4), true, setOfPres, patientNotesP1,
		// PatientType.PUBLIC, false);
		//
		// Patient p2 = new Patient(0, "ian", "jelly", LocalDate.of(1955, 2,
		// 12), true, "town town", "098765", "Joe", 1, 2, LocalDate.of(2016, 5,
		// 12), LocalDate.of(1945, 5, 23), 3, LocalDate.of(1945, 2, 12), true,
		// setOfPres,
		// patientNotesP2, PatientType.SEMI_PRIVATE, true);
		//
		// /* Patient p3 = new Patient(0, "gordon", "henry", LocalDate.of(1965,
		// 2, 12), true, "road", "0123456", "Simon", 1, 2,
		// LocalDate.of(2016, 6, 12), LocalDate.of(2016, 7, 12), 3,
		// LocalDate.of(2016, 6, 14), true, setOfPres,
		// patientNotes, PatientType.PRIVATE, true);*/
		//
		// System.out.println("This is patient 1 " + p1);
		//
		//
		//
		// patientDAO.addPatient(p1);
		// patientDAO.addPatient(p2);
		// patientDAO.addPatient(p3);
		//

		// response.sendRedirect("index.jsp");
	}

	protected void showAddPatientForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
