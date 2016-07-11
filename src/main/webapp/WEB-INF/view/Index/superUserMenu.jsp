<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<nav class="navbar navbar-inverse " role="navigation">
   <div class="container">
       <div class="navbar-header">
           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="index.jsp">Hospital Management Application</a>
       	</div>
       	<div id="navbar" class="nav navbar-nav navbar-collapse collapse pull-right">
       		<div class="btn btn-group">
       			<c:choose>
					<c:when test="${user.userType == SUPERUSER}">
						<a type="button" class="btn btn-primary" href="User">Manage Users</a>
						<a type="button" class="btn btn-primary" href="Patient">Manage Personnel</a>
						<a type="button" class="btn btn-primary" href="Department">Manage Departments</a>
					</c:when>
					<c:when test="${user.userType == ADMIN}">
						<a type="button" class="btn btn-primary" href="User">Manage Users</a>
					</c:when>
					<c:when test="${user.userType == HR}">
						<a type="button" class="btn btn-primary" href="Patient">Manage Personnel</a>
					</c:when>
					<c:when test="${user.userType == DOCTOR}">
						<a type="button" class="btn btn-primary" href="Department">Manage Departments</a>
					</c:when>
				</c:choose>
  			</div>
       </div>
	</div>
</nav>