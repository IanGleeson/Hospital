<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	<h1>Prescription(s) for ${patient.forename} ${patient.surname}</h1>
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
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>