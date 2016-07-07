package controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Bill;
import model.Patient;
@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Bill> allBills;
	private BillDAO billDAO = new BillDAO();
	private PatientDAO patientDAO= new PatientDAO();
   
    public BillServlet() {
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String action = request.getParameter("action");
	if (action == null){
		
		action = "showAddBillForm";
		
	}
	
	
	switch (action) {
	case "showAddBillForm":
		showAddBillForm(request, response);
		break;
		
	
	case "viewBills":
	     viewBills(request, response);
	     break;
	case "addBill":
		addBill(request, response);
		break; 

	default:
		break;
	}
	}
	
	protected void addBill(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		Patient p=patientDAO.getPatientById(patientId);
		Set<Bill> patientBills = p.getPatientBills();
		LocalDate billDate = LocalDate.now();
		String billNote = request.getParameter("billNotes");
		BigDecimal doctorFee = new BigDecimal(request.getParameter("doctorFee"));
		BigDecimal miscFee = new BigDecimal(request.getParameter("miscFee"));
		int nightsStayed = Integer.valueOf(request.getParameter("nightsStayed"));
		BigDecimal roomCharge = new BigDecimal(request.getParameter("roomType"));
	
		Bill b = new Bill(0, billDate, roomCharge, nightsStayed, doctorFee, billNote, miscFee);
		
		System.out.println(b);
		patientBills.add(b);
		billDAO.addBill(b);
		patientDAO.updatePatient(p);
		response.sendRedirect("PatientServlet?action=viewAllPatients");

	}
	
	protected void showAddBillForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		Patient p = patientDAO.getPatientById(patientId);
		LocalDate admissionDate = p.getAdmissionDate();
		LocalDate dischargeDate = p.getDischargeDate();
		long nightsStayed = ChronoUnit.DAYS.between(admissionDate, dischargeDate);
		System.out.println("This is the number of nights stayed " + nightsStayed);
		
		System.out.println("This is patient p from showAddBillForm method" + p);
		
		
		request.setAttribute("patientId", patientId);
		request.setAttribute("patient", p);
		request.setAttribute("nightsStayed", nightsStayed);
		request.getRequestDispatcher("WEB-INF/view/Patient/addBill.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
	protected void viewBills(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int patientId = Integer.valueOf(request.getParameter("patientId"));
		List<Bill> patientBills = billDAO.getBillsById(patientId);
		System.out.println("THESE ARE THE BILLS " + patientBills + "£$£$£$£$£$£$£$£$");
		Patient p = patientDAO.getPatientById(patientId);
		LocalDate admissionDate = p.getAdmissionDate();
		LocalDate dischargeDate = p.getDischargeDate();
		long nightsStayed = ChronoUnit.DAYS.between(admissionDate, dischargeDate);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
     	List<String> formattedBillDateList = new ArrayList<>();
		
		for (Bill bill: patientBills) {
			formattedBillDateList.add(bill.getBillDate().format(formatter));
		}
		
			
		request.setAttribute("patientId", patientId);
		request.setAttribute("patientBills", patientBills);
		request.setAttribute("formattedBillDateList", formattedBillDateList);
		request.setAttribute("patient", p);
		request.setAttribute("nightsStayed", nightsStayed);


		request.getRequestDispatcher("WEB-INF/view/Patient/viewBills.jsp").forward(request, response);
	

	}
	



	protected void updateBill(int billId){
		
		
	}
	protected List<Bill> getAllBills(){
		
		return allBills;
	}

}
