<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Doctors by Department ID</title>
</head>
<body>
<h2>View Doctors by Department ID</h2>
<p>
<form action="DoctorServlet?action=getDoctorDetailsByDepartment" method = "POST">
<label>Department ID</label>
<p>
<input type = "text" name="deptId">
</p>
<p>
<input type = "submit" value="SUBMIT">
</p>



</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>