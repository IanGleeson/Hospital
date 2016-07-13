<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Doctor by Id</title>
</head>
<body>
	<form action="DoctorServlet?action=getDoctorDetailsById" method="POST">
		<h2>Search for Doctor by Id</h2>
		<label>DoctorId</label> <input type="text" name="doctorId"> <input
			type="submit" value="Submit">
	</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>