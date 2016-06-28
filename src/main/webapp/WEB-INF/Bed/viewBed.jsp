<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Bed</title>
</head>
<body>

<c:choose>
		<c:when test="${bedsList.isEmpty()}">
			<h2>There are no beds in the database</h2>
		</c:when>
		<c:otherwise>
		<table>
				<tr><th>Bed Id</th><th>Room Id</th></tr>
				<c:forEach var="bed" items="${bedsList}">
					<tr>
						<td>${bed.id}</td>
						<td>${bed.roomId}</td>
					</tr>
				</c:forEach>

		</table>				


		</c:otherwise>

</c:choose>

</body>
</html>