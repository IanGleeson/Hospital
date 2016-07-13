<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Doctor Details By Last Name</title>
</head>
<body>
Hey, ya made it to the getDocsByLastName jsp yeah hooray!!! celebrate!
<form action="DoctorServlet?action=getDoctorDetailsByLastName" method = "POST">
<h2>Search for Doctor by Last Name</h2>
<label>Doctor's Last Name</label>
<input type="text" name="doctorLastName">
<input type="submit" value="Submit">
</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>