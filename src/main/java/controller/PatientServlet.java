package controller;

import java.io.IOException;
import java.math.BigDecimal;
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

import model.Bill;
import model.Department;
import model.Doctor;
import model.Gender;
import model.Note;
import model.Patient;
import model.PatientType;
import model.Prescription;

@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDAO patientDAO = new PatientDAO();
	private DepartmentDAO departmentDAO = new DepartmentDAO();
	private DoctorDAO doctorDAO = new DoctorDAO();
	
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
			showAddPatientForm(request, response);
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
		case "showAddNoteForm":
			showAddNoteForm(request, response);
			break;
		case "addNote":
			addNote(request, response);
			break;
		case "showAddPrescriptionForm":
			showAddPrescriptionForm(request, response);
			break;
		case "addPrescription":
			addPrescription(request, response);
			break;
		
		case "viewPrescriptions":
			viewPrescriptions(request, response);
			break;
		
		default:
			viewAllPatients(request, response);
			break;
		}

		
	}

	protected void viewNotes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		List<Note> patientNotes = patientDAO.getNotesById(patientId);
		Patient p = patientDAO.getPatientById(patientId);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
     	List<String> formattedNoteDateList = new ArrayList<>();
		
		for (Note note: patientNotes) {
			formattedNoteDateList.add(note.getNoteDate().format(formatter));
		}
		
		

		
		
		//request.setAttribute("patientId", patientId);
		request.setAttribute("patientNotes", patientNotes);
		request.setAttribute("formattedNoteDateList", formattedNoteDateList);
		request.setAttribute("patient", p);


		request.getRequestDispatcher("WEB-INF/view/Patient/viewNotes.jsp").forward(request, response);

	}
	
	protected void showAddPatientForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Department> allDepartments = departmentDAO.viewAllDepartment();
		List<Doctor> allDoctors = doctorDAO.getAllDoctors();	
		request.setAttribute("allDoctors", allDoctors);
				System.out.println("==============================" + allDoctors);
		request.setAttribute("allDepartments", allDepartments);
				System.out.println("--------------------------------" + allDepartments);
		request.getRequestDispatcher("WEB-INF/view/Patient/insertPatient.jsp").forward(request, response);
	}
	protected void viewPrescriptions(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		List<Prescription> patientPrescriptions = patientDAO.getPrescriptionsById(patientId);
		Patient p = patientDAO.getPatientById(patientId);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
     	List<String> formattedPrescriptionDateList = new ArrayList<>();
		
		for (Prescription prescription: patientPrescriptions) {
			formattedPrescriptionDateList.add(prescription.getPrescriptionDate().format(formatter));
		}
		
		

		
		
		//request.setAttribute("patientId", patientId);
		request.setAttribute("patientPrescriptions", patientPrescriptions);
		request.setAttribute("formattedPrescriptionDateList", formattedPrescriptionDateList);
		request.setAttribute("patient", p);


		request.getRequestDispatcher("WEB-INF/view/Patient/viewPrescriptions.jsp").forward(request, response);

	}
	
	protected void updatePatient(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int patientId = Integer.valueOf(request.getParameter("patientId"));

		System.out.println("This is the patient ID " + patientId);

		String forename = request.getParameter("forename");
		String surname = request.getParameter("surname");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String gen = request.getParameter("gender").toUpperCase();
		Gender gender = Gender.valueOf(gen);
		String address = request.getParameter("address");

		String phone = request.getParameter("phoneNumber");
		String nextOfKin = request.getParameter("nextOfKin");
		int doctorId = Integer.valueOf(request.getParameter("doctor"));
		int deptId = Integer.valueOf(request.getParameter("department"));
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
	

		Patient p = new Patient(patientId, forename, surname, dob, gender, address, phone, nextOfKin, doctorId, deptId,
				admissionDate, dischargeDate, bedId, appointment, alive, patientPrescriptions,
				patientType, inpatient, patientNotes);
		
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
		List<Department> allDepartments = departmentDAO.viewAllDepartment();	
		List<Doctor> allDoctors = doctorDAO.getAllDoctors();	
		request.setAttribute("allDepartments", allDepartments);
		request.setAttribute("allDoctors", allDoctors);
		System.out.println("==============================" + allDoctors);
		request.setAttribute("patient", p);
		

		request.getRequestDispatcher("WEB-INF/view/Patient/updatePatient.jsp").forward(request, response);

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
			formattedDischargeList.add(patient.getDischargeDate().format(formatter));
			formattedAppointmentList.add(patient.getAppointment().format(formatter));
		
		}

		request.setAttribute("formattedDobList", formattedDobList);
		request.setAttribute("formattedAdmissionList", formattedAdmissionList);
		request.setAttribute("formattedDischargeList", formattedDischargeList);
		request.setAttribute("formattedAppointmentList", formattedAppointmentList);
		request.setAttribute("allPatients", allPatients);
		
		request.getRequestDispatcher("WEB-INF/view/Patient/viewAllPatients.jsp").forward(request, response);

	}

	protected void addPatient(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String forename = request.getParameter("forename");
		String surname = request.getParameter("surname");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String gen = request.getParameter("gender").toUpperCase();

		Gender gender = Gender.valueOf(gen);
		String address = request.getParameter("address");

		String phone = request.getParameter("phoneNumber");
		String nextOfKin = request.getParameter("nextOfKin");
		int doctorId = Integer.valueOf(request.getParameter("doctor"));
		int deptId = Integer.valueOf(request.getParameter("department"));
		LocalDate admissionDate = LocalDate.parse(request.getParameter("admissionDate"));
		LocalDate dischargeDate = LocalDate.parse(request.getParameter("dischargeDate"));
		int bedId = Integer.valueOf(request.getParameter("bedId"));
		LocalDate appointment = LocalDate.parse(request.getParameter("appointment"));
		boolean alive = Boolean.parseBoolean(request.getParameter("isAlive"));
		System.out.println("THIS IS A BOOLEAN " + alive);
		boolean inpatient = Boolean.parseBoolean(request.getParameter("isInpatient"));
		String type = request.getParameter("patientType");
		PatientType patientType = PatientType.valueOf(type);



		Patient p = new Patient(0, forename, surname, dob, gender, address, phone, nextOfKin, doctorId, deptId, admissionDate, dischargeDate, bedId, appointment, alive,patientType, inpatient);
		
	patientDAO.addPatient(p);

	patientDAO.updatePatient(p);
		
		response.sendRedirect("PatientServlet?action=viewAllPatients");

	}

	protected void showAddNoteForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		Patient p = patientDAO.getPatientById(patientId);
			
		
		request.setAttribute("patient", p);
		request.setAttribute("patientId", patientId);
		request.getRequestDispatcher("WEB-INF/view/Patient/addNote.jsp").forward(request, response);
	}
	protected void addNote(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LocalDate noteDate = LocalDate.now();
		int patientId = Integer.parseInt(request.getParameter("patientId"));
		Patient p =patientDAO.getPatientById(patientId);
		String content = request.getParameter("content");
		Note note = new Note(0, noteDate, content);
		Set<Note> patientNotes = p.getPatientNotes();
		patientNotes.add(note);
		patientDAO.updatePatient(p);
		response.sendRedirect("PatientServlet?action=viewAllPatients");
	
	}
	
	
	protected void showAddPrescriptionForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		Patient p = patientDAO.getPatientById(patientId);
			
		
		request.setAttribute("patient", p);
		request.setAttribute("patientId", patientId);
		request.getRequestDispatcher("WEB-INF/view/Patient/addPrescription.jsp").forward(request, response);
	}
	protected void addPrescription(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LocalDate prescriptionDate = LocalDate.now();
		int patientId = Integer.parseInt(request.getParameter("patientId"));
		Patient p = patientDAO.getPatientById(patientId);
		String content = request.getParameter("content");
		Prescription prescription = new Prescription(0, prescriptionDate, content);
		Set<Prescription> patientPrescriptions = p.getPrescriptions();
		patientPrescriptions.add(prescription);
		patientDAO.updatePatient(p);
		response.sendRedirect("PatientServlet?action=viewAllPatients");
	
	}
}
