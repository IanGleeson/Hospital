<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>





	<c:choose>
		<c:when test="${allPatients.isEmpty()}">
			<h2>There are no patients</h2>
		</c:when>
		<c:otherwise>

			<table>
				<tr>
					<th>id</th>
					<th>First name</th>
					<th>Surname</th>
					<th>Date of birth</th>
					<th>Address</th>
					<th>Phone number</th>
					<th>Bed id</th>
					<th>Doctor id</th>
					<th>Department id</th>
					<th>Admission date</th>
					<th>Discharge date</th>
					<th>Appointment date</th>
					<th>Gender</th>
					<th>In-patient</th>
					<th>Next of kin</th>
					<th>Patient type</th>
					<th>Living</th>
					<th>Update</th>
					<th>View Notes</th>
					<th>View Prescriptions</th>
				</tr>
				<c:forEach var="patient" items="${allPatients}" varStatus="count">
					<tr>
						<td>${patient.id}</td>
						<td>${patient.forename}</td>
						<td>${patient.surname}</td>
						<td>${formattedDobList[count.index]}</td>
						<td>${patient.address}</td>
						<td>${patient.phone}</td>
						<td>${patient.bedId}</td>
						<td>${patient.doctorId}</td>
						<td>${patient.deptId}</td>
						<td>${formattedAdmissionList[count.index]}</td>
						<td>${formattedDischargeList[count.index]}</td>
						<td>${formattedAppointmentList[count.index]}</td>
						<td>${patient.gender}</td>
						<td>${patient.inpatient}</td>
						<td>${patient.nextOfKin}</td>
						<td>${patient.patientType}</td>
						<td>${patient.alive}</td>


						<td><a
							href="<c:url value="PatientServlet?action=showUpdatePatientForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Update</a>
						</td>

						<td><a
							href="<c:url value="PatientServlet?action=viewNotes">
								 <c:param name="patientId" value="${patient.id}"/>
								 <c:param name="patientName" value="${patient.forename} ${patient.surname}"/>
								 </c:url>">View
								Notes</a></td>
						<td><a
							href="<c:url value="PatientServlet?action=viewPrescriptions">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">View
								Prescriptions</a></td>
						<td><a
							href="<c:url value="BillServlet?action=showAddBillForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Add
								Bill</a></td>

						<td><a
							href="<c:url value="BillServlet?action=viewBills">
								 <c:param name="patientId" value="${patient.id}"/>
							
								 </c:url>">View Bills</a></td>
								 <td><a
							href="<c:url value="PatientServlet?action=showAddNoteForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 <c:param name="patientName" value="${patient.forename} ${patient.surname}"/>
								 </c:url>">Add Note</a></td>
								 
								 <td><a
							href="<c:url value="PatientServlet?action=showAddPrescriptionForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Add Prescription</a></td>


					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>

	<a
		href="<c:url value="PatientServlet?action=showAddPatientForm"></c:url>">Add
		patient</a>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>