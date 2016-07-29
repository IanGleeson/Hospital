<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
		<header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" style="cursor:default">
            <h6>Here you will be able to view bills</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<div class="col-xs-12 btn btn-primary btn-sm">

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







<c:choose>
	<c:when test="${patientBills.isEmpty()}">
	
		<h2>There are no bills for this patient</h2>
	</c:when>
	<c:otherwise>

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
</c:otherwise>
</c:choose>
</div>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>