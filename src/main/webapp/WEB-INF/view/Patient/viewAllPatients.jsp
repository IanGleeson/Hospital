   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
		<header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" style="cursor:default">
            <h6>Here you will be able to view and manage all patients</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<div class="col-xs-12 btn btn-primary btn-sm">

	<c:choose>
		<c:when test="${allPatients.isEmpty()}">
			<h2>There are no patients</h2>
		</c:when>
		<c:otherwise>
		<div class="table-responsive">
			<table class="table">
				<thead class=""><tr>
					<th><span class="badge">ID:</span></th>
					<th><span class="badge">First name</span></th>
					<th><span class="badge">Surname</span></th>
					<th><span class="badge">Date of birth</span></th>
					<th><span class="badge">Address</span></th>
					<th><span class="badge">Phone number</span></th>
					<th><span class="badge">Bed id</span></th>
					<th><span class="badge">Doctor id</span></th>
					<th><span class="badge">Department id</span></th>
					<th><span class="badge">Admission date</span></th>
					<th><span class="badge">Discharge date</span></th>
					<th><span class="badge">Appointment date</span></th>
					<th><span class="badge">Gender</span></th>
					<th><span class="badge">In-patient</span></th>
					<th><span class="badge">Next of kin</span></th>
					<th><span class="badge">Patient type</span></th>
					<th><span class="badge">Living</span></th>
					<th><span class="badge">Update</span></th>
					<th><span class="badge">View Notes</span></th>
					<th><span class="badge">View Prescriptions</span></th>
					<th><span class="badge">Add Bill</span></th>
					<th><span class="badge">View Bill</span></th>
					<th><span class="badge">Add Note</span></th>
					<th><span class="badge">Add Prescriptions</span></th>
				</tr>
				</thead>
				<tbody>
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

						<td><a class="btn btn-xs btn-primary btn-group"
							href="<c:url value="PatientServlet?action=showUpdatePatientForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Update Details</a>
						</td>

						<td><a class="btn-xs btn-primary btn-group"
							href="<c:url value="PatientServlet?action=viewNotes">
								 <c:param name="patientId" value="${patient.id}"/>
								 <c:param name="patientName" value="${patient.forename} ${patient.surname}"/>
								 </c:url>">
								View Notes</a></td>
						<td><a class="btn-xs btn-primary btn-group"
							href="<c:url value="PatientServlet?action=viewPrescriptions">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">
								View Prescriptions</a></td>
						<td><a class="btn-xs btn-primary btn-group"
							href="<c:url value="BillServlet?action=showAddBillForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Add
								Bills</a></td>

						<td><a class="btn btn-xs btn-primary btn-group"
							href="<c:url value="BillServlet?action=viewBills">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">View Bills</a>
						</td>
								 
								 <td><a class="btn-xs btn-primary btn-group"
							href="<c:url value="PatientServlet?action=showAddNoteForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 <c:param name="patientName" value="${patient.forename} ${patient.surname}"/>
								 </c:url>">Add Notes</a></td>
								 
								 <td><a class="btn-xs btn-primary btn-group" 	href="<c:url value="PatientServlet?action=showAddPrescriptionForm">
								 <c:param name="patientId" value="${patient.id}"/>
								 </c:url>">Add Prescriptions</a></td>


					</tr>
				</c:forEach>
				</tbody>
			</table>
			</div>
		</c:otherwise>
	</c:choose>

	<a class="btn btn-primary pull-right"
		href="<c:url value="PatientServlet?action=showAddPatientForm"></c:url>">Add
		patient</a>
</div>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>