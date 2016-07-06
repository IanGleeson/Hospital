<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Prescription(s) for ${patient.forename} ${patient.surname}</h1>
         
       <c:choose>
		<c:when test="${patientPrescriptions.isEmpty()}">
			<h2>There are no prescriptions for this patient</h2>
		</c:when>
		<c:otherwise>
         
          <table>
				<tr>
					<th>Date</th>
					<th>Prescription</th>
				</tr>	
				<c:forEach var="prescription" items="${patientPrescriptions}" varStatus="count">
					
					
					
					<tr>
						<td>${formattedPrescriptionDateList[count.index]}</td>
						<td>${prescription.content}</td>
				    </tr>	
				   </c:forEach>
		  </table> 	
    </c:otherwise>
    </c:choose>
</body>
</body>
</html>