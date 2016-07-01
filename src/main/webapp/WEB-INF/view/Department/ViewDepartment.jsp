<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Department</title>
</head>
<body>
<h1>Add Department</h1>


<form action="Department?action=addDepartment" method="post">
  Department Name:  <input type="text" name="Departmentname" >
   <input type="submit" value="AddDepartment">
</form>
<h1>View Department</h1>
	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
			<h2>There are no books in the database</h2>
		</c:when>
		<c:otherwise>
			<table>
				<tr><th>Department Id</th><th>Name</th></tr>
				<c:forEach var="department" items="${listOfDepartment}">
					<tr>
						<td>${department.id}</td>
						<td>${department.name}</td>
					
						<td>
						<a href="<c:url value="DepartmentServlet?action=deleteDepartment">
								 <c:param name="deptId" value="${department.id}"/>
								 </c:url>">Delete</a>
						</td>
						<td>
						<a href="<c:url value="DepartmentServlet?action=showUpdateForm">
								 <c:param name="deptId" value="${department.id}"/>
								 </c:url>">Update</a>
						</td>

					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 
</body>
</html>