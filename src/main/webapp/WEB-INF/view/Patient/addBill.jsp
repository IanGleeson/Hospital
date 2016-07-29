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
            <h6>Here you will be able to add bill</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<div class="col-xs-12 btn btn-primary btn-sm">
<body onpageshow="calculateTotal();">

<c:choose>
<c:when test="${patient.patientType == 'PUBLIC' }">


<h1>Bill for ${patient.forename} ${patient.surname} (Public)</h1>

</c:when>
<c:when test="${patient.patientType == 'SEMI_PRIVATE' }">


<h1>Bill for ${patient.forename} ${patient.surname} (Semi-private)</h1>

</c:when>
<c:otherwise>


<h1>Bill for ${patient.forename} ${patient.surname} (Private)</h1>

</c:otherwise>


</c:choose>




<form action="BillServlet?action=addBill" method="post">

<input type="hidden" name="patientId" value="${patientId}">


<p>
Room type: <select id="roomType" name=roomType onchange="calculateTotal();">
  <option value="300">Day room</option>
  <option value="500">Public</option>
  <option value="700">Semi-private</option>
  <option value="1000">Private</option>
</select>
</p>
<p>
   Number of nights stayed: ${nightsStayed}
   <input type="hidden" id="numNights" value ="${nightsStayed}"  readonly name="nightsStayed" size="5" onkeyup="calculateTotal();">
 </p>
 <p>
   Doctor fee: <input type="text" id="doctorFee" name="doctorFee" size="5" onkeyup="calculateTotal();">
   </p>
   <p>
   Miscellaneous fee: <input type="text" id="miscFee" name="miscFee" size="5" onkeyup="calculateTotal();">
   </p>
   <p>Additional information</p>
<p>
			<textarea name="billNotes" rows="5" cols="50" placeholder="Notes"></textarea>
</p>

<p id="totalCost" ></p>

<input type="submit" value = "Add Bill">

</form>
<script src="js/script.js"></script>
</body>
</div>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>