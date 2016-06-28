<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View all Doctors</title>
</head>
<body>
	<header>
	<h1>View all Doctors</h1>
	</header>
</body>


<c:if test="${empty listOfDoctors}"> There are no entries in the database!
</c:if>
<c:if test="${not empty listOfDoctors}">
	
		</c:if>
			<table>

		<thead>
			<tr>
				<th>id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Address</th>
				<th>Phone Number</th>
				<th>Qualifications</th>
				<th>Department Id</th>
			</tr>
		</thead>
		<tbody>
			<forEach var="doctor" items="${listOfDoctors}">
			<tr>
				<td>${doctor.id}</td>
				<td>${doctor.firstName}</td>
				<td>${doctor.lasttName}</td>
				<td>${doctor.gender}</td>
				<td>${doctor.address}</td>
				<td>${doctor.phoneNumber}</td>
				<td>${doctor.qualification}</td>
				<td>${doctor.deptId}</td>
			</forEach>

		</tbody>

	</table>
	<a href="<c:url value="DoctorServlet?action=showInsertForm"/>"> Add
		a Doctor</a>

	<a href="<c:url value="DoctorServlet?action=showUpdateForm"/>">
		Update a Doctor</a>
	</body>
</html>