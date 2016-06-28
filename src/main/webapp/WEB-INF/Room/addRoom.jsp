<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<h1>Add Room</h1>
	<a
		href="<c:url value="WEB-INF/view/addRoomForm.jsp">
								 <c:param name="roomId" value="${room.id}"/>
								 </c:url>">Add
		Room</a>
</body>
</html>