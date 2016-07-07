var dob;
var admissionDate;
var dischargeDate;
var appointment;

function calculateTotal() {

	var totalCost = 0;

	var roomCost = parseInt(document.getElementById("roomType").value);
	console.log("roomCost: " + roomCost);
	console.log(typeof roomCost);

	var numNights = parseInt(document.getElementById("numNights").value);

	if (Number.isNaN(numNights)) {

		numNights = 0;
	}
	totalCost = numNights * roomCost;
	console.log("numNights: " + numNights);
	console.log(typeof numNights);

	var doctorFee = parseInt(document.getElementById("doctorFee").value);
	console.log("doctorFee: " + doctorFee);
	console.log(typeof doctorFee);

	if (Number.isNaN(doctorFee)) {

		doctorFee = 0;
	}
	totalCost += doctorFee;

	var miscFee = parseInt(document.getElementById("miscFee").value);
	console.log("miscFee: " + miscFee);
	if (Number.isNaN(miscFee)) {

		miscFee = 0;
	}
	totalCost += miscFee;
	var total = (roomCost * numNights) + doctorFee + miscFee;
	console.log("total: " + total);

	document.getElementById("totalCost").innerHTML = "<h3>Total cost: &euro;"
			+ total + "</h3>";

}

function dobChecker() {
	var bday = document.getElementById("dob").value;
	bday = Date.parse(bday);
	console.log("This is the birthday " + bday);
	todaysDate = Date.now();


	if (todaysDate < bday) {
	
		document.getElementById("messageBday").innerHTML = "&nbsp;&nbsp;Invalid Date Of Birth";
	} 
	
		else {

		document.getElementById("messageBday").innerHTML = "";
	}

}

function admissionDateChecker() {
	bday = document.getElementById("dob").value;
	bday = Date.parse(bday);
	console.log("bday: " + bday);

	admissionDate = document.getElementById("admissionDate").value;
	console.log("This is the admission date from the update form " + admissionDate);
	admissionDate = Date.parse(admissionDate);
	console.log("Admission date " + admissionDate);

	var todaysDate = Date.now();

	if ((admissionDate < bday) || (admissionDate > todaysDate)) {

		document.getElementById("messageAdmission").innerHTML = "&nbsp;&nbsp;Invalid Admission Date";
		concole
	} else {

		document.getElementById("messageAdmission").innerHTML = "";
	}
}

function dischargeDateChecker() {
	admissionDate = document.getElementById("admissionDate").value;
	admissionDate = Date.parse(admissionDate);
	console.log("Admission date " + admissionDate);

	dischargeDate = document.getElementById("dischargeDate").value;
	dischargeDate = Date.parse(dischargeDate);
	console.log("Discharge date " + dischargeDate);
	todaysDate = Date.now();

	if (dischargeDate < admissionDate || dischargeDate > todaysDate) {

		document.getElementById("messageDischarge").innerHTML = "&nbsp;&nbsp;Invalid Discharge Date";
	} else {

		document.getElementById("messageDischarge").innerHTML = "";
	}

}
function appointmentDateChecker() {

	todaysDate = Date.now();
	appointmentDate = document.getElementById("appointment").value;
	appointmentDate = Date.parse(appointmentDate);

	if (appointmentDate < todaysDate) {
		document.getElementById("messageAppointment").innerHTML = "&nbsp;&nbsp;Invalid Appointment Date";

	} else {

		document.getElementById("messageAppointment").innerHTML = "";
	}
}
