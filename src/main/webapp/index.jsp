<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Main</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
	<header>
		<h2>${hospitalName} Hospital Management</h2>
	</header>
	<div class ="sidebar">
		<a href="DepartmentServlet?action=viewAllDepartment">Manage Departments</a>
		<a href="PatientServlet?action=viewAllPatients">Manage Patients</a>
		<a href="DoctorServlet?action=viewAllDoctors">Manage Personnel</a>
	</div>
	
	</body>
</html>
