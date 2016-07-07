<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Viewing Users</title>
	</head>
	<body>
		<header>
			<span class="back"><a href="index.jsp">Back</a></span>
			<c:if test="${ loggedin == true}"><a href="<c:url value="User?action=logout"></c:url>">Log Out</a></c:if>
		</header>
		<c:choose>
			<c:when test="${listOfUsers.isEmpty()}">
				<h2>There are no users in the database</h2>
			</c:when>
			<c:otherwise>
				<table border="1">
					<tr>
						<th>Id</th>
						<th>Username</th>
						<th>Password</th>
						<th>Usertype</th>
					</tr>
					<c:forEach var="user" items="${listOfUsers}">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.password}</td>
							<td>${user.userType}</td>
							<td>
							<a href="<c:url value="User?action=deleteUser">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Delete</a>
							</td>
							<td>
							<a href="<c:url value="User?action=showUpdateUserForm">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Update</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
		<a href="<c:url value="User?action=showAddUserForm"></c:url>">Add User</a>
	</body>
</html>