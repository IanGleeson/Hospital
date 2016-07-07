<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>

	<h1>Insert patient</h1>

	<form action="PatientServlet?action=addPatient" method="post">
	
		<p>First name</p>
		<p>
			<input type="text" name="forename" placeholder="first name">
		</p>
		<p>Surname</p>
		<p>
			<input type="text" name="surname" placeholder="surname">
		</p>
		<p>Phone number</p>
		<p>
			<input type="text" name="phoneNumber" placeholder="phone number">
		</p>
		<p>Address</p>
		<p>
			<textarea name="address" rows="5" cols="50" placeholder="address"></textarea>
		</p>

		<p>Date of birth</p>
		<p>
			<input type="date" name="dob" placeholder="date of birth">
		</p>
		<p>Admission date</p>
		<p>
			<input type="date" name="admissionDate" placeholder="admission date">
		</p>
		<p>Discharge date</p>
		<p>
			<input type="date" name="dischargeDate" placeholder="Discharge date">
		</p>
		<p>Appointment</p>
		<p>
			<input type="date" name="appointment" placeholder="appointment">
		</p>
		<p>Bed id</p>
		<p>
			<input type="text" name="bedId" placeholder="bedId">
		</p>
		<p>Doctor id</p>
		<p>
			<input type="text" name="doctorId" placeholder="Doctor Id">
		</p>
		<p>Department Id</p>
		<p>
			<input type="text" name="deptId" placeholder="Department Id">
		</p>

		<p>
			<input type="radio" name="isInpatient" value="true"> In
			patient<br> <input type="radio" name="isInpatient"
				value="false"> Out patient<br>
		</p>
		<p>
			<input type="radio" name="isAlive" value="true">Alive<br>
			<input type="radio" name="isAlive" value="false">Dead<br>
		</p>
		<p>
			<input type="radio" name="gender" value="male"> Male<br>
			<input type="radio" name="gender" value="female"> Female<br>
		</p>

		<p>
			<input type="textarea" name="nextOfKin"
				placeholder="Next of kin details">
		</p>

		<p>
			<input type="radio" name="patientType" value="PRIVATE">
			Private<br> <input type="radio" name="patientType"
				value="PUBLIC"> Public<br> <input type="radio"
				name="patientType" value="SEMI_PRIVATE"> Semi-private<br>
		</p>
		
		
		<!--<p>
			<input type="button" name = "addNotes" value="Add Patient Notes">
			<input type="button" name = "addPres" value="Add Patient Prescriptions">
		</p>-->
		
		<p>
		
		<textarea name="notes" rows="5" cols="50" placeholder="patient notes"></textarea>
		
		</p>
		<p>
		
		<textarea name="prescription" rows="5" cols="50" placeholder="patient prescription"></textarea>
		
		</p>
		<p>
			<input type="submit" value="Add patient">
		</p>

		



	</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>