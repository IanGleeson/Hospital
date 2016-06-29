<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<header></header>
		<c:choose>
			<c:when test="${listOfUsers.isEmpty()}">
				<h2>There are no users in the database</h2>
			</c:when>
			<c:otherwise>
				<table>
					<thead>Id</thead><thead>Username</thead><thead>Password</thead><thead>Name</thead><thead>Usertype</thead>
					<c:forEach var="book" items="${listOfUsers}">
						<tr>
							<td>${User.id}</td>
							<td>${User.username}</td>
							<td>${User.password}</td>
							<td>${User.name}</td>
							<td>&euro;${User.usertype}</td>
							<td>
							<a href="<c:url value="UserServlet?action=delete">
									 <c:param name="userId" value="${User.id}"/>
									 </c:url>">Delete</a>
							</td>
							<td>
							<a href="<c:url value="UserServlet?action=showUpdateForm">
									 <c:param name="userId" value="${User.id}"/>
									 </c:url>">Update</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
		<input type="button" name = "addUser" value = "Add User">
		<input type="button" name = "deleteUser" value = "Delete selected User">
		<input type="button" name = "updateUser" value = "Update selected User">
	</body>
</html>