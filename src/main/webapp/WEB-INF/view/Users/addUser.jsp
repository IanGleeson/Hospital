<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<header>
	<span class="back"><a href="User">Back</a></span>
</header>
<br>Add User
<form action="User?action=addUser" method="post">
	<input type="text" name=username placeholder="Username" required>
	<input type="text" name=password placeholder="Password" required> 
	<select name="usertype">
		<option value="doctor">Doctor</option>
		<option value="admin">Admin</option>
		<option value="HR">HR</option>
		<option value="superuser">Super User</option>
	</select> <input type="submit" value="Add">
	<br><span>${ errMsg }</span>
</form>
<br>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>