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
            
            <h2>Here you will be able to view all users</h2>
            </div>

        </div>
        </header>

<span class="back"><a href="index.jsp">Back</a></span>
<br><br>
<a href="<c:url value="User?action=showAddUserForm"></c:url>">Add User</a>
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
				<th></th>
			</tr>
			<c:forEach var="user" items="${listOfUsers}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
					<td>${user.userType}</td>
					<td><a
						href="<c:url value="User?action=deleteUser">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Delete</a>
					</td>
					<td><a
						href="<c:url value="User?action=showUpdateUserForm">
									 <c:param name="userId" value="${user.id}"/>
									 </c:url>">Update</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
<br>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>
