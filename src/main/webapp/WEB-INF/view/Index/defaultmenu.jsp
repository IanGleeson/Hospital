<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<a class="navbar-brand" href="index.jsp"><img src="img/logo.jpg" height=36 width=200></a>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li><a href="Index?action=aboutUs"><span
						class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
				<li><a href="Index?action=contactUs"><span
						class="glyphicon glyphicon-envelope"></span>Contact Us</a></li>
				<c:choose>
					<c:when test="${ user != null }">
						<li><a href="User?action=logout">
							<span class="glyphicon glyphicon-user"></span>${ user.username }(Logout) </a></li>
					</c:when>
					<c:otherwise>
						<li><a href="User?action=showLoginForm"><span
								class="glyphicon glyphicon-user"></span> Login </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>