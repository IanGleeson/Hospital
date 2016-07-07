<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>



<script src="js/script.js"></script>
	<h1>Update patient</h1>

	<form action="PatientServlet?action=updatePatient" method="post">
		<input type="hidden" name="patientId" value="${patient.id }">
		<p>First name</p>
		<p>
			<input type="text" name="forename" placeholder="first name"
				value=${patient.forename } required pattern="[a-zA-Z]{2,}"
				oninvalid="setCustomValidity('Minimum length is 2 letters')"
				oninput="setCustomValidity('')">
		</p>
		<p>Surname</p>
		<p>
			<input type="text" name="surname" placeholder="surname"
				value=${patient.surname } required pattern="[a-zA-Z]{2,}"
				oninvalid="setCustomValidity('Minimum length is 2 letters')"
				oninput="setCustomValidity('')">
		</p>
		<p>Phone number</p>
		<p>
			<input type="text" name="phoneNumber" value="${patient.phone}"
				required pattern="[0-9]{6,15}"
				oninvalid="setCustomValidity('Must have between 6 and 15 numbers')"
				oninput="setCustomValidity('')">
		</p>
		<p>Address</p>
		<p>
			<textarea name="address" rows="5" cols="50" required maxlength="100"
				minlength="10">${patient.address}</textarea>
		</p>

		<p>Date of birth</p>
		<p>
			<input type="date" name="dob" value="${patient.dob}" id="dob"
				required onchange="dobChecker();"> <span style="color: red;"
				id="messageBday"></span>
		</p>

		<p>Admission date</p>
		<p>
			<input type="date" name="admissionDate"
				value="${patient.admissionDate}" id="admissionDate" required
				onchange="admissionDateChecker();"> <span
				style="color: red;" id="messageAdmission"></span>
		</p>

		<p>Discharge date</p>
		<p>
			<input type="date" name="dischargeDate"
				value="${patient.dischargeDate}" id="dischargeDate" required
				onchange="dischargeDateChecker();"> <span
				style="color: red;" id="messageDischarge"></span>
		</p>
		<p>Appointment</p>
		<p>
			<input type="date" name="appointment" value="${patient.appointment}"
				id="appointment" required onchange="appointmentDateChecker();">
			<span style="color: red;" id="messageAppointment"></span>
		</p>
		<p>Bed id</p>
		<p>
			<input type="number" name="bedId" value="${patient.bedId}" min="0"
				max="200" required>
		</p>
		<p>Doctor id</p>
		<p>
			<input type="number" name="doctorId" value="${patient.doctorId}"
				min="0" max="200" required>
		</p>
		<p>Department Id</p>
		<p>
			<input type="number" name="deptId" min="0" max="200"
				value="${patient.deptId}" required>
		</p>

		<p>
			<c:choose>
				<c:when test="${patient.inpatient == true}">
					<input type="radio" name="isInpatient" value="true"
						checked="checked" required> In
			patient<br>
					<input type="radio" name="isInpatient" value="false"> Out patient<br>
				</c:when>

				<c:otherwise>
					<input type="radio" name="isInpatient" value="true" required> In
			patient<br>
					<input type="radio" name="isInpatient" value="false"
						checked="checked"> Out patient<br>
				</c:otherwise>
			</c:choose>


		</p>
		<p>
			<c:choose>
				<c:when test="${patient.alive == true}">
					<input type="radio" name="isAlive" value="true" checked="checked"
						required> Alive<br>
					<input type="radio" name="isAlive" value="false">Dead<br>
				</c:when>

				<c:otherwise>
					<input type="radio" name="isAlive" value="true" required>Alive<br>
					<input type="radio" name="isAlive" value="false" checked="checked"> Dead<br>
				</c:otherwise>
			</c:choose>


		</p>
		<c:choose>
			<c:when test="${patient.gender == MALE}">
				<input type="radio" name="gender" value=Male checked="checked"
					required>Male<br>
				<input type="radio" name="gender" value="Female">Female<br>
			</c:when>

			<c:otherwise>
				<input type="radio" name="gender" value="Male" required>Male<br>
				<input type="radio" name="gender" value="Female" checked="checked"> Female<br>
			</c:otherwise>
		</c:choose>


		<p>
			Next of kin: <input type="textarea" name="nextOfKin"
				value="${patient.nextOfKin}" placeholder="Next of kin details"
				required>
		</p>
		<p>

			<c:choose>

				<c:when test="${patient.patientType == 'PRIVATE'}">

					<input type="radio" name="patientType" value="PRIVATE"
						checked="checked" required>
			Private<br>
					<input type="radio" name="patientType" value="PUBLIC"> Public<br>
					<input type="radio" name="patientType" value="SEMI_PRIVATE"> Semi-private<br>
				</c:when>

				<c:when test="${patient.patientType == 'SEMI_PRIVATE'}">
					<input type="radio" name="patientType" value="PRIVATE" required>
			Private<br>
					<input type="radio" name="patientType" value="PUBLIC"> Public<br>
					<input type="radio" name="patientType" value="SEMI_PRIVATE"
						checked="checked"> Semi-private<br>
				</c:when>
				<c:otherwise>

					<input type="radio" name="patientType" value="PRIVATE" required>
			Private<br>
					<input type="radio" name="patientType" value="PUBLIC"
						checked="checked"> Public<br>
					<input type="radio" name="patientType" value="SEMI_PRIVATE"> Semi-private<br>
				</c:otherwise>
			</c:choose>
		</p>

		<!--<p>
			<input type="button" name = "addNotes" value="Add Patient Notes">
			<input type="button" name = "addPres" value="Add Patient Prescriptions">
		</p>-->



		<p>
			<input type="submit" value="Update patient">
		</p>





	</form>

	

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>