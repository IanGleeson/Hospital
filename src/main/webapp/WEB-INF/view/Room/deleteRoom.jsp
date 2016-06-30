<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Room</title>
</head>
<body>
<form action="RoomServlet?action=deleteRoom" method="POST">
	<p>Room Type</p>
	<input type="text" name="id" value="${room.id}">
	<p><input type="submit" value="Delete Room"/></p> 
</form>
</body>

</body>
</html>