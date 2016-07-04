<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Log In</title>
	</head>
	<body>
		<header></header>
		<c:choose>
			<c:when test="${ loginFailThree == true}">
				<span>Please contact the administrator to log in.</span>
			</c:when>
			<c:otherwise>
				<form action="User?action=login" method="post">
					Username:<input type="text" name=username placeholder="Username">
					Password:<input type="text" name=password placeholder="Password">
					<input type="submit" value="Log In">
				</form>
				<span name="loginMsg" value=${ failedLogInMsg }></span>
				<c:if test="${ loggedIn == false}"><span name="loginMsg">${ failedLogInMsg }</span></c:if>
			</c:otherwise>
		</c:choose>
	</body>
</html>