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
            <h6>Here you will be able to add prescription</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<div class="col-xs-12 btn btn-primary btn-sm">


  <h1>Add Prescription for ${patient.forename} ${patient.surname}</h1>
  <form action="PatientServlet?action=addPrescription" method="post">
       <input type="hidden" name="patientId" value="${patient.id}">
	  <h2>Prescription:</h2>
	  <p>
	       <textarea name ="content" rows="5" cols="50"></textarea>
	   </p>
	  <input type="submit" value="Add Prescription">
  </form>
  </div>
  </div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>