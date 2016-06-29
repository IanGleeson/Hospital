<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/HospitalManagementSystem/css/style.css">
<title>Add Bed</title>
</head>
<body>
<header>
<center><h1>Add Bed</h1></center>
</header>

<div id="wrapper">

<ul>
  <li><a href="<c:url value="BedServlet?action=viewAll"/>">View Beds</a></li>
  <li><a href="<c:url value="BedServlet?action=showAddForm"/>">Add Bed</a></li>
  <li><a href="#news">Lay out</a></li>
  <li>
  	  <c:if test="${username != null}">
		<a href="<c:url value="#"/>">Logout</a>
	</c:if>
  </li>
</ul>




</div>
</body>
</html>