<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<h1>Add Room</h1>
	<form action="Room?action=viewRoom" method="POST">

		<p>Ward:</p>
		<select name="ward">
			<c:forEach var="ward" items="${listOfWards}">
				<option value=${ ward.id }>${ ward.name }</option>
			</c:forEach>
		</select>

		<p>Type:</p>
		<select name="type">
			<c:forEach var="type" items="${roomsList}">
				<option value=${ room.id }>${ room.Type }</option>
			</c:forEach>
		</select>
		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
</body>
</html>