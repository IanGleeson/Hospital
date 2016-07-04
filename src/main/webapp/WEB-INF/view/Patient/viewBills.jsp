<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body onpageshow="calculateTotal();">

<c:choose>
<c:when test="${patient.patientType == 'PUBLIC' }">


<h1>Bills for ${patient.forename} ${patient.surname} (Public)</h1>

</c:when>
<c:when test="${patient.patientType == 'SEMI_PRIVATE' }">


<h1>Bills for ${patient.forename} ${patient.surname} (Semi-private)</h1>

</c:when>
<c:otherwise>


<h1>Bills for ${patient.forename} ${patient.surname} (Private)</h1>

</c:otherwise>


</c:choose>









<table border="1">
				<tr>
					<th>Bill Id</th>
					<th>Date</th>
					<th>Cost per night</th>	
					<th>Night Stayed</th>	
					<th>Doctor Fee</th>	
					<th>Miscellaneous Fee</th>	
					<th>Bill Total</th>
				</tr>	
				<c:forEach var="bill" items="${patientBills}" varStatus="count">
					<tr>
						<td>${bill.id}</td>					
						<td>${formattedBillDateList[count.index]}</td>
						<td>${bill.roomCharge}</td>	
						<td>${nightsStayed}</td>	
						<td>${bill.doctorFee}</td>
						<td>${bill.miscFee}</td>
						<c:set var="total" value="${bill.doctorFee + bill.miscFee + (bill.roomCharge * nightsStayed)}"/>
						<td>&euro;${total}</td>
				    </tr>	
				   </c:forEach>
		  </table> 	 


</body>
</html>