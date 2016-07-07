<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<header>Update User</header>
<span class="back"><a href="User">Back</a></span>
<form action="User?action=updateUser" method="post">
	<input type="hidden" name=userId value=${ user.id }> <input
		type="text" name=username value=${ user.username }> <input
		type="text" name=password value=${ user.password }> <select
		name="usertype">
		<option value="doctor" ${user.userType == 'DOCTOR' ? 'selected' : ''}>Doctor</option>
		<option value="admin" ${user.userType == 'ADMIN' ? 'selected' : ''}>Admin</option>
		<option value="HR" ${user.userType == 'HR' ? 'selected' : ''}>HR</option>
	</select> <input type="submit" value="Update User">
</form>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>