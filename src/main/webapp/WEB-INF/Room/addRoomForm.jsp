<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<h2>Add Room</h2>

	<form action="RoomServlet?action=viewRoom" method="POST">

		<p>Ward:</p>
		<p>
			<input type="text" name="ward" value="${room.ward}" size="49">
		</p>

		<p>Type:</p>
		<p>
			<input type="text" name="type" value="${room.type}" size="49">
		</p>

		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
</body>
</html>