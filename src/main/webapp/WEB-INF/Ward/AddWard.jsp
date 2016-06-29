<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a New Ward</title>
</head>
<body>
<h1 align ="left">Add a new ward</h1>
<form action="Ward?action=addWard" method="post">
	<select name="selectOption">
	  <c:forEach var="department" items="${departmentList}">
		 <option value ="${department.id}"> ${department.name}</option>
	  </c:forEach>
	</select>
	<p>Ward Name</p>
	<p><input type = "text" name="wardName" placeholder="Ward Name" required></p>
	<input type="submit" value="Add Ward"/>
</form>
</body>
</html>
