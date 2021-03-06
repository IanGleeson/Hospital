<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="css/font-awesome.min.css" rel="stylesheet">
 <link href="css/bootstrap-social.css" rel="stylesheet">
 <link href="css/mystyles.css" rel="stylesheet" >
 <title>Hospital Management Website</title>
 
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   <div class="container">
       <div class="navbar-header">
           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="index.html">Hospital Management Application</a>
       </div>

       <div id="navbar" class="navbar-collapse collapse">
           <ul class="nav navbar-nav navbar-right">
            <li><a href="index.html"><span class="glyphicon glyphicon-home"
                 aria-hidden="true"></span>Home</a></li>
            <li ><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
 
               <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"
                 aria-hidden="true"></span>Contact Us</a></li>

               <li>
                <a href="login.html"><span class="glyphicon glyphicon-user"></span>
                 Login</a>
                
             </li>
           </ul>
       </div>
       </div>
   </nav>
<header class="jumbotron">
   <div class="container">
    <div class="row row-header">
        <div class="col-xs-12 col-sm-8">
            <h1>Hospital Management Application</h1>
            <p style="padding:40px;"></p>
            
        </div>
      
    </div>
</div>
</header>
<div class="container">

<div class="row row-content">
        <div class="btn btn-primary pull-right">
            <a type="button" class="btn btn-success" href="#">Hello Admin</a>
        <a type="button" class="btn btn-primary" href="#">Log-Out</a>
        </div>
 <div class="row row-content">
<div class="col-xs-12 col-sm-9 offset-1"><h3>Add Patient</h3></div>
<div class="col-xs-12 col-sm-9 col-sm-offset-1">
 <form action="PatientServlet?action=addPatient" method="post" required>

	<p>First name</p>
	<p>
		<input type="text" name="forename" placeholder="first name" required
			pattern="[a-zA-Z]{2,}"
			oninvalid="setCustomValidity('Minimum length is 2 letters')"
			oninput="setCustomValidity('')">
	</p>

	<p>Surname</p>
	<p>
		<input type="text" name="surname" placeholder="surname" required
			pattern="[a-zA-Z]{2,}"
			oninvalid="setCustomValidity('Minimum length is 2 letters')"
			oninput="setCustomValidity('')">
	</p>

	<p>Phone number</p>
	<p>
		<input type="text" name="phoneNumber" placeholder="phone number"
			required pattern="0[0-9]{6,14}"
			oninvalid="setCustomValidity('Must have between 6 and 15 numbers')"
			oninput="setCustomValidity('')">
	</p>

	<p>Address</p>
	<p>
		<textarea name="address" rows="5" cols="50" placeholder="address"
			required maxlength="100" minlength="10"></textarea>
	</p>

	<p>Date of birth</p>
	<p>
		<input type="date" name="dob" placeholder="date of birth" id="dob"
			required onchange="dobChecker();"> <span style="color: red;"
			id="messageBday"></span>
	</p>


	<p>Admission date</p>
	<p>
		<input type="date" name="admissionDate" id="admissionDate"
			placeholder="admission date" required
			onchange="admissionDateChecker();"> <span style="color: red;"
			id="messageAdmission"></span>
	</p>

	<p>Discharge date</p>
	<p>
		<input type="date" name="dischargeDate" id="dischargeDate"
			placeholder="Discharge date" required
			onchange="dischargeDateChecker();"> <span style="color: red;"
			id="messageDischarge"></span>
	</p>
	<p>Appointment</p>
	<p>
		<input type="date" name="appointment" id="appointment"
			placeholder="appointment" required
			onchange="appointmentDateChecker();"> <span
			style="color: red;" id="messageAppointment"></span>
	</p>
	<p>Bed id</p>
	<p>
		<input type="number" name="bedId" min="0" max="200"
			placeholder="Bed Id" required>
	</p>

	<p>Doctor</p>
	<p>
			<select name="doctor">
				<c:forEach var="doctor" items="${allDoctors}" varStatus="count">
					<option value="${doctor.id}">${doctor.firstName} ${doctor.lastName}</option>
				</c:forEach>
			</select> <br>
		</p>

	<p>Department</p>

	

		<p>
			<select name="department">
				<c:forEach var="department" items="${allDepartments}" varStatus="count">
					<option value="${department.id}">${department.name}</option>
				</c:forEach>
			</select> <br>
		</p>


	
	<p>
		<input type="radio" name="isInpatient" value="true" required>
		In patient<br> <input type="radio" name="isInpatient"
			value="false"> Out patient<br>
	</p>
	<p>
		<input type="radio" name="isAlive" value="true" required>Alive<br>
		<input type="radio" name="isAlive" value="false">Dead<br>
	</p>
	<p>
		<input type="radio" name="gender" value="male" required> Male<br>
		<input type="radio" name="gender" value="female"> Female<br>
	</p>

	<p>
		<input type="textarea" name="nextOfKin"
			placeholder="Next of kin details" required>
	</p>

	<p>
		<input type="radio" name="patientType" value="PRIVATE" required>
		Private<br> <input type="radio" name="patientType" value="PUBLIC">
		Public<br> <input type="radio" name="patientType"
			value="SEMI_PRIVATE"> Semi-private<br>
	</p>


	<!--<p>
			<input type="button" name = "addNotes" value="Add Patient Notes">
			<input type="button" name = "addPres" value="Add Patient Prescriptions">
		</p>-->

	<p>

		<textarea name="notes" rows="5" cols="50" placeholder="patient notes"></textarea>

	</p>
	<p>

		<textarea name="prescription" rows="5" cols="50"
			placeholder="patient prescription"></textarea>

	</p>
	<p>
		<input type="submit" value="Add patient">
	</p>





</form>


     </div>
    </div>
    
</div>
    
</div>

<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>

