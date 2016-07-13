<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Doctor</title>
</head>
<body>
<h2>Update a Doctor</h2>
<form action="DoctorServlet?action=updateDoctor" method="POST">
	<p>First Name</p>
	<input type="text" name="firstName" value="${doctor.firstName}"></p> 
	
	<p>Last Name</p>
	<input type="text" name="lastName" value="${doctor.lastName}"></p>
	
	<p>Gender</p> 
	<p><input type="text" name="gender" value="${doctor.gender}"S></p> 
	
	<p>Address</p> 
	<p><textarea rows="8" cols="50" name="address">${doctor.address}</textarea></p> 

	<p>Phone Number</p> 
	<p><input type="text" name="phoneNumber" value="${doctor.phoneNumber}"/></p>
	
	<p>Qualification</p> 
	<p><input type="text" name="qualification" value="${doctor.qualification}"/></p>
	
	<p>Department Id</p> 
	<p><input type="text" name="deptId" value="${doctor.deptId}"/></p>
	
	
	 
	<p><input type="submit" value="UPDATE DOCTOR"/></p> 
</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>