
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Ward</title>
</head>
<body>
<h1 align ="center">Update ward</h1>

	
	<h2>Updating Ward -- ${ward.name}  in ${departmentName} -- Department</h2>
	
	<h2> Update Ward Details</h2>
		<form action="Ward?action=updateWard" method="POST">
		<input type="hidden" name="wardId" value="${ward.id}">

		<p>Ward Name:</p>
		<p>
			<input type="text" name="wardName" value="${ward.name}" size="49">
		</p>

		<p>Department:</p>
		<p>
 
 		
			<select name="selectOption">
	  			<c:forEach var="department" items="${departmentList}">
		 			<option value ="${department.id}" 
		 			<c:if test="${ward.deptId==department.id}">selected	</c:if> > ${department.name}</option>
	  			</c:forEach>
			</select>

		</p>
	

		<p>
			<input type="submit" value="Submit" />
		</p>

	</form>
	
	
</body>
</html>