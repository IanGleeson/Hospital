<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Notes for ${patient.forename} ${patient.surname}</h1>
         
         <c:choose>
		<c:when test="${patientNotes.isEmpty()}">
			<h2>There are no notes for this patient</h2>
		</c:when>
         <c:otherwise>
          <table>
				<tr>
					<th>Date</th>
					<th>Note</th>
				</tr>	
				<c:forEach var="note" items="${patientNotes}" varStatus="count">
					<tr>
						<td>${formattedNoteDateList[count.index]}</td>
						<td>${note.content}</td>
				    </tr>	
				   </c:forEach>
		  </table> 
		  </c:otherwise>
		  </c:choose>	
    
</body>
</html>