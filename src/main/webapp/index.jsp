<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<c:if test="${ loggedin == true}"><a href="<c:url value="User?action=logout"></c:url>">Log Out</a></c:if>
		</header>
		<div class ="sidebar">
			<a href="Department">Manage Departments</a>
			<a href="Patient">Manage Patients</a>
			<a href="Doctor">Manage Personnel</a>
			<a href="User">Manage Users</a>
		</div>
	</body>
</html>
