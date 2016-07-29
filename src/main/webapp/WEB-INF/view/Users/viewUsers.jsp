<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
	
	
		   <header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button" style="cursor:default">
            
            <h6>Here you will be able to view all users</h6>
            </div>

        </div>
        </header>

<span class="back"><a href="index.jsp">Back</a></span>

<div class="row row-content">

<div class="col-xs-12 btn btn-primary btn-sm">

<c:choose>
	<c:when test="${listOfUsers.isEmpty()}">
		<h2>There are no users in the database</h2>
	</c:when>
	<c:otherwise>
	
	
	<a class="btn-sm btn-primary pull-right" href="<c:url value="User?action=showAddUserForm"></c:url>">Add User</a>
		<table class="table">
		<thead>
			<tr>
				<th><span class="badge">ID</span></th>
				<th><span class="badge">Username</span></th>
				<th><span class="badge">Password</span></th>
				<th><span class="badge">Usertype</span></th>
				<th></th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="user" items="${listOfUsers}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
					<td>${user.userType}</td>
					<td><a class="btn-sm btn-primary"
						href="<c:url value="User?action=deleteUser">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Delete</a>
					</td>
					<td><a class="btn-sm btn-primary"
						href="<c:url value="User?action=showUpdateUserForm">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Update</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		
	</c:otherwise>
</c:choose>
</div>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>
