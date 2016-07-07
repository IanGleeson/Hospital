<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
  <h1>Add Note for ${patient.forename} ${patient.surname}</h1>
  <form action="PatientServlet?action=addNote" method="post">
      <input type="hidden" name="patientId" value="${patientId}">
	  <h2>Note:</h2>
	  <p>
	       <textarea rows="5" cols="50" name="content"></textarea>
	   </p>
	  <input type="submit" value="Add Note">
  </form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>