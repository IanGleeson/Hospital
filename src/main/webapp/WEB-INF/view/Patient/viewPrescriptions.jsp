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
            <h6>Here you will be able to view prescriptions</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<div class="col-xs-12 btn btn-primary btn-sm">

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
    </div>
    </div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>