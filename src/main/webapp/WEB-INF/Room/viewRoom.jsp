<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Room</title>
</head>
<body>

<c:choose>
		<c:when test="${roomsList.isEmpty()}">
			<h2>There are no rooms in the database</h2>
		</c:when>
		<c:otherwise>
		<table>
				<tr><th>Room Id</th><th>Ward Id</th><th>Type</th></tr>
				<c:forEach var="room" items="${roomsList}">
					<tr>
						<td>${room.id}</td>
						<td>${room.wardId}</td>
						<td>${room.type}</td>
					</tr>
				</c:forEach>

		</table>				


		</c:otherwise>

</c:choose>

</body>
</html>