<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update patient</title>
</head>
<body>
	<h1>Update patient</h1>

	<form action="PatientServlet?action=updatePatient" method="post">
	<input type="hidden" name="patientId" value ="${patient.id }">
		<p>First name</p>
		<p>
			<input type="text" name="forename" value="${patient.forename}">
		</p>
		<p>Surname</p>
		<p>
			<input type="text" name="surname" value="${patient.surname}">
		</p>
		<p>Phone number</p>
		<p>
			<input type="text" name="phoneNumber" value="${patient.phone}">
		</p>
		<p>Address</p>
		<p>
			<textarea name="address" rows="5" cols="50">${patient.address}</textarea>
		</p>

		<p>Date of birth</p>
		<p>
			<input type="date" name="dob" value="${patient.dob}">
		</p>
		<p>Admission date</p>
		<p>
			<input type="date" name="admissionDate"
				value="${patient.admissionDate}">
		</p>
		<p>Discharge date</p>
		<p>
			<input type="date" name="dischargeDate"
				value="${patient.dischargeDate}">
		</p>
		<p>Appointment</p>
		<p>
			<input type="date" name="appointment" value="${patient.appointment}">
		</p>
		<p>Bed id</p>
		<p>
			<input type="text" name="bedId" value="${patient.bedId}">
		</p>
		<p>Doctor id</p>
		<p>
			<input type="text" name="doctorId" value="${patient.doctorId}">
		</p>
		<p>Department Id</p>
		<p>
			<input type="text" name="deptId" value="${patient.deptId}">
		</p>

		<p>
			<c:choose>
				<c:when test="${patient.inpatient == true}">
					<input type="radio" name="isInpatient" value="true"
						checked="checked"> In
			patient<br>
					<input type="radio" name="isInpatient" value="false"> Out patient<br>
				</c:when>

				<c:otherwise>
					<input type="radio" name="isInpatient" value="true"> In
			patient<br>
					<input type="radio" name="isInpatient" value="false"
						checked="checked"> Out patient<br>
				</c:otherwise>
			</c:choose>


		</p>
		<p>
			<c:choose>
				<c:when test="${patient.alive == true}">
					<input type="radio" name="isAlive" value="true" checked="checked"> Alive<br>
					<input type="radio" name="isAlive" value="false">Dead<br>
				</c:when>

				<c:otherwise>
					<input type="radio" name="isAlive" value="true">Alive<br>
					<input type="radio" name="isAlive" value="false" checked="checked"> Dead<br>
				</c:otherwise>
			</c:choose>


		</p>
		<c:choose>
			<c:when test="${patient.gender == MALE}">
				<input type="radio" name="gender" value=Male checked="checked">Male<br>
				<input type="radio" name="gender" value="Female">Female<br>
			</c:when>

			<c:otherwise>
				<input type="radio" name="gender" value="Male">Male<br>
				<input type="radio" name="gender" value="Female" checked="checked"> Female<br>
			</c:otherwise>
		</c:choose>


		<p>Next of kin:
			<input type="textarea" name="nextOfKin" value="${patient.nextOfKin}"
				placeholder="Next of kin details">
		</p>
<p>

		<c:choose>
			
			<c:when test="${patient.patientType == 'PRIVATE'}">
			
       			<input type="radio" name="patientType" value="PRIVATE" checked="checked">
			Private<br> 
			<input type="radio" name="patientType"
				value="PUBLIC"> Public<br> 
				<input type="radio"
				name="patientType" value="SEMI_PRIVATE"> Semi-private<br>
    		</c:when>
    		
			<c:when test="${patient.patientType == 'SEMI_PRIVATE'}">
        		<input type="radio" name="patientType" value="PRIVATE">
			Private<br> 
			<input type="radio" name="patientType"
				value="PUBLIC"> Public<br> 
				<input type="radio"
				name="patientType" value="SEMI_PRIVATE" checked="checked"> Semi-private<br>
    		</c:when>
			<c:otherwise>
		
        		<input type="radio" name="patientType" value="PRIVATE">
			Private<br> 
			<input type="radio" name="patientType"
				value="PUBLIC" checked="checked"> Public<br> 
				<input type="radio"
				name="patientType" value="SEMI_PRIVATE"> Semi-private<br>
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


</body>
</html>