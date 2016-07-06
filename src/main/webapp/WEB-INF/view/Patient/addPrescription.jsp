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
  <h1>Add Prescription for ${patient.forename} ${patient.surname}</h1>
  <form action="PatientServlet?action=addPrescription" method="post">
       <input type="hidden" name="patientId" value="${patient.id}">
	  <h2>Prescription:</h2>
	  <p>
	       <textarea name ="content" rows="5" cols="50"></textarea>
	   </p>
	  <input type="submit" value="Add Prescription">
  </form>
</body>
</html>